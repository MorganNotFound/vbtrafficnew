#产品信息
产品名称：数码交通灯v1.0
开发公司：港田路360号西马神奇动物园
程序员：MorganFish
邮箱：1037502595@qq.com
     MorganFish0508@163.com
CSDN：https://blog.csdn.com/MorganFish
GitHub：https://www.github.com/MorganNotFound
------------------------------------------------------------------------------------------
---------------------------------以上信息与正文内容无关-----------------------------------
------------------------------------------------------------------------------------------
#代码
首先，感谢您使用本产品！
本产品由保加利亚妖王独家出品~
话不多说，直接上代码：
Dim r As Integer
Dim g As Integer
Dim y As Integer
Private Sub Form_Load()
Form1.BackColor = vbBlack
Label1.BackColor = vbBlack
g = 10
y = 3
r = 10
Timer1.Enabled = True
Timer2.Enabled = False
Timer3.Enabled = False
light.FillColor = vbGreen   'light指shape1，大家还是改一下名，谢谢
light.Visible = False
Label1.Visible = False
End Sub
Private Sub Timer1_Timer()
light.Visible = True
Label1.Visible = True
Label1.Caption = g
Label1.ForeColor = vbGreen
light.FillColor = vbGreen
g = g - 1
If g = 0 Then
Timer1.Enabled = False
Timer2.Enabled = True
Timer3.Enabled = False
y = 3
End If
End Sub
Private Sub Timer2_timer()
light.Visible = True
Label1.Caption = y
Label1.ForeColor = vbYellow
light.FillColor = vbYellow
y = y - 1
If y = 0 Then
Timer1.Enabled = False
诶诶诶，别急别急！
既然你已经下载了我的文件，我一定要把你教会嘛不是吗
首先，打开VisualBasic6.0，创建一个标准exe
然后把窗口调到适当大小，插入一个shape，一个label与三个timer控件（尽量把shape和label调的差不多大，挨着放在一起
###这里有几个要更改的属性，注意一下:###
shape1的名称改成light
###剩余的内容你也可以在form_load()里面设置（有些我已设置）###
Light.BackStyle = 1
Light.shape = 3
Label1.Alignment = 2
Label1.BackStyle = 1
Label1.BackColor = vbBlack
Timer1.Interval = 1000
Timer2.Interval = 1000
Timer3.Interval = 1000
form1.BackColor = vbBlack
好啦，现在你可以把代码复制进去看看啦
（不过呢，其实你可以直接拿我做的程序交差嘻嘻嘻）
#工作原理：
（一）初始化窗体为工程增加效果
（二）设定timer倒计时的毫秒数，既两次计数之间的间隔时间为1000毫秒
（三）以Timer.time为线索触发事件，改变灯光色彩与激活倒计时
（四）使用if…then…End if做简单的判断
也就是说，当Timer1激活时，相对应的Label1与light（shape1）的ForeColor与FillColor属性调成vbGreen(0，255，0)，并判断g = g - 1最终的值是否等于0，若等于则将定义的下一个Integer"y"的值调为设定的初始值3，并将Timer1关闭（Timer1.Enabled = False），同时激活Timer2（Timer2.Enabled = True）
同理得Timer2，3激活时，调整控件属性，设定初始值，并同时打开下一Timer，使其进入循环
其实这个程序很简单，类似于上一项程序作业，真正难的还在后面，希望你能理解，谢谢（^~^）！
----------------------------------------------------------
本文来自https:www.github.com/MorganNotFound/vbtrafficnew