import { AppLayout } from '../common/AppLayout';
import { FocusSummary } from '../models/FocusModels';

@Component
export struct TodayFocusCard {
  @Prop summary: FocusSummary;

  build() {
    Row({ space: 12 }) {
      Column({ space: 6 }) {
        Text(this.summary.totalMinutes.toString())
          .fontSize(26)
          .fontWeight(FontWeight.Bold)
          .fontColor($r('app.color.brand_primary'))
        Text($r('app.string.focus_minutes'))
          .fontSize(13)
          .fontColor($r('app.color.text_secondary'))
      }
      .alignItems(HorizontalAlign.Start)
      .layoutWeight(1)
      .padding(16)
      .backgroundColor($r('app.color.surface_secondary'))
      .borderRadius(AppLayout.ITEM_RADIUS)

      Column({ space: 6 }) {
        Text(this.summary.sessionCount.toString())
          .fontSize(26)
          .fontWeight(FontWeight.Bold)
          .fontColor($r('app.color.brand_primary'))
        Text($r('app.string.focus_sessions'))
          .fontSize(13)
          .fontColor($r('app.color.text_secondary'))
      }
      .alignItems(HorizontalAlign.Start)
      .layoutWeight(1)
      .padding(16)
      .backgroundColor($r('app.color.surface_secondary'))
      .borderRadius(AppLayout.ITEM_RADIUS)
    }
    .width('100%')
    .padding(AppLayout.CARD_PADDING)
    .backgroundColor($r('app.color.surface_primary'))
    .borderRadius(AppLayout.CARD_RADIUS)
  }
}
