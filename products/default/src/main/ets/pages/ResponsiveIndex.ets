import { ResponsiveLayout } from '@ohos/responsiveLayout';

/**
 * ResponsiveIndex is the entry of the responsive layout pages.
 */
@Entry
@Component
struct ResponsiveIndex {
  build() {
    Column() {
      ResponsiveLayout()
    }
  }
}