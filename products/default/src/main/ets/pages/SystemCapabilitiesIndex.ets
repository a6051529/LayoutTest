import { router } from '@kit.ArkUI';
import { BreakpointSystem, BreakPointType } from '@ohos/common';
import { CommonConstants } from '../constants/CommonConstants';

/**
 * SystemCapabilitiesIndex page tests whether the system has the capability of
 * SystemCapability.Location.Location.Core.
 */
@Entry
@Component
struct SystemCapabilitiesIndex {
  @StorageLink('mainBreakpoint') currentBreakpoint: string = CommonConstants.BREAKPOINTS_INITIALIZE_NAME;
  private breakpointSystem: BreakpointSystem = new BreakpointSystem(CommonConstants.BREAKPOINT_SYSTEM_NAME);
  private locationCapability: Boolean = false;

  aboutToAppear() {
    this.locationCapability = canIUse(CommonConstants.LOCATION_CAPABILITY);
    this.breakpointSystem.register();
  }

  aboutToDisappear() {
    this.breakpointSystem.unregister();
  }

  build() {
    Column() {
      Row() {
        Image($r('app.media.ic_public_back'))
          .width($r('app.float.arrow_width'))
          .height($r('app.float.arrow_height'))
          .onClick(() => {
            router.back();
          })
      }
      .width(CommonConstants.SYSTEM_ROW_WIDTH)
      .height($r('app.float.arrow_item_height'))
      .position({ x: $r('app.float.system_capabilities_arrow_positionX') })

      Row() {
        Column() {
          Image(this.locationCapability ? $r('app.media.ic_location_yes') : $r('app.media.ic_location_no'))
            .width(new BreakPointType({
              sm: $r('app.float.system_capabilities_img_sm_width'),
              md: $r('app.float.system_capabilities_img_md_width'),
              lg: $r('app.float.system_capabilities_img_lg_width'),
              xl: $r('app.float.system_capabilities_img_xl_width')
            })
            .getValue(this.currentBreakpoint))
            .height(new BreakPointType({
              sm: $r('app.float.system_capabilities_img_sm_height'),
              md: $r('app.float.system_capabilities_img_md_height'),
              lg: $r('app.float.system_capabilities_img_lg_height'),
              xl: $r('app.float.system_capabilities_img_xl_height')
            })
            .getValue(this.currentBreakpoint))
            .margin({ bottom: $r('app.float.system_capabilities_margin_bottom') })
          Text(this.locationCapability ? $r('app.string.location_cap_valid') : $r('app.string.location_cap_invalid'))
            .fontSize($r('app.float.system_capabilities_text_font_size'))
            .fontWeight(CommonConstants.TEXT_FONT_WEIGHT)
            .fontColor(this.locationCapability ?
            $r('app.color.location_capability_can_use') : $r('app.color.location_capability_no_use'))
            .margin({
              left: $r('app.float.system_capabilities_text_margin'),
              right: $r('app.float.system_capabilities_text_margin')
            })
        }
        .width(CommonConstants.SYSTEM_COLUMN_WIDTH)
      }
    }
    .backgroundColor($r('app.color.system_capabilities_background'))
    .height(CommonConstants.SYSTEM_COLUMN_HEIGHT)
    .width(CommonConstants.SYSTEM_COLUMN_WIDTH)
    .justifyContent(FlexAlign.Center)
  }
}