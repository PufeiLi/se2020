# se2020
homework for software engineering

三角函数软件工程项目
=
编写软件：python、matlab
--
### 界面
* （1）点击界面的options按钮下拉隐藏的工具，包含Python Language、M Language和Exit选项，可对后台执行三角函数计算采用的编辑语言进行选择或执行系统退出操作。
* （2）界面有两个输入框，分别为弧度和角度，对应于三角函数输入变量的角度制和弧度制两种形式，可对其中一个输入框输入，则另一个输入框变为输出框，计算对应输入变量的弧度角度转换的值。<br>
* （3）点击界面sin，cos，tan，cot按钮，可分别计算输入变量的正弦值，余弦值，正切值和余切值。
* （4）点击界面的清除按钮，可清除在界面窗口执行的操作；点击退出按钮，可直接退出整个界面。
![](https://github.com/PufeiLi/se2020/raw/master/界面.png)

### 代码
* （1）code文件中，New_cos.m、New_cot.m、New_sin.m和New_tan.m使用matlab语言实现cos、cot、sin和tan函数。
* （2）code文件中，function.py主要实现了三角函数运算界面显示（可以切换python语言或matlab语言），还包括用python语言实现cos、cot、sin和tan函数，调用matlab语言实现的三角函数。
* （3）code文件中，run.py主要实现了三角函数运算界面显示（python语言），还包括用python语言实现cos、cot、sin和tan函数，但是不能调用matlab语言实现的三角函数。

### 后台
* 界面尺寸、标题```
             window = tk.Tk()
             window.title("trigonometric function")
             window.geometry("300x200")
             ```
* 输入变量 ```
             e.get()   
             ```
三角函数值输出```
         t.insert("end", result)
         ```<br>

* 界面按钮，例如```
         tk.Button(window,
                  text="sin",
                  # width=15,height=2,
                  width=15, height=1,
                  command=compute_sin, )
                  ```
* 三角函数计算<br>
sin计算```
        g = 0
        t = x
        n = 1
        while (fabs(t) >= 1e-10):
        g += t
        n += 1
        t = -t * x * x / (2 * n - 1) / (2 * n - 2)
        return g
        ```
  cos计算```
         x = 1.57079 - x
         return sin(x)
         ```
   ；tan计算```
          return sin(x)/cos(x)
          ```
    ；cot计算```
           return cos(x)/sin(x)
           ```

         
