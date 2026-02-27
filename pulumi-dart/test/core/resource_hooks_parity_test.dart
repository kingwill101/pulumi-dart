import 'package:pulumi/src/resource/resource_hooks.dart';
import 'package:test/test.dart';

void main() {
  group('resource hooks parity', () {
    test(
      'ResourceHook and ErrorHook expose names and handler behavior',
      () async {
        var resourceInvoked = false;
        var errorInvoked = false;

        final resourceHook = ResourceHook('beforeCreate', (args) async {
          resourceInvoked = true;
          expect(args.urn, contains('urn:pulumi:'));
        });
        final errorHook = ErrorHook('onError', (args) {
          errorInvoked = true;
          expect(args.failedOperation, 'create');
          return true;
        });

        await resourceHook.handler(
          const ResourceHookArgs(
            urn: 'urn:pulumi:stack::project::pkg:index:Type::name',
            id: 'id-1',
            name: 'name',
            type: 'pkg:index:Type',
          ),
        );
        final shouldRetry = await errorHook.handler(
          const ErrorHookArgs(
            urn: 'urn:pulumi:stack::project::pkg:index:Type::name',
            id: 'id-1',
            name: 'name',
            type: 'pkg:index:Type',
            failedOperation: 'create',
            errors: ['boom'],
          ),
        );

        expect(resourceHook.name, 'beforeCreate');
        expect(resourceHook.onDryRun, isFalse);
        expect(errorHook.name, 'onError');
        expect(resourceInvoked, isTrue);
        expect(errorInvoked, isTrue);
        expect(shouldRetry, isTrue);
      },
    );

    test(
      'ResourceHookBinding defaults, isEmpty, and copyWith behave as expected',
      () async {
        final empty = const ResourceHookBinding();
        expect(empty.isEmpty, isTrue);

        final resourceHook = ResourceHook('afterDelete', (args) async {});
        final errorHook = ErrorHook('onError', (args) async => false);
        final populated = empty.copyWith(
          afterDelete: [resourceHook],
          onError: [errorHook],
        );

        expect(populated.isEmpty, isFalse);
        expect(populated.afterDelete, hasLength(1));
        expect(populated.afterDelete.single.name, 'afterDelete');
        expect(populated.onError, hasLength(1));
        expect(populated.onError.single.name, 'onError');
        expect(populated.beforeCreate, isEmpty);
      },
    );

    test(
      'copyWith preserves afterDelete and onError when not overridden',
      () async {
        final resourceHook = ResourceHook('afterDelete', (args) async {});
        final errorHook = ErrorHook('onError', (args) async => false);
        final original = ResourceHookBinding(
          afterDelete: [resourceHook],
          onError: [errorHook],
        );

        final copied = original.copyWith(beforeCreate: const []);

        expect(copied.afterDelete, same(original.afterDelete));
        expect(copied.onError, same(original.onError));
      },
    );

    test(
      'ResourceHookArgs and ErrorHookArgs retain optional maps and defaults',
      () {
        const resourceArgs = ResourceHookArgs(
          urn: 'urn:pulumi:stack::project::pkg:index:Type::name',
          id: 'id-1',
          name: 'name',
          type: 'pkg:index:Type',
          newInputs: {'a': 1},
          oldInputs: {'b': 2},
          newOutputs: {'c': 3},
          oldOutputs: {'d': 4},
        );
        const errorArgs = ErrorHookArgs(
          urn: 'urn:pulumi:stack::project::pkg:index:Type::name',
          id: 'id-1',
          name: 'name',
          type: 'pkg:index:Type',
        );

        expect(resourceArgs.newInputs, equals({'a': 1}));
        expect(resourceArgs.oldInputs, equals({'b': 2}));
        expect(resourceArgs.newOutputs, equals({'c': 3}));
        expect(resourceArgs.oldOutputs, equals({'d': 4}));
        expect(errorArgs.failedOperation, isEmpty);
        expect(errorArgs.errors, isEmpty);
        expect(errorArgs.newInputs, isNull);
        expect(errorArgs.oldInputs, isNull);
        expect(errorArgs.oldOutputs, isNull);
      },
    );
  });
}
