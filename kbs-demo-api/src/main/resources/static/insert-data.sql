INSERT INTO symptoms (label_id, content)
VALUES
('TC01', 'Xe hao nhien lieu'),
('TC02', 'Xe đề khó nổ, không nổ'),
('TC03', 'Động cơ yếu'),
('TC04', 'Động cơ phản hồi chậm'),
('TC05', 'Động cơ rung nhiều ở chế độ nghỉ'),
('TC06', 'Xe báo đèn check engine'),
('TC07', 'Động cơ trục trặc'),
('TC08', 'Khí thải nhiều hơn bình thường'),
('TC09', 'Có âm thanh lạ ở động cơ'),
('TC10', 'Đình trệ khi tăng tốc, hiệu suất kém'),
('TC11', 'Có mùi nhiên liệu'),
('TC12', 'Nóng máy'),
('TC13', 'Chết máy giữa đường'),
('TC14', 'Xe bị giật khi lên gas'),
('TC15', 'Xe bị hụt gas'),
('TC16', 'Lỗi xe bị kéo lệch sang 1 bên'),
('TC17', 'Xe khó nổ vào buổi sáng'),
('TC18', 'Phanh rung giật'),
('TC19', 'Xe bị lệch khi đạp phanh'),
('TC20', 'Có tiếng kêu ở phanh'),
('TC21', 'Đèn báo lỗi phanh'),
('TC22', 'Xe bị ỳ'),
('TC23', 'Đèn cảnh báo ắc quy'),
('TC24', 'Đèn pha, đèn cốt không sáng, hoặc sáng yếu'),
('TC25', 'Có tiếng ở khoang máy'),
('TC26', 'Động cơ thay đổi nhiệt độ bất thường'),
('TC27', 'Tay lái trả chậm'),
('TC28', 'Tay lái nặng'),
('TC29', 'Chảy dầu ở thước lái'),
('TC30', 'Giảm sóc không hoạt động');

INSERT INTO working_environments
VALUES
('MT01','Xe thường xuyên chạy đường dài'),
('MT02','Xe chạy trong môi trường bụi bẩn, ô nhiễm'),
('MT03','Xe chạy trên những đoạn đường khó chạy, gập ghềnh'),
('MT04','Xe chở quá tải'),
('MT05','Không cái nào');

INSERT INTO working_years
VALUES
('SN01','Dưới 1 năm'),
('SN02','Từ 1 đến 3 năm'),
('SN03','Từ 3 đến 5 năm'),
('SN04','Từ 5 đến 7 năm'),
('SN05','Từ 7 đến 10 năm'),
('SN06','Trên 10 năm')

INSERT INTO kilometers
VALUES
('KM01',' dưới 10.000 km'),
('KM02',' Từ 10.000 đến 20.000 km'),
('KM03',' Từ 20.000 đến 40.000 km'),
('KM04',' Từ 40.000 đến 80.000 km'),
('KM05',' Từ 80.000 đến 120.000 km'),
('KM06',' Trên 120.000 km');

INSERT INTO last_maintenance_times
VALUES
('BD01','Dưới 3 tháng'),
('BD02','Từ 3 đến 6 tháng'),
('BD03','Từ 6 đến 12 tháng'),
('BD04','Từ 12 đến 18 tháng'),
('BD05','Từ 18 đến 24 tháng'),
('BD06','Trên 24 tháng');

INSERT INTO problems
VALUES
('SC01','Xe bị ngâm nước'),
('SC02','Xe bị để ngoài trời nắng lâu'),
('SC03','Xe bị để ngoài trời mưa lâu'),
('SC04','Xe bị va đập'),
('SC05','Xe lâu ngày không sử dụng'),
('SC06','Không cái nào');

insert into cases (symptoms_label_id, working_environment_label_id, working_year_label_id, kilometer_label_id, last_maintenance_time_label_id, problem_label_id, error_label_id)
values
('TC01,TC06,TC02','MT04','SN03','KM03','BD02','SC06','LO01'),
('TC01,TC03,TC04','MT02','SN04','KM04','BD03','SC06','LO01'),
('TC04,TC06,TC05','MT03','SN02','KM02','BD02','SC06','LO01'),
('TC01,TC03,TC05','MT01','SN05','KM05','BD04','SC02','LO01'),
('TC02,TC03,TC07','MT02','SN01','KM01','BD01','SC02','LO02'),
('TC01,TC08,TC11','MT02','SN04','KM04','BD03','SC06','LO02'),
('TC06,TC09,TC11','MT05','SN06','KM06','BD06','SC06','LO02'),
('TC06,TC02','MT02','SN02','KM02','BD04','SC06','LO02'),
('TC01,TC05,TC08','MT01','SN04','KM05','BD01','SC04','LO02'),
('TC015,TC11,TC10','MT02','SN05','KM06','BD02','SC06','LO03'),
('TC01,TC06,TC11','MT02','SN02','KM03','BD03','SC06','LO03'),
('TC03,TC06,TC11','MT02','SN01','KM01','BD03','SC02','LO03'),
('TC01,TC06,TC12','MT02','SN02','KM02','BD02','SC02','LO04'),
('TC01,TC12,TC26','MT01','SN03','KM05','BD03','SC03','LO04'),
('TC01,TC10','MT05','SN04','KM05','BD02','SC02','LO04'),
('TC01,TC03,TC15','MT02','SN06','KM06','BD01','SC06','LO05'),
('TC01,TC02,TC03','MT04','SN03','KM01','BD05','SC02','LO05'),
('TC06,TC10,TC13','MT01','SN01','KM01','BD03','SC01','LO06'),
('TC03,TC06,TC07','MT03','SN04','KM05','BD04','SC04','LO06'),
('TC01,TC03,TC02','MT04','SN03','KM04','BD04','SC02','LO07'),
('TC01,TC10','MT01','SN01','KM01','BD03','SC01','LO07'),
('TC10','MT04','SN03','KM05','BD04','SC04','LO07'),
('TC06','MT02','SN01','KM01','BD01','SC02','LO07'),
('TC13','MT02','SN04','KM04','BD02','SC06','LO08'),
('TC17','MT05','SN06','KM06','BD06','SC06','LO08'),
('TC18,TC19,TC20','MT02','SN02','KM02','BD04','SC06','LO09'),
('TC18,TC19,TC21','MT01','SN04','KM05','BD01','SC04','LO09'),
('TC08,TC10','MT02','SN01','KM01','BD03','SC02','LO10'),
('TC10,TC22','MT02','SN02','KM02','BD02','SC02','LO10'),
('TC17,TC23,TC24','MT03','SN02','KM02','BD02','SC01','LO11'),
('TC04,TC17,TC23','MT05','SN05','KM05','BD04','SC05','LO11'),
('TC02,TC23,TC24','MT02','SN01','KM01','BD01','SC02','LO12'),
('TC04,TC06','MT05','SN06','KM06','BD06','SC06','LO13'),
('TC01,TC13,TC02','MT02','SN02','KM02','BD04','SC06','LO13'),
('TC01,TC14','MT01','SN04','KM05','BD01','SC04','LO14'),
('TC09,TC015','MT02','SN05','KM06','BD02','SC06','LO14'),
('TC03,TC09,TC02','MT02','SN04','KM04','BD03','SC06','LO15'),
('TC09,TC13','MT01','SN05','KM05','BD04','SC02','LO16'),
('TC29','MT02','SN01','KM01','BD01','SC02','LO17'),
('TC05,TC07','MT02','SN03','KM04','BD03','SC06','LO17'),
('TC11','MT05','SN06','KM06','BD06','SC06','LO17'),
('TC06','MT02','SN02','KM02','BD04','SC06','LO17');

INSERT INTO errors VALUES('LO01','Lỗi Bugi','Khi bạn mở nắp capô, bạn sẽ thấy một bó 4-8 dây điện dẫn đến các điểm khác nhau trên động cơ. Các bugi được đặt ở trên động cơ tại cuối của các dây này, dưới nắp chụp bugi.
+ Trên động cơ L4, L6, bugi sẽ được đặt ở trên cùng hoặc bên hông động cơ theo một đường thẳng.
+ Trên động cơ V6 và V8, các bugi được đặt chia đều ở mỗi bên . tùy vào mỗi loại động cơ chúng ta có thể sử dụng cac bước thay như sau:
B1: chọn đúng loại bugi cho động cơ.
B2: Vệ sinh sạch sẽ xung quanh bugi.
B3: Bôi trơn bugi trước khi lắp.
B4: lắp bugi mới vào động cơ và siết chặt lại')
INSERT INTO errors VALUES('LO02','Lỗi kim phun nhiên liệu','Có 2 cách để vệ sinh kim phun.
Cách 1 là không cần tháo kim phun.  chỉ cần đổ trực tiếp dung dịch vào bình nhiên liệu (bình xăng/dầu). Dung dịch vệ sinh sẽ theo nhiên liệu đi vào kim phun.
Tuy nhiên mỗi sản phẩm sẽ có tỷ lệ hoà trộn khác nhau. Ví dụ 1 bình dung dịch vệ sinh của Liqui Moly 300ml, nhà sản xuất khuyến cáo dùng cho 50 – 70 lít xăng.
Cách 2 là tháo kim phun . cách này đòi hỏi bạn phải có kĩ thuật cao.Người tháo phải thật cẩn thận để tránh hư hại gioăng cao su bọc quanh.
Bên cạnh đấy . mỗi kim phun sau khi thay phải nhập mã kim phun nên nếu chọn cách tháo kim phun thì người dùng nên đưa ra gara để có thợ chuyên nghieeopj thực hiện cho chúng ta')
INSERT INTO errors VALUES('LO03','Lỗi van tuần hoàn khí xả','Van khí xả thường nằm giữa ống xả và ống nạp.Trên một số loại xe, van EGR có thể khó tiếp cận nếu ống xả nằm ở phía sau động cơ.
Sau đó, bạn sẽ cần phải tháo rời một số bộ phận của xe để tiếp cận chúng. Do đó chúng tôi khuyên bạn nên đến gara để thay van tuần hoàn khí thải.
Ngoài ra, để hoàn thành việc lắp ráp lại van EGR, bạn sẽ phải khởi động xe bằng một công cụ chẩn đoán phụ (một loại máy mà ít người sở hữu).
Tuy nhiên, nếu bạn vẫn muốn tự thay van tuần hoàn khí xả, thì đây là hướng dẫn từng bước cho phép bạn tự làm.
Bước 1 : Ngắt kết nối pin trên oto.
Bước 2 : Ngắt kết nối và tháo van khí xả.
Bước 3: lắp van tuần hoàn khí xả.
Bước 4; Xác nhận can thiệp.Ở giai đoạn này, có thể cần đến sự hỗ trợ của thợ chuyên nghiệp')
INSERT INTO errors VALUES('LO04','Lỗi van hằng nhiệt','Van hằng nhiệt được lắp trên đường nước giữa nắp xi lanh với bình làm mát. các bước thay thế van hằng nhiệt.
Bước 1: xả hết nước làm mát.
Bước 2: Sau khi xả hết nước làm mát, tìm vị trí rồi dùng cờ lê tháo các bulông trên vỏ van hằng nhiệt. Sau đó lấy van ra khỏi vị trí.
Bước 3: Lắp van hằng nhiệt mới. Dùng khăn sạch vệ sinh vỏ van và vị trí lắp van. Đưa van hằng nhiệt mới vào vỏ của nó, rồi đặt ron mới lên nắp đồng thời bôi keo lên phần ron này để tạo sự kín khít khi lắp vào thân máy.
Sau đó gá từng bulông vào vị trí rồi siết đều với lực vừa phải để tránh hư hỏng ren của mối lắp.
Bước 4: Châm nước làm mát mới')
INSERT INTO errors VALUES('LO05','Lỗi cảm biến lưu lượng khí','Để biết MAF có bị hỏng hay không, chúng ta sẽ kiểm tra cảm biến đo lưu lượng khí nạp.
Có nhiều cách kiểm tra cảm biến. Với những lỗi đơn giản như dây cảm biến bị đứt, bị lỏng. Hoặc cảm biến bị bẩn, nứt vỡ,... bạn có thể quan sát bằng mắt thường.
Còn những lỗi về kỹ thuật, bạn cần dùng đồng hồ vạn năng để kiểm tra cảm biến lưu lượng khí nạp.
Kiểm tra thông mạch
Bước 1: Xác định chân tín hiệu và chân mass của cảm biến.
Bước 2: Chuyển đồng hồ VOM về thang đo điện trở thấp nhất.
Bước 3: Đặt một que dò trên chân tín hiệu và que dò còn lại lên chân mass trên giắc cắm.
Bước 4: Quan sát kết quả. Nếu đồng hồ chỉ mức 0Ω hoặc gần 0Ω thì cảm biến hoạt động bình thường. Nếu điện trở vô cùng thì có thể cảm biến MAF đã bị hỏng.
Kiểm tra điện áp
Bạn bật công tắc xe sang chế độ ON nhưng không nổ máy. Dùng đồng hồ vạn năng kiểm tra điện áp của cảm biến.
Nếu kết quả đo điện áp ~1.0 V tức là cảm biến vẫn tốt. Nếu điện áp khác số này thì kiểm tra mạch cảm biến.
Sau đó, bạn nổ máy cho động cơ nóng đến nhiệt độ làm việc, tiếp tục đo lại điện áp của MAF. Kết quả bằng ~1.6 – 2.3 V là chuẩn.
Nếu điện áp khác số này thì cũng tiến hành kiểm tra mạch cảm biến.
Kiểm tra mạch cảm biến
Bạn rút giắc của ECM và giắc cảm biến MAF ra. Dùng đồng hồ vạn năng hoặc Ôm kế đo thông mạch giữa các chân của cảm biến.
MAF-1 (B+) và dây dương sau Relay chính: Nếu R ~ 0 là tốt, nếu R ~ ∞ tức là cảm biến bị đứt dây dương.
MAF-2 (mass bộ đo gió) và chân mass cảm biến MAF trong ECU: Nếu R ~ 0 là tốt, nếu R ~ ∞ nghĩa là cảm biến đang bị đứt dây mass.
MAF-3 (VG) và chân tín hiệu cảm biến MAF trong ECU: Nếu R ~ 0 là tốt, nếu R ~ ∞ nghĩa là cảm biến bị đứt dây tín hiệu')
INSERT INTO errors VALUES('LO06','Lỗi van không tải','Trường hợp van không tải bị dơ, ta có thể dễ dàng khắc phục bằng các vệ sinh đúng cách.
Sau khi vệ sinh, van sẽ hoạt động bình thường trở lại.
Bước 1: Đảm bảo động cơ đang tắt và hoàn toàn nguội.
Bước 2: Tìm vị trí van không tải trong khoang máy. Vị trí sẽ tùy thuộc vào loại xe, nhưng thường nó nằm trên bướm ga.
Bước 3: Mở ốc, rút dây cắm và lấy van ra khỏi xe.
bước 4: Dùng dung dịch vệ sinh chuyên dụng (cùng loại với vệ sinh bướm ga) để vệ sinh mặt trong của van.
Chùi sạch cách vết cặn bẩn bám trên van. Di chuyển vách ngăn để xăng có thể lọt vào bên trong van.
Lưu ý không dùng RP7, dầu thắng, hoặc các dung dịch có silicon. Nếu không có dung dịch chuyên dụng có thể dùng xăng.
Bước 5: Lau sạch, để khô.
Bước 6: Kiểm tra xem vách ngăn có di chuyển nhẹ nhàng không.
Bước 7: Lắp lại van vào xe, siết ốc và cắm dây.
bước 8: Khởi động lại động cơ và kiểm tra lại như bước trên.
Còn đối với việc thay thế chugns ta cần mang ra gara để thợ có chuyên môn xử lý cho chúng ta.')
INSERT INTO errors VALUES('LO07','Lỗi bộ lọc nhiên liệu','Các  bước thay bộ lọc nhiên liệu :
Bước 1. Dừng đỗ xe
Đầu tiên là các bác tài nên dừng đỗ xe ở những nơi bằng phẳng, tắt máy và chờ động cơ nguội hẳn để tránh bỏng khi làm việc.
Lưu ý: Không nên đỗ xe ô tô ở chỗ đường đất hay bãi cỏ vì khi xả nhớt sẽ bẩn và khó vệ sinh.
Bước 2. Xả áp lực
Các bác nới lỏng nắp bình nhiên liệu. Tiếp đó tháo cầu chì của bơm nhiên liệu và bơm tiếp vận.
Sau đó các bác khởi động xe cho đến khi động cơ tự ngắt vì hết nhiên liệu. Để chắc chắn, các bác nên khởi động lại xe lần nữa và để xe tự tắt.
Bước 3. Tháo ắc quy
Các bác tháo cọc bình ắc quy âm (-).
Bước 4. Tháo đường nhiên liệu ra khỏi bộ lọc nhiên liệu
Tìm vị trí của bộ lọc thường ở trong khoang động cơ, bên dưới xe gầm xe hoặc là nằm trong thùng chứa nguyên liệu.
Sau khi tìm bộ lọc được thì tháo đường nhiên liệu khỏi bộ lọc
Bước 5. Tháo chốt bu lông
Các bác tháo hết các chốt các chốt bu lông trên bộ lọc nhiên liệu. Để tránh trường hợp khi tháo bộ lọc cũ bị gẫy lẫy hoặc bị vướng.
Bước 6. Lắp bộ lọc mới
Sau khi tháo bộ lọc cũ, tiến hành lắp bộ lọc mới hướng dòng nhiên liệu về phía động cơ. Bắt lại các chốt bu lông như ban đầu.
Bước 7. Gắn lại đường ống dẫn nhiên liệu
Các bác gắn lại các đường ống dẫn nhiên liệu sau đó gắn lại cầu chì bơm nhiên liệu. Cuối cùng là nối lại cọc bình ắc quy.
Bước 8. Tiến hành kiểm tra
Sau khi đã lắp đầy đủ và chắc chắn thì các bác nổ máy. Kiểm tra lại hệ thống có bị rò rỉ hay không.
Lúc này động cơ xe chưa nổ giòn, điều này là bình thường. Bởi vì nhiên liệu chưa vào đến kim phun.
Bước 9. Kiểm tra đèn
Nếu còn sáng thì có thể các bác chưa gắn lại bơm nhiên liệu. Sau đó các bác chạy thử và kiểm tra.')
INSERT INTO errors VALUES('LO08','Lỗi bơm xăng','kim phun xăng trên oto khá bền. thường sẽ bị bẩn kim phun xăng. chúng ta cần tháo ra để kiểm tra. nếu cần thay thế thì chúng ta mang ra gara để thay thế.
Còn đây là cách hướng dẫn vệ sinh kim phun.
Cách 1: sục rửa trực tiếp. với cách này bạn cần phải tháo kim xăng để rửa.Bạn cần có dụng cụ chuyên dụng để mở . mà tháo kim phun xăng dễ làm lnogr ron cao su mà chi phí thay mới rất cao .
Nên với cách này thì bạn nên mang ra gara để có hiệu quả tốt hơn.
Cách 2: Súc rửa bằng dung dịch chuyên dụng. Dung dịch có nhiều loại khác nhau, có loại có thể đổ thẳng vào bình xăng, có loại sẽ đưa thẳng vào kim phun thông qua đường ống dẫn xăng.
vì vậy bạn nên chọn loại dung dịch phù hợp với động cơ.')
INSERT INTO errors VALUES('LO09','Lỗi phanh',' Vì phanh nằm ở bên trong bánh xe nên với lỗi này chúng ta cần ra gara để họ có dụng cụ chuyên nghiệp có thể vệ sinh hoặc thay thế cho chúng ta')
INSERT INTO errors VALUES('LO10','Lỗi xéc măng','Vì xéc măng là bộ phận gắn trên pittong nên để vệ sinh hay thay thế xéc măng thì ta cần phải tháo được pittong.
quá trình này đòi hỏi trình độ tay nghề cao. vì thế lời khuyên cho bạn với lỗi này là nên mang ra gara để được khắc phục')
INSERT INTO errors VALUES('LO11','Lỗi ắc quy','với lỗi ác quy này có thể kiểm tra với các lỗi sau đây:
TH1: Mức chất điện dịch thấp hơn mức “lower level”. cách giải quyết Châm thêm nước cất và điều chỉnh mức điện dịch trong bình ắc quy đều cho các ngăn,
sau đó kiểm tra lại bộ sạc và sạc lại nếu ắc quy bị yếu điện.
TH2: Tỷ trọng chất điện dịch thấp hơi tiêu chuẩn đều ở các ngăn (với biểu hiện là ắc quy đề không nổ).
Hướng giải quyết:  Châm thêm nước cất và điều chỉnh mức điện dịch (nếu cần), sau đó sạc lại cho ắc quy với cường độ và thời gian phù hợp
                   Đem đến gara để được kiểm tra bộ sạc và hệ thống điện
TH3: Tỷ trọng chất điện dịch quá thấp hơn tiêu chuẩn ở một hay một số ngăn (với biểu hiện ắc quy đề không nổ).
Hướng giải quyết : Điều chỉnh lại mức điện dịch và xạc lại, nếu điện áp và tỷ trọng vẫn thấp thì bình ắc quy này đã bị chạm bên trong và không thể sử dụng
TH4: Tỷ trọng chất điện dịch cao hơn tiêu chuẩn (đều ở các ngăn) hoặc do châm thêm dung dịch lạ không phải là nước cất.
Hướng giải quyết :Thay chất điện dịch khác (acid sunphuric ) có tỷ trọng theo tiêu chuẩn và canh chỉnh lại mức điện dịch
				Kiểm tra lại điện áp ắc quy và sạc lại nếu cần.
TH5: Vỏ bình ắc quy bị biến dạng, bị phù.
Hướng giải quyết : Ngừng nạp ắc quy (nếu đang nạp), chờ cho nhiệt độ chất điện dịch giảm xuống rồi nạp lại.
					Luôn giữ nhiệt độ chất điện dịch <45oC
TH6: Cực ắc quy bị ăn mòn.
Hướng giải quyết:+Tháo kẹp, lau chùi cực ắc quy và siết lại kẹp dây điện
                 + Điều chỉnh lại mức điện dịch bên trong bình ắc quy
                 + Kiểm tra nút có được siết chặt hay không
TH7: Cực ắc quy bị chảy thủng
Hưiowngs giải quyết:   + Tháo kẹp, lau chùi cực ắc quy rồi xiết lại kẹp dây điện cho chắc chắn nhưng không quá chặt .
                       + Cẩn thận khi thao tác với bình ắc quy, xem kỹ hướng dẫn của nhà sản xuất.')
INSERT INTO errors VALUES('LO12','Lỗi máy phát điện','Phát hiện xe xuất hiện những dấu hiệu bị hỏng,
cách duy nhất để khắc phục tình trạng này là cần kịp thời đưa xe đến các garage sửa chữa để các nhân viên kỹ thuật tiến hành kiểm tra,
bắt đúng bệnh và chữa đúng thuốc.')
INSERT INTO errors VALUES('LO13','Lỗi trục cam','Khi cảm biến trục cam bị hỏng, chủ xe cần thực hiện thay mới bộ phận này sớm để không gây ảnh hưởng tới quá trình hoạt động của động cơ.
Trên một số xe, quá trình thay thế cảm biến khá đơn giản, người dùng chỉ cần rút giắc nối trên cảm biến, tháo các bu lông và lấy cảm biến cũ ra rồi thay thế cảm biến vị trí trục cam mới vào.
Tuy nhiên, nhà sản xuất không khuyến cáo người dùng không nên tự sửa chữa hay thay thế cảm biến trục cam tại nhà vì dễ gây ảnh hưởng tới các bộ phận khác.
Khi nhận thấy dấu hiệu cảm biến trục cam bị hư hỏng nên đưa xe tới garage hoặc trung tâm bảo dưỡng, sửa chữa để được xử lý sớm nhất')
INSERT INTO errors VAlUES('LO14','Lỗi trục khuỷu','với lỗi liên quan đến động cơ chugns ta cần mang ra gara để có được hiệu quả tốt nhất')
INSERT INTO errors VALUES('LO15','Lỗi xupap','đẻ khấc phục lỗi này thì chúng ta cần phải có dụng cụ chuyên dụng như máy rà xupap, máy đo ,.. vì thế nên chúng ta khắc phục lỗi này cần mang ra gara')
INSERT INTO errors VALUES('LO16','Lỗi dây curoa','Đầu tiên, chủ xe cần xác định thông số và kích thước dây curoa phù hợp bằng cách nhìn thông tin ghi ngay trên bề mặt dây,
lưu lại thông số và tìm đến các cửa hàng cung cấp phụ tùng ô tô uy tín để mua.
Sau khi đã có dây curoa chuẩn, tiến hành mở khoang động cơ, tìm đến vị trí dây cần thay mới. Dùng cờ-lê để nới lỏng ốc đầu trục và tháo dây curoa cũ ra ngoài.
Đưa dây curoa vào đúng vị trí 2 đầu ăn khớp với hai đầu rãnh của puly, siết chặt ốc hai bên cho đến khi dây căng đều. Dùng tay xoay dây thử để kiểm tra hoạt động dẫn động của dây. ')
INSERT INTO errors VAlUES('LO17','lỗi hộp số',' với lỗi này chúng ta không thể tự sử lý tại nhà mà cần đến gara để được máy móc và các thợ chuyên nghiệp khấc phục cho chúng ta')
INSERT INTO errors VALUES('LO18','Lỗi lốp',
'TH1: áp suasat lốp. với lỗi này chúng ta cần bơm hơi để cân bằng áp suất lốp.
TH2: Lốp oto bị phồng . với tình huống này nếu di chuyển trên đường thìlên lái xe ở tốc độ vừa phải,
tránh va chạm với những dị vật khác ở trên đường để đến cửa hàng sửa chữa ô tô gần nhất.
các bước thay thế lốp oto:
Bước 1 : Dùng thủy kích để kích cho bánh xe khỏi chạm mặt đất.
Bước 2 : sử dụng dụng cụ đẻ tháo rời đai ốc. khi tháo nên tháo ngược chiều kim đồng hồ.
Bước 3: tháo lốp xe.
Bước 4: lắp lốp xe thay mới vào trục.
Bước 5: Vặn chặt ốc bánh xe.
Bước 6: hạ thấp xe xuống và tháo kích nâng.')
INSERT INTO errors VALUES('LO19','Lỗi về hệ thống lái','
TH1: tay lái nặng.  kiểm tra mức dầu trợ lực lái của xe bẳng mắt thường, xem mức dầu trợ lực nằm trong khoảng min – max (full – low) là được.
Nếu thiếu dầu trợ lực bạn hãy đến gara gân nhất để châm thêm dầu đảm bảo cho hệ thống lái hoạt động tốt. Trường hợp mức dầu trợ lực lái của xe vẫn đảm bảo, bạn hãy đem xe đến trung tâm sửa chữa để kiểm tra và sửa chữa. (có thể bạn sẽ phải thay cánh bơm trợ lực, thay ống dẫn dầu hoặc gia công lại bề mặt bơm).
TH2: tay lái trả chậm. chúng ta nên lái xe đến gara để kiểm tra và bảo dưỡng. xe của bạn sẽ cần bôi mỡ bôi trơn vào các khớp bị khô, gia công hoặc thay thế các khớp bị hỏng.
Trường hợp séc măng bao kín của thước lái bị hở cần thay bộ séc măng mới.
TH3: Vành tay lái bị rơ. Trong trường hợp này các bác tài nên mang xe đến trung tâm sửa chữa để được bôi thêm mỡ bôi trơn vào các khớp lái và điều chỉnh lại bạc lái cho phù hợp.
TH4: Tiếng kêu bất thường ở hệ thống lái.Khi bạn phát hiện tiếng kêu bất thường của hệ thống lái xe mình, hãy tự kiểm tra mức dầu trợ lực và châm thêm nếu cần thiết, đến trung tâm sửa chữa, bảo dưỡng để được kiểm tra và sửa chữa.
Xe bạn có thể cần điều chỉnh lại bạc lái, tăng dây đai dẫn động hoặc thay thế nếu dây đai bị chai mòn.
TH5: Chảy dầu ở thước lái.Bạn cần đến garage để kiểm tra và sửa chữa. điều chỉnh lại rô tuyn lái cho phù hợp, thay thế van điều chỉnh áp suất dầu, gia công thanh răng và gia công thước lái của xe bạn…')
INSERT INTO errors VALUES('LO20','Lỗi về hệ thống treo','nếu bạn cảm nhận được xe của mình có thể bị lỗi hệ thống treo thì cần mang ra gara để được khắc phục')