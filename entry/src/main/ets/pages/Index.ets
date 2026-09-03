import { HdsTabs, hdsMaterial, HdsNavigation } from '@kit.UIDesignKit';
import { AppLayout } from '../common/AppLayout';
import { MainTab } from '../common/AppNavigation';
import { FocusPage } from '../features/focus/FocusPage';
import { HomePage } from '../features/home/HomePage';
import { StatisticsPage } from '../features/statistics/StatisticsPage';
import { TasksPage } from '../features/tasks/TasksPage';

@Entry
@Component
struct Index {
  @State selectedTab: number = MainTab.Home;
  private readonly pathStack: NavPathStack = new NavPathStack();

  build() {
    Stack() {
      Column()
        .width('100%')
        .height('100%')
        .backgroundColor($r('app.color.app_background'))
        .expandSafeArea([SafeAreaType.SYSTEM], [SafeAreaEdge.TOP, SafeAreaEdge.BOTTOM])

      HdsNavigation(this.pathStack) {
        HdsTabs({ barPosition: BarPosition.End, index: this.selectedTab }) {
          TabContent() {
            HomePage({
              onStartFocus: (): void => {
                this.selectedTab = MainTab.Focus;
              }
            })
          }
          .tabBar(SubTabBarStyle.of($r('app.string.tab_home')).indicator({ height: 0 }))

          TabContent() {
            FocusPage()
          }
          .tabBar(SubTabBarStyle.of($r('app.string.tab_focus')).indicator({ height: 0 }))

          TabContent() {
            TasksPage()
          }
          .tabBar(SubTabBarStyle.of($r('app.string.tab_tasks')).indicator({ height: 0 }))

          TabContent() {
            StatisticsPage()
          }
          .tabBar(SubTabBarStyle.of($r('app.string.tab_statistics')).indicator({ height: 0 }))
        }
        .width('100%')
        .height('100%')
        .expandSafeArea([SafeAreaType.SYSTEM], [SafeAreaEdge.BOTTOM])
        .barHeight(AppLayout.BOTTOM_BAR_HEIGHT)
        .barOverlap(true)
        .barFloatingStyle({
          barSideMargin: AppLayout.BOTTOM_BAR_SIDE_MARGIN,
          barBottomMargin: AppLayout.BOTTOM_BAR_BOTTOM_MARGIN,
          lightColor: $r('app.color.brand_primary'),
          systemMaterialEffect: {
            materialType: hdsMaterial.MaterialType.ADAPTIVE,
            materialLevel: hdsMaterial.MaterialLevel.ADAPTIVE
          }
        })
        .onChange((index: number) => {
          this.selectedTab = index;
        })
      }
      .width('100%')
      .height('100%')
      .hideTitleBar(true)
      .mode(NavigationMode.Stack)
    }
    .width('100%')
    .height('100%')
  }
}
