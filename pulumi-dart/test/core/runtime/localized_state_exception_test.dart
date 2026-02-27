import 'package:pulumi/src/store/store.dart';
import 'package:test/test.dart';

void main() {
  group('localized runtime state exception', () {
    test('inner context exceptions restore outer and global stores', () async {
      final global = getGlobalStore();
      final outer = LocalStore()..settings.options.stack = 'outer';
      final inner = LocalStore()..settings.options.stack = 'inner';

      await asyncLocalStorage.run(outer, () async {
        expect(getStore(), same(outer));

        await expectLater(
          asyncLocalStorage.run(inner, () async {
            expect(getStore(), same(inner));
            throw StateError('inner-failure');
          }),
          throwsStateError,
        );

        expect(getStore(), same(outer));
      });

      expect(getStore(), same(global));
    });

    test('outer context exceptions restore global store', () async {
      final global = getGlobalStore();
      final outer = LocalStore()..settings.options.stack = 'outer';

      await expectLater(
        asyncLocalStorage.run(outer, () async {
          expect(getStore(), same(outer));
          throw ArgumentError('outer-failure');
        }),
        throwsArgumentError,
      );

      expect(getStore(), same(global));
    });
  });
}
