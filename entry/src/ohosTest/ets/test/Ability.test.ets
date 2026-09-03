import { hilog } from '@kit.PerformanceAnalysisKit';
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';

export default function abilityTest() {
  describe('ActsAbilityTest', () => {
    // 定义测试套件，参数分别为套件名称和套件函数。
    beforeAll(() => {
      // 在测试套件的所有用例开始前执行一次预置操作。
      // 此 API 仅接收一个参数：预置操作函数。
    })
    beforeEach(() => {
      // 在每个单元测试用例开始前执行预置操作。
      // 执行次数与通过 it 定义的测试用例数量一致。
      // 此 API 仅接收一个参数：预置操作函数。
    })
    afterEach(() => {
      // 在每个单元测试用例结束后执行清理操作。
      // 执行次数与通过 it 定义的测试用例数量一致。
      // 此 API 仅接收一个参数：清理函数。
    })
    afterAll(() => {
      // 在测试套件的所有用例结束后执行一次清理操作。
      // 此 API 仅接收一个参数：清理函数。
    })
    it('assertContain', 0, () => {
      // 定义测试用例，参数分别为用例名称、过滤参数和用例函数。
      hilog.info(0x0000, 'testTag', '%{public}s', 'it begin');
      let a = 'abc';
      let b = 'b';
      // 使用断言方法声明预期结果。
      expect(a).assertContain(b);
      expect(a).assertEqual(a);
    })
  })
}
