from django.forms import ModelForm
from django import forms
from django.utils.safestring import mark_safe

from .models import *


SYMPTOMS_CHOICE = (
    ('TC01', 'Xe hao nhiên liệu'),
    ('TC02', 'Xe đề khó nổ, không nổ'),
    ('TC03', 'Động cơ yếu'),
    ('TC04', 'Động cơ phản hồi chậm'),
    ('TC05', 'Động cơ rung nhiều ở chế độ nghỉ'),
    ('TC07', 'Xe báo đèn check engine'),
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
    ('TC30', 'Giảm sóc không hoạt động'),
)

WORKING_ENVIRONMENT_CHOICE = (
    ('MT01', 'Xe thường xuyên chạy đường dài'),
    ('MT02', 'Xe chạy trong môi trường bụi bẩn, ô nhiễm'),
    ('MT03', 'Xe chạy trên những đoạn đường khó chạy, gập ghềnh'),
    ('MT04', 'Xe chở quá tải'),
    ('MT05', 'Không cái nào'),
)

WORKING_YEAR_CHOICE = (
    ('SN01', 'Dưới 1 năm'),
    ('SN02', 'Từ 1 đến 3 năm'),
    ('SN03', 'Từ 3 đến 5 năm'),
    ('SN04', 'Từ 5 đến 7 năm'),
    ('SN05', 'Từ 1 đến 3 năm'),
    ('SN06', 'Trên 10 năm'),
)

KILOMETER_CHOICE = (
    ('KM01', 'Dưới 10.000 km'),
    ('KM02', 'Từ 10.000 đến 20.000 km'),
    ('KM03', 'Từ 20.000 đến 40.000 km'),
    ('KM04', 'Từ 40.000 đến 80.000 km'),
    ('KM05', 'Từ 10.000 đến 20.000 km'),
    ('KM06', 'Trên 120.000 km'),
)

LAST_MAINTENANCE_CHOICE = (
    ('BD01', 'Dưới 3 tháng'),
    ('BD02', 'Từ 3 đến 6 tháng'),
    ('BD03', 'Từ 6 đến 12 tháng'),
    ('BD04', 'Từ 12 đến 18 tháng'),
    ('BD05', 'Từ 18 đến 24 tháng'),
    ('BD06', 'Trên 24 tháng'),
)

PROBLEM_CHOICE = (
    ('SC01', 'Xe bị ngâm nước'),
    ('SC02', 'Xe bị để ngoài trời nắng thường xuyên'),
    ('SC03', 'Xe bị để ngoài trời mưa thường xuyên'),
    ('SC04', 'Xe bị va đập'),
    ('SC05', 'Xe lâu ngày không sử dụng'),
    ('SC06', 'Không cái nào'),
)

ERROR_CHOICE = (
    ('LO01', 'Lỗi Bugi'),
    ('LO02', 'Lỗi kim phun nhiên liệu')
)
class TuVanForm(ModelForm):
    customerTel = forms.CharField(label=mark_safe('<h3>Nhập số điện thoại</h3>'), max_length=20,required=False)
    # multiple choice for symptoms
    symptoms = forms.MultipleChoiceField(label=mark_safe('<h3>Các triệu chứng đang gặp phải là gì ?</h3>'),choices=SYMPTOMS_CHOICE, widget=forms.CheckboxSelectMultiple,required=False)
    # one choice for working environment
    workingEnvironment = forms.ChoiceField(label=mark_safe('<h3>Xe hoạt động trong môi trường nào ?</h3>'),choices=WORKING_ENVIRONMENT_CHOICE, widget=forms.RadioSelect,required=False)
    # one choice for working year
    workingYear = forms.ChoiceField(label=mark_safe('<h3>Xe đã sử dụng được bao nhiêu năm ?</h3>'),choices=WORKING_YEAR_CHOICE, widget=forms.RadioSelect,required=False)
    # one choice for kilometer
    kilometer = forms.ChoiceField(label=mark_safe('<h3>Xe đã chạy được bao nhiêu km ?</h3>'),choices=KILOMETER_CHOICE, widget=forms.RadioSelect,required=False)
    # one choice for last maintenance
    lastMaintenance = forms.ChoiceField(label=mark_safe('<h3>Lần bảo dưỡng gần nhất từ bao giờ ?</h3>'),choices=LAST_MAINTENANCE_CHOICE, widget=forms.RadioSelect,required=False)
    # one choice for problem
    problem = forms.ChoiceField(label=mark_safe('<h3>Xe đã từng bị sự cố gì ?</h3>'),choices=PROBLEM_CHOICE, widget=forms.RadioSelect,required=False)

    class Meta:
        model = TuVan
        fields = ['customerTel', 'symptoms', 'workingEnvironment', 'workingYear', 'kilometer', 'lastMaintenance', 'problem']


class GetUnknownCaseForm(ModelForm):
    customerTel = forms.CharField(label='Số điện thoại', max_length=20, required=False)
    # one choice for error
    error = forms.ChoiceField(label=mark_safe('<br />Lỗi'), choices=ERROR_CHOICE, widget=forms.RadioSelect, required=False)
    error_text = forms.CharField(label=mark_safe('Lỗi khác      '), max_length=100, required=False)
    solution = forms.CharField(label=mark_safe('<br />Giải pháp'), widget=forms.Textarea, required=False)
    class Meta:
        model = UnknownCase
        fields = ['customerTel', 'error', 'error_text', 'solution']