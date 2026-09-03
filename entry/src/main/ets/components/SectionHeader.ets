@Component
export struct SectionHeader {
  @Prop title: ResourceStr;
  @Prop badge: ResourceStr = '';

  build() {
    Row() {
      Text(this.title)
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
        .fontColor($r('app.color.text_primary'))
      Blank()
      if (this.badge !== '') {
        Text(this.badge)
          .fontSize(12)
          .fontColor($r('app.color.text_secondary'))
          .padding({ left: 10, right: 10, top: 5, bottom: 5 })
          .backgroundColor($r('app.color.surface_secondary'))
          .borderRadius(10)
      }
    }
    .width('100%')
    .alignItems(VerticalAlign.Center)
  }
}
