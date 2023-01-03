from django.forms import ModelForm
from django import forms
from django.utils.safestring import mark_safe


from .models import *

SYMPTOMS_CHOICE = (
    ('TC01', 'Xe hao nhiên liệu'),
    ('TC02', 'Xe đề khó nổ, không nổ'),
    ('TC03', 'Động cơ yếu')
)

WORKING_ENVIRONMENT_CHOICE = (
    ('MT01', 'Xe thường xuyên chạy đường dài'),
    ('MT02', 'Xe chạy trong môi trường bụi bẩn, ô nhiễm')
)

WORKING_YEAR_CHOICE = (
    ('SN01', 'Dưới 1 năm'),
    ('SN02', 'Từ 1 đến 3 năm')
)

KILOMETER_CHOICE = (
    ('KM01', 'Dưới 10.000 km'),
    ('KM02', 'Từ 10.000 đến 20.000 km')
)

LAST_MAINTENANCE_CHOICE = (
    ('BD01', 'Dưới 3 tháng'),
    ('BD02', 'Từ 3 đến 6 tháng')
)

PROBLEM_CHOICE = (
    ('SC01', 'Xe bị ngâm nước'),
    ('SC02', 'Xe bị để ngoài trời nắng thường xuyên')
)

ERROR_CHOICE = (
    ('LO01', 'Lỗi Bugi'),
    ('LO02', 'Lỗi kim phun nhiên liệu')
)
class TuVanForm(ModelForm):
    customerTel = forms.CharField(label='Số điện thoại', max_length=20)
    # multiple choice for symptoms
    symptoms = forms.MultipleChoiceField(choices=SYMPTOMS_CHOICE, widget=forms.CheckboxSelectMultiple)
    # one choice for working environment
    workingEnvironment = forms.ChoiceField(choices=WORKING_ENVIRONMENT_CHOICE, widget=forms.RadioSelect)
    # one choice for working year
    workingYear = forms.ChoiceField(choices=WORKING_YEAR_CHOICE, widget=forms.RadioSelect)
    # one choice for kilometer
    kilometer = forms.ChoiceField(choices=KILOMETER_CHOICE, widget=forms.RadioSelect)
    # one choice for last maintenance
    lastMaintenance = forms.ChoiceField(choices=LAST_MAINTENANCE_CHOICE, widget=forms.RadioSelect)
    # one choice for problem
    problem = forms.ChoiceField(choices=PROBLEM_CHOICE, widget=forms.RadioSelect)

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