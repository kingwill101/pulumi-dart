import 'package:pulumi/src/store/store.dart';
import 'package:test/test.dart';

void main() {
  group('localized settings parity', () {
    test(
      'async local settings can be set and retrieved across awaits',
      () async {
        final globalStore = getGlobalStore();
        final originalGlobalProject = globalStore.settings.options.project;
        final originalGlobalStack = globalStore.settings.options.stack;

        final localStore = LocalStore();
        localStore.settings.options.project = 'project';
        localStore.settings.options.stack = 'stack';

        Future<String?> setAndReadBackStack(String stackName) async {
          getStore().settings.options.stack = stackName;
          await Future<void>.delayed(Duration.zero);
          expect(getStore().settings.options.stack, equals(stackName));
          return getStore().settings.options.stack;
        }

        final values = await asyncLocalStorage.run(localStore, () async {
          final foo = await setAndReadBackStack('foo');
          final bar = await setAndReadBackStack('bar');
          expect(getStore().settings.options.project, equals('project'));
          return (foo, bar);
        });

        expect(values.$1, equals('foo'));
        expect(values.$2, equals('bar'));

        // Local mutations should not leak to global store after context exit.
        expect(getStore(), same(globalStore));
        expect(
          globalStore.settings.options.project,
          equals(originalGlobalProject),
        );
        expect(globalStore.settings.options.stack, equals(originalGlobalStack));
      },
    );

    test(
      'sibling async local runs keep project/stack values isolated',
      () async {
        final globalStore = getGlobalStore();
        final originalGlobalProject = globalStore.settings.options.project;
        final originalGlobalStack = globalStore.settings.options.stack;

        Future<(String?, String?)> runIsolated(
          String projectName,
          String stackName,
        ) async {
          final localStore = LocalStore();
          localStore.settings.options.project = projectName;
          localStore.settings.options.stack = 'initial-$stackName';

          return asyncLocalStorage.run(localStore, () async {
            await Future<void>.delayed(Duration.zero);
            getStore().settings.options.stack = stackName;
            await Future<void>.delayed(Duration.zero);
            return (
              getStore().settings.options.project,
              getStore().settings.options.stack,
            );
          });
        }

        final results = await Future.wait([
          runIsolated('project-a', 'stack-a'),
          runIsolated('project-b', 'stack-b'),
        ]);

        expect(results[0].$1, equals('project-a'));
        expect(results[0].$2, equals('stack-a'));
        expect(results[1].$1, equals('project-b'));
        expect(results[1].$2, equals('stack-b'));
        expect(getStore(), same(globalStore));
        expect(
          globalStore.settings.options.project,
          equals(originalGlobalProject),
        );
        expect(globalStore.settings.options.stack, equals(originalGlobalStack));
      },
    );

    test(
      'project remains constant while stack changes across awaits',
      () async {
        final globalStore = getGlobalStore();
        final originalGlobalProject = globalStore.settings.options.project;
        final originalGlobalStack = globalStore.settings.options.stack;

        final localStore = LocalStore();
        localStore.settings.options.project = 'project';
        localStore.settings.options.stack = 'stack';

        Future<String?> setAndReadBackStack(String stackName) async {
          getStore().settings.options.stack = stackName;
          await Future<void>.delayed(Duration.zero);
          expect(getStore().settings.options.project, equals('project'));
          return getStore().settings.options.stack;
        }

        final values = await asyncLocalStorage.run(localStore, () async {
          final foo = await setAndReadBackStack('foo');
          final bar = await setAndReadBackStack('bar');
          return (foo, bar, getStore().settings.options.project);
        });

        expect(values.$1, isNot(equals(values.$2)));
        expect(values.$1, isNot(equals('project')));
        expect(values.$2, isNot(equals('project')));
        expect(values.$3, equals('project'));
        expect(getStore(), same(globalStore));
        expect(
          globalStore.settings.options.project,
          equals(originalGlobalProject),
        );
        expect(globalStore.settings.options.stack, equals(originalGlobalStack));
      },
    );

    test(
      'nested async local stores restore the outer store after inner run',
      () async {
        final globalStore = getGlobalStore();
        final outerStore = LocalStore()..settings.options.stack = 'outer';
        final innerStore = LocalStore()..settings.options.stack = 'inner';

        final result = await asyncLocalStorage.run(outerStore, () async {
          expect(getStore(), same(outerStore));
          expect(getStore().settings.options.stack, equals('outer'));

          final innerValue = await asyncLocalStorage.run(innerStore, () async {
            expect(getStore(), same(innerStore));
            expect(getStore().settings.options.stack, equals('inner'));
            return getStore().settings.options.stack;
          });

          expect(innerValue, equals('inner'));
          expect(getStore(), same(outerStore));
          return getStore().settings.options.stack;
        });

        expect(result, equals('outer'));
        expect(getStore(), same(globalStore));
      },
    );
  });
}
