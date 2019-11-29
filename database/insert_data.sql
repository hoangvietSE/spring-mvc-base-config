use springmvcbasicfree;

insert into role(code,name) values('ADMIN','Quản trị');
insert into role(code,name) values('USER','Người dùng');

insert into user(username,password,fullname,status)
values('admin','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','Hoàng Tiến Việt',1);
insert into user(username,password,fullname,status)
values('nguyenvana','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','Nguyễn Văn A',1);
insert into user(username,password,fullname,status)
values('nguyenvanb','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','Nguyễn Văn B',1);

INSERT INTO user_role(userid,roleid) VALUES (1,1);
INSERT INTO user_role(userid,roleid) VALUES (2,2);
INSERT INTO user_role(userid,roleid) VALUES (3,2);

INSERT INTO `spring_mvc_basic`.`category` (`code`, `name`) VALUES ('the-thao', 'Thể thao');
INSERT INTO `spring_mvc_basic`.`category` (`code`, `name`) VALUES ('the-gioi', 'Thế giới');
INSERT INTO `spring_mvc_basic`.`category` (`code`, `name`) VALUES ('chinh-tri', 'Chính trị');
INSERT INTO `spring_mvc_basic`.`category` (`code`, `name`) VALUES ('thoi-su', 'Thời sự');
INSERT INTO `spring_mvc_basic`.`category` (`code`, `name`) VALUES ('goc-nhin', 'Góc nhìn');

INSERT INTO `spring_mvc_basic`.`news` (`content`, `short_description`, `thumbnail`, `title`, `category_id`) VALUES ('Trân trọng kính mời', 'Trường ĐHBK Hà Nội kỉ niệm 60 năm', '456.png', 'Trường ĐHBK Hà Nội kỉ niệm 60 năm', '1');
INSERT INTO `spring_mvc_basic`.`news` (`content`, `title`, `category_id`) VALUES ('Công an Hà Nội hạn chế ôtô, xe máy trên nhiều tuyến phố trước và sau các trận thi đấu của tuyển Việt Nam vào ngày 14 và 19/11', 'Hà Nội cấm hơn 20 tuyến đường trước trận Việt Nam - UEA', '4');
INSERT INTO `spring_mvc_basic`.`news` (`content`, `short_description`, `thumbnail`, `title`, `category_id`) VALUES ('Một ngày trước trận đấu của tuyển Việt Nam, vé vào sân Mỹ Đình được bán ở chợ đen tăng gấp 2 đến 3 lần giá gốc', 'Vé chợ đen trận Việt Nam - UAE tăng gấp 3 lần Vé chợ đen trận Việt Nam - UAE tăng gấp 3 lần', '05.jpeg', 'Vé chợ đen trận Việt Nam - UAE tăng gấp 3 lần Vé chợ đen trận Việt Nam - UAE tăng gấp 3 lần', '4');
INSERT INTO `spring_mvc_basic`.`news` (`content`, `short_description`, `thumbnail`, `title`, `category_id`) VALUES ('Các tuyến cao tốc đã khánh thành với tổng mức đầu tư hơn 128.000 tỷ đồng, tăng kết nối Hà Nội và hơn 10 tỉnh phía Bắc.', '9 cao tốc phía Bắc kết nối với thủ đô', '01.png', '9 cao tốc phía Bắc kết nối với thủ đô', '4');
INSERT INTO `spring_mvc_basic`.`news` (`content`, `title`, `category_id`) VALUES ('Đức và Hà Lan đồng ý nhận các công dân là tù nhân IS, theo Bộ trưởng Nội vụ Thổ Nhĩ Kỳ Suleyman Soylu.', 'Đức, Hà Lan tiếp nhận chiến binh IS', '2');
INSERT INTO `spring_mvc_basic`.`news` (`content`, `title`, `category_id`) VALUES ('Ngoại trưởng Nga Sergei Lavrov nói đùa tại một diễn đàn ở Paris ngày 12/11, rằng Moskva sẽ can thiệp vào cuộc bầu cử tổng thống Mỹ năm 2020.', 'Ngoại trưởng Nga đùa sẽ can thiệp bầu cử Mỹ', '2');
INSERT INTO `spring_mvc_basic`.`news` (`content`, `short_description`, `thumbnail`, `title`, `category_id`) VALUES ('Người phát ngôn Bộ Ngoại giao ra thông cáo bác bỏ hoàn toàn việc Trung Quốc tuyên bố Việt Nam chiếm đóng Trường Sa.', 'Việt Nam - Trung Quốc', '02.jpeg', 'Việt Nam bác tuyên bố của Trung Quốc về Trường Sa', '2');
INSERT INTO `spring_mvc_basic`.`news` (`content`, `short_description`, `thumbnail`, `title`, `category_id`) VALUES ('Có một cộng đồng giáo viên \"Tây ba lô\" tại Việt Nam - những người trẻ đến từ phương Tây không phải là giáo viên chuyên môn, được thuê dạy tiếng Anh.', 'Giáo viên \'Tây ba lô\'', '03.png', 'Giáo viên \'Tây ba lô\'', '5');
INSERT INTO `spring_mvc_basic`.`news` (`content`, `short_description`, `thumbnail`, `title`, `category_id`) VALUES ('Trong một ngày lên đồng của Christian Pulisic và Tammy Abraham thì Chelsea đã có chiến thắng trước đội đương kim vô đích Ngoại hạng Anh.', 'Chelsea đại thằng Mancity trong ngày Pep bị đuổi lên khán đài', '09.png', 'Chelsea đại thằng Mancity trong ngày Pep bị đuổi lên khán đài', '2');

