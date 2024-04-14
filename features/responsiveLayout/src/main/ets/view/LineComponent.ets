@Component
export struct LineComponent {
	private AlignRus:Record<string,Record<string,string|VerticalAlign|HorizontalAlign>> = {
	'top': { 'anchor': 'row1', 'align': VerticalAlign.Top },
	'right': { 'anchor': 'row1', 'align': HorizontalAlign.Start }
}
	build() {
		Stack({ }) {
		Column()	{
			Column() {
				Column() {
					Text("我是线性盒子老大，身高100，谁也影响不了我的高度。我如果出现，后面的弟弟都得往下靠")
						.fontSize(20)
						.fontWeight(FontWeight.Bold)
				}
				.width('100%')
			}
			.height(100)
			.borderColor('red')
			.borderWidth(1)
			.alignItems(HorizontalAlign.Center)
			.justifyContent(FlexAlign.Center)
			Column() {
				Column() {
					Text("我是线性盒子老二，身高120，我排在大哥的后面，他的高度变化会影响到我，如果大哥不在，我会立即顶上去")
						.fontSize(20)
						.fontWeight(FontWeight.Bold)
				}
				.width('100%')
			}
			.height(120)
			.borderColor('red')
			.borderWidth(1)
			.alignItems(HorizontalAlign.Center)
			.justifyContent(FlexAlign.Center)
			Column() {
				Text("我是线性盒子老三，身高300，我排在大哥和二哥的后面，他们的高度变化会影响到我，如果大哥和二哥不在，我会立即顶上去")
					.fontSize(20)
					.fontWeight(FontWeight.Bold)
				Row() {
					Text("我是线性盒子老三的大儿子，我只会在父亲的地盘里面争夺位置的优先权，父亲变化也会带着我一起。")
						.fontSize(20)
						.width('50%')
						.borderColor('red')
						.borderWidth(1)
						.textAlign(TextAlign.Center)
					Text("我是线性盒子老三的小儿子，我的位置在哥哥的后面，父亲变化也会带着我一起。如果哥哥不在，我会立即跑到前面")
						.fontSize(20)
						.width('50%')
						.borderColor('red')
						.borderWidth(1)
						.textAlign(TextAlign.Center)
				}
				.width('100%')
			}
			.height(300)
			.borderColor('red')
			.borderWidth(1)
			.alignItems(HorizontalAlign.Center)
			.justifyContent(FlexAlign.Center)
			Flex() {
				Column() {
					Text("我是弹性盒子，是他们几个兄弟的朋友，他们小时候还没长高的时候，我的身高很高，他们长高之后，我的身高被压扁了")
						.fontSize(20)
						.fontWeight(FontWeight.Bold)
				}
				.width('100%')
			}
			.backgroundColor(Color.Gray)
			.flexGrow(1)
			}.height('100%')
			RelativeContainer() {
				Text('我是Stack盒子，我不受其他人约束，我想在哪就在哪，左边是我的小跟班')
					.fontSize(12)
					.id("row1")
				Text('我是小跟班，右边的哥哥去哪我去哪').alignRules(this.AlignRus).id("row2")
			}.backgroundColor('#ff58b87c').width(100).height(100).position({x: '70%', y: 600})
		}.height('100%')
	}
}
