import 'package:pulumi/src/store/async_store.dart';
import 'package:pulumi/src/store/store.dart';
import 'package:test/test.dart';

void main() {
  group('isolation parity', () {
    late AsyncLocalStorage<Store> originalStorage;

    setUp(() {
      originalStorage = asyncLocalStorage;
      asyncLocalStorage = AsyncLocalStorage<Store>();
      setAllConfig({});
    });

    tearDown(() {
      asyncLocalStorage = originalStorage;
    });

    test('independent async stores keep isolated config state', () async {
      final first = LocalStore();
      final second = LocalStore();
      first.config[configEnvKey] = '{}';
      second.config[configEnvKey] = '{}';

      await asyncLocalStorage.run(first, () async {
        setConfig('pkg:key', 'first');
        expect(getConfig('pkg:key'), equals('first'));

        await asyncLocalStorage.run(second, () async {
          setConfig('pkg:key', 'second');
          expect(getConfig('pkg:key'), equals('second'));
        });

        expect(getConfig('pkg:key'), equals('first'));
      });
    });
  });
}
