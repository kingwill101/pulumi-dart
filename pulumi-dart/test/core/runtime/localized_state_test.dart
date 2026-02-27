import 'package:pulumi/src/deployment/stack.dart';
import 'package:pulumi/src/store/async_store.dart';
import 'package:pulumi/src/store/store.dart';
import 'package:test/test.dart';
import '../../mocks/mocks.mocks.dart';

void main() {
  group('localized runtime state', () {
    late AsyncLocalStorage<Store> originalStorage;
    late Stack? originalGlobalStack;

    setUp(() {
      originalStorage = asyncLocalStorage;
      originalGlobalStack = getGlobalStore().stackResource;
      asyncLocalStorage = AsyncLocalStorage<Store>();
      setStackResource(null);
    });

    tearDown(() {
      asyncLocalStorage = originalStorage;
      setStackResource(originalGlobalStack);
    });

    test('getStore returns global store outside local context', () {
      final global = getGlobalStore();
      expect(getStore(), same(global));
    });

    test('getStore returns local store inside async context', () async {
      final local = LocalStore();
      final global = getGlobalStore();

      await asyncLocalStorage.run(local, () async {
        expect(getStore(), same(local));
        expect(getStore(), isNot(same(global)));
      });

      expect(getStore(), same(global));
    });

    test(
      'nested async contexts restore outer store after inner exits',
      () async {
        final outer = LocalStore();
        final inner = LocalStore();

        await asyncLocalStorage.run(outer, () async {
          expect(getStore(), same(outer));

          await asyncLocalStorage.run(inner, () async {
            expect(getStore(), same(inner));
          });

          expect(getStore(), same(outer));
        });
      },
    );

    test(
      'nested async contexts restore outer store across await boundaries',
      () async {
        final outer = LocalStore();
        final inner = LocalStore();
        final global = getGlobalStore();

        await asyncLocalStorage.run(outer, () async {
          await Future<void>.delayed(Duration.zero);
          expect(getStore(), same(outer));

          await asyncLocalStorage.run(inner, () async {
            await Future<void>.delayed(Duration.zero);
            expect(getStore(), same(inner));
          });

          await Future<void>.delayed(Duration.zero);
          expect(getStore(), same(outer));
        });

        expect(getStore(), same(global));
      },
    );

    test('setStackResource updates both local and global stores', () async {
      final local = LocalStore();
      final stack = MockStack();

      await asyncLocalStorage.run(local, () async {
        setStackResource(stack);

        expect(getStore().stackResource, same(stack));
        expect(getGlobalStore().stackResource, same(stack));
      });
    });

    test(
      'inner setStackResource does not mutate outer local stackResource',
      () async {
        final outer = LocalStore();
        final inner = LocalStore();
        final outerStack = MockStack();
        final innerStack = MockStack();

        await asyncLocalStorage.run(outer, () async {
          setStackResource(outerStack);
          expect(getStore().stackResource, same(outerStack));
          expect(getGlobalStore().stackResource, same(outerStack));

          await asyncLocalStorage.run(inner, () async {
            setStackResource(innerStack);
            expect(getStore().stackResource, same(innerStack));
            expect(getGlobalStore().stackResource, same(innerStack));
          });

          expect(getStore(), same(outer));
          expect(getStore().stackResource, same(outerStack));
          expect(getGlobalStore().stackResource, same(innerStack));
        });
      },
    );
  });
}
