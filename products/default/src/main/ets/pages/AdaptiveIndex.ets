import { router } from '@kit.ArkUI';
import { AdaptiveLayout } from '@ohos/adaptiveLayout';
import { CommonConstants } from '../constants/CommonConstants';

/**
 * AdaptiveIndex is the entry of the adaptive layout pages.
 */
@Entry
@Component
struct AdaptiveIndex {
  build() {
    Column() {
      Column() {
        Image($r('app.media.ic_public_back'))
          .width($r('app.float.arrow_width'))
          .height($r('app.float.arrow_height'))
          .margin({ left: $r('app.float.arrow_margin_left') })
          .onClick(() => {
            router.back();
          })
      }
      .width(CommonConstants.ADAPTIVE_COLUMN_WIDTH)
      .height($r('app.float.arrow_item_height'))
      .justifyContent(FlexAlign.Center)
      .alignItems(HorizontalAlign.Start)

      Column() {
        AdaptiveLayout()
      }
      .width(CommonConstants.ADAPTIVE_FLEXIBLE_COLUMN_WIDTH)
      .justifyContent(FlexAlign.Center)
      .flexShrink(CommonConstants.ADAPTIVE_FLEX_SHRINK)
    }
    .height(CommonConstants.ADAPTIVE_COLUMN_HEIGHT)
    .backgroundColor($r('app.color.adaptive_index_background'))
  }
}