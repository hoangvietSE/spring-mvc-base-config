package com.soict.hoangviet.controller.web;

import com.soict.hoangviet.model.UploadForm;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.StringJoiner;

@Controller
public class UploadController {
    // save uploaded file to this folder
    private static String UPLOADED_FOLDER = "D://temp//";

    @GetMapping("/file")
    public String index(Model model){
        model.addAttribute("uploadForm",new UploadForm());
        return "web/upload";
    }

    @PostMapping("/upload")
    public String multiFileUpload(@Valid @ModelAttribute UploadForm form, BindingResult bindingResult, Model model,
                                  RedirectAttributes redirectAttributes) {
        StringJoiner sj = new StringJoiner(" , ");
        for (MultipartFile file : form.getFiles()) {
            if (file.isEmpty()) {
                continue; //next pls
            }
            try {
                byte[] bytes = file.getBytes();
                Path path = Paths.get(UPLOADED_FOLDER + file.getOriginalFilename());
                Files.write(path, bytes);
                sj.add(file.getOriginalFilename());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        String uploadedFileName = sj.toString();
        if (StringUtils.isEmpty(uploadedFileName)) {
            redirectAttributes.addFlashAttribute("message", "Please select a file to upload");
        } else {
            redirectAttributes.addFlashAttribute("message", "You successfully uploaded '" + uploadedFileName + "'");
            redirectAttributes.addFlashAttribute("imageUpload",uploadedFileName);
        }
        return "redirect:/uploadStatus";
    }

    @GetMapping("/uploadStatus")
    public String uploadStatus() {
        return "web/upload-status";
    }
}
