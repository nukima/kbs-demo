-- trieu chung cua xe
CREATE TABLE symptoms (
    label_id CHAR(4) NOT NULL COMMENT 'định danh nhãn của triệu chứng: TC01, TC02, TC03, ...',
    content VARCHAR(255) NOT NULL COMMENT 'nội dung triệu chứng',
    PRIMARY KEY (label_id)
);

-- moi truong lam viec cua xe
CREATE TABLE working_environments (
    label_id CHAR(4) NOT NULL COMMENT 'định danh nhãn của môi trường làm việc: MT01, MT02, MT03, ...',
    content VARCHAR(255) NOT NULL COMMENT 'nội dung môi trường làm việc',
    PRIMARY KEY (label_id)
);

-- so nam lam viec cua xe
CREATE TABLE working_years (
    label_id CHAR(4) NOT NULL COMMENT 'định danh nhãn của số năm làm việc: SN01, SN02, SN03, ...',
    content VARCHAR(255) NOT NULL COMMENT 'nội dung số năm làm việc',
    PRIMARY KEY (label_id)
);

-- so km da di cua xe
CREATE TABLE kilometers (
    label_id CHAR(4) NOT NULL COMMENT 'định danh nhãn của số km đã đi: KM01, KM02, KM03, ...',
    content VARCHAR(255) NOT NULL COMMENT 'nội dung số km đã đi',
    PRIMARY KEY (label_id)
);

-- thoi gian tu lan bao duong gan nhat
CREATE TABLE last_maintenance_times (
    label_id CHAR(4) NOT NULL COMMENT 'định danh nhãn của thời gian từ lần bảo dưỡng gần nhất: BD01, BD02, BD03, ...',
    content VARCHAR(255) NOT NULL COMMENT 'nội dung thời gian từ lần bảo dưỡng gần nhất',
    PRIMARY KEY (label_id)
);

-- su co tung gap phai
CREATE TABLE problems (
    label_id CHAR(4) NOT NULL COMMENT 'định danh nhãn của sự cố: SC01, SC02, SC03, ...',
    content VARCHAR(255) NOT NULL COMMENT 'nội dung sự cố',
    PRIMARY KEY (label_id)
);

-- cac loai loi
CREATE TABLE errors (
    label_id CHAR(4) NOT NULL COMMENT 'định danh nhãn của lỗi: LO01, LO02, LO03, ...',
    content VARCHAR(255) NOT NULL COMMENT 'nội dung lỗi',
    solution TEXT COMMENT 'giải pháp cho lỗi',
    PRIMARY KEY (label_id)
);

-- cac case duoc ghi nhan
CREATE TABLE cases (
    id INT NOT NULL AUTO_INCREMENT COMMENT 'định danh bản ghi trong bảng',
    symptoms_label_id VARCHAR(255) NOT NULL COMMENT 'định danh nhãn của các triệu chứng',
    working_environment_label_id CHAR(4) NOT NULL COMMENT 'định danh nhãn của môi trường làm việc',
    working_year_label_id CHAR(4) NOT NULL COMMENT 'định danh nhãn của số năm làm việc',
    kilometer_label_id CHAR(4) NOT NULL COMMENT 'định danh nhãn của số km đã đi',
    last_maintenance_time_label_id CHAR(4) NOT NULL COMMENT 'định danh nhãn của thời gian từ lần bảo dưỡng gần nhất',
    problem_label_id CHAR(4) NOT NULL COMMENT 'định danh nhãn của sự cố',
    error_label_id CHAR(4) NOT NULL COMMENT 'định danh nhãn của lỗi',
    PRIMARY KEY (id)
);

-- bang luu he so tuong quan giua cac trieu chung
CREATE TABLE similarity_weights(
    id INT NOT NULL AUTO_INCREMENT COMMENT 'định danh bản ghi trong bảng',
    label_id_1 CHAR(4) NOT NULL COMMENT 'định danh nhãn của triệu chứng 1',
    label_id_2 CHAR(4) NOT NULL COMMENT 'định danh nhãn của triệu chứng 2',
    weight FLOAT NOT NULL COMMENT 'hệ số tương quan giữa 2 triệu chứng',
    PRIMARY KEY (id)
)

-- bang luu cac case co do tuong dong < 0.7 , can khach hang feedback lai de them vao co so tri thuc
CREATE TABLE unknown_cases(
    customer_tel VARCHAR(20) NOT NULL COMMENT 'số điện thoại của người dùng',
    symptoms_label_id VARCHAR(255) NOT NULL COMMENT 'định danh nhãn của các triệu chứng',
    working_environment_label_id CHAR(4) NOT NULL COMMENT 'định danh nhãn của môi trường làm việc',
    working_year_label_id CHAR(4) NOT NULL COMMENT 'định danh nhãn của số năm làm việc',
    kilometer_label_id CHAR(4) NOT NULL COMMENT 'định danh nhãn của số km đã đi',
    last_maintenance_time_label_id CHAR(4) NOT NULL COMMENT 'định danh nhãn của thời gian từ lần bảo dưỡng gần nhất',
    problem_label_id CHAR(4) NOT NULL COMMENT 'định danh nhãn của sự cố',
    PRIMARY KEY (customer_tel)
)