import { AppLayout } from '../../common/AppLayout';
import { formatHomeDate } from '../../common/DateFormatter';
import { DeviceStatusCard } from '../../components/DeviceStatusCard';
import { FocusStatusCard } from '../../components/FocusStatusCard';
import { HomeHeader } from '../../components/HomeHeader';
import { SectionHeader } from '../../components/SectionHeader';
import { TaskRow } from '../../components/TaskRow';
import { TodayFocusCard } from '../../components/TodayFocusCard';
import { MockHomeDataProvider } from '../../mock/MockHomeDataProvider';
import { HomeSnapshot } from '../../models/HomeSnapshot';
import { TaskItem } from '../../models/TaskItem';

@Component
export struct HomePage {
  onStartFocus: () => void = () => {};
  private readonly snapshot: HomeSnapshot = new MockHomeDataProvider().getHomeSnapshot();
  private readonly dateLabel: string = formatHomeDate(new Date());

  build() {
    Scroll() {
      Row() {
        Column({ space: AppLayout.SECTION_GAP }) {
          HomeHeader({ dateLabel: this.dateLabel })

          SectionHeader({ title: $r('app.string.focus_now') })
          FocusStatusCard({
            session: this.snapshot.session,
            onStartFocus: this.onStartFocus
          })

          SectionHeader({
            title: $r('app.string.today_tasks'),
            badge: $r('app.string.mock_data_label')
          })
          Column() {
            ForEach(this.snapshot.tasks, (task: TaskItem) => {
              TaskRow({ task: task })
              Divider()
                .strokeWidth(1)
                .color($r('app.color.divider'))
                .margin({ left: 50, right: AppLayout.CARD_PADDING })
            }, (task: TaskItem) => task.id)
          }
          .width('100%')
          .backgroundColor($r('app.color.surface_primary'))
          .borderRadius(AppLayout.CARD_RADIUS)
          .clip(true)

          SectionHeader({ title: $r('app.string.today_focus') })
          TodayFocusCard({ summary: this.snapshot.focusSummary })

          SectionHeader({ title: $r('app.string.device_status') })
          DeviceStatusCard({ device: this.snapshot.device })
        }
        .width('100%')
        .constraintSize({ maxWidth: AppLayout.MAX_CONTENT_WIDTH })
        .padding({
          left: AppLayout.PAGE_HORIZONTAL,
          right: AppLayout.PAGE_HORIZONTAL,
          top: AppLayout.PAGE_TOP,
          bottom: AppLayout.BOTTOM_BAR_CONTENT_INSET
        })
      }
      .width('100%')
      .justifyContent(FlexAlign.Center)
    }
    .width('100%')
    .height('100%')
    .scrollBar(BarState.Off)
    .backgroundColor($r('app.color.app_background'))
  }
}
