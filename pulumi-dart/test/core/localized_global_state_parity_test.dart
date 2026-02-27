import 'package:pulumi/src/store/async_store.dart';
import 'package:pulumi/src/store/store.dart';
import 'package:test/test.dart';

void main() {
  group('localized global state parity', () {
    late AsyncLocalStorage<Store> originalStorage;
    late Store globalStore;

    setUp(() {
      originalStorage = asyncLocalStorage;
      asyncLocalStorage = AsyncLocalStorage<Store>();
      globalStore = getGlobalStore();
    });

    tearDown(() {
      asyncLocalStorage = originalStorage;
    });

    test(
      'local store state does not leak after nested async contexts',
      () async {
        final outer = LocalStore();
        final inner = LocalStore();

        await asyncLocalStorage.run(outer, () async {
          expect(getStore(), same(outer));

          await asyncLocalStorage.run(inner, () async {
            expect(getStore(), same(inner));
            await Future<void>.delayed(Duration.zero);
            expect(getStore(), same(inner));
          });

          await Future<void>.delayed(Duration.zero);
          expect(getStore(), same(outer));
        });

        expect(getStore(), same(globalStore));
      },
    );
  });
}
