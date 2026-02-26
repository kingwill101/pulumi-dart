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
  });
}
