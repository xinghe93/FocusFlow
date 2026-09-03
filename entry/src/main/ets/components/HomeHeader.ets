@Component
export struct HomeHeader {
  @Prop dateLabel: string;

  build() {
    Column({ space: 6 }) {
      Text($r('app.string.app_name'))
        .fontSize(32)
        .fontWeight(FontWeight.Bold)
        .fontColor($r('app.color.text_primary'))
      Text(this.dateLabel)
        .fontSize(14)
        .fontColor($r('app.color.text_secondary'))
      Text($r('app.string.home_greeting'))
        .fontSize(16)
        .fontColor($r('app.color.text_secondary'))
    }
    .width('100%')
    .alignItems(HorizontalAlign.Start)
  }
}
