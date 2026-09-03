import { AppLayout } from '../common/AppLayout';
import { FocusSession, FocusSessionState } from '../models/FocusModels';

@Component
export struct FocusStatusCard {
  @Prop session: FocusSession;
  onStartFocus: () => void = () => {};

  private getTimerLabel(): string {
    const hours = Math.floor(this.session.elapsedMinutes / 60);
    const minutes = this.session.elapsedMinutes % 60;
    return `${hours.toString().padStart(2, '0')}:${minutes.toString().padStart(2, '0')}`;
  }

  build() {
    Column({ space: 18 }) {
      Row({ space: 10 }) {
        Row()
          .width(9)
          .height(9)
          .borderRadius(5)
          .backgroundColor($r('app.color.status_dot'))
        Text(this.session.state === FocusSessionState.Idle ? $r('app.string.focus_idle') : this.session.taskTitle)
          .fontSize(18)
          .fontWeight(FontWeight.Medium)
          .fontColor($r('app.color.text_primary'))
      }
      .width('100%')

      Text(this.session.state === FocusSessionState.Idle ?
        $r('app.string.focus_idle_description') : this.session.taskTitle)
        .fontSize(14)
        .fontColor($r('app.color.text_secondary'))
        .width('100%')

      Row() {
        Column({ space: 4 }) {
          Text($r('app.string.focus_elapsed'))
            .fontSize(12)
            .fontColor($r('app.color.text_secondary'))
          Text(this.getTimerLabel())
            .fontSize(28)
            .fontWeight(FontWeight.Bold)
            .fontColor($r('app.color.text_primary'))
        }
        .alignItems(HorizontalAlign.Start)
        Blank()
        Button($r('app.string.start_focus'), { type: ButtonType.Capsule })
          .fontSize(16)
          .fontWeight(FontWeight.Medium)
          .fontColor($r('app.color.on_brand'))
          .backgroundColor($r('app.color.brand_primary'))
          .height(48)
          .padding({ left: 22, right: 22 })
          .onClick(() => this.onStartFocus())
      }
      .width('100%')
      .alignItems(VerticalAlign.Center)
    }
    .width('100%')
    .padding(AppLayout.CARD_PADDING)
    .backgroundColor($r('app.color.surface_primary'))
    .borderRadius(AppLayout.CARD_RADIUS)
  }
}
