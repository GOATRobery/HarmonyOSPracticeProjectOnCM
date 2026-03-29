@Entry //程序入口
@ComponentV2 //其以下内容为组件
struct Index { //组件的名字为Index
  @Local num: number = 0

  build() { //构建组件的逻辑块
    //build 中要有唯一的容器根组件
    Column() {
       Row() {
         Text("-")
           .fontColor(Color.Gray)
           .fontSize(16)
           .width(40)
           .height(50)
           .textAlign(TextAlign.Center)
           .border({
             width:1,
             color:Color.Gray,
             radius:4
           })
           .onClick(()=>{
             if (this.num <= 0) {
               return;
             }
              this.num -= 1;
           })
         Text(this.num.toString())
           .fontColor(Color.Gray)
           .fontSize(16)
           .fontWeight(700)
           .textAlign(TextAlign.Center)
           .width(40)
           .height(50)
           .border({
             width:1,
             color:Color.Gray,
             radius:4
           })
         Text("+")
           .fontColor(Color.Gray)
           .fontSize(16)
           .textAlign(TextAlign.Center)
           .width(40)
           .height(50)
           .border({
             width:1,
             color:Color.Gray,
             radius:4
           })
           .onClick(()=>{
             this.num += 1;
           })
       }
       .width("100%")
    }
    .width("100%")
    .height("100%")
    //设置上下安全区域
   .expandSafeArea([SafeAreaType.SYSTEM],[SafeAreaEdge.TOP,SafeAreaEdge.BOTTOM])
    .padding({
      left:10,
      right:10
    })
  }
}
