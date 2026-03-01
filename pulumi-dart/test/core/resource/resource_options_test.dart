import 'package:test/test.dart';
import 'package:pulumi/pulumi.dart';
import '../../test_utils/resource_test_utils.dart';

void main() {
  group('resource option merging', () {
    test('last parent wins', () {
      final parent1 = dependencyResource('test:index:parent', 'parent1');
      final parent2 = dependencyResource('test:index:parent', 'parent2');

      final merged = ResourceOptions(
        parent: parent1,
      ).merge(ResourceOptions(parent: parent2));
      expect(merged.parent, same(parent2));
    });

    test('dependsOn values append in order', () {
      final dep1 = dependencyResource('test:index:res', 'dep1');
      final dep2 = dependencyResource('test:index:res', 'dep2');
      final dep3 = dependencyResource('test:index:res', 'dep3');

      final merged = ResourceOptions(
        dependsOn: [dep1, dep2],
      ).merge(ResourceOptions(dependsOn: [dep3]));

      expect(merged.dependsOn, hasLength(3));
      expect(merged.dependsOn![0], same(dep1));
      expect(merged.dependsOn![1], same(dep2));
      expect(merged.dependsOn![2], same(dep3));
    });

    test('dependsOn multi-merge preserves order and duplicates', () {
      final dep1 = dependencyResource('test:index:res', 'dep1');
      final dep2 = dependencyResource('test:index:res', 'dep2');
      final dep3 = dependencyResource('test:index:res', 'dep3');

      final merged = ResourceOptions(dependsOn: [dep1])
          .merge(ResourceOptions(dependsOn: [dep2, dep1]))
          .merge(ResourceOptions(dependsOn: [dep3, dep2]));

      expect(merged.dependsOn, hasLength(5));
      expect(merged.dependsOn![0], same(dep1));
      expect(merged.dependsOn![1], same(dep2));
      expect(merged.dependsOn![2], same(dep1));
      expect(merged.dependsOn![3], same(dep3));
      expect(merged.dependsOn![4], same(dep2));
    });

    test('last scalar flags win', () {
      final merged =
          ResourceOptions(
            protect: true,
            deleteBeforeReplace: true,
            retainOnDelete: false,
          ).merge(
            const ResourceOptions(
              protect: false,
              deleteBeforeReplace: false,
              retainOnDelete: true,
            ),
          );

      expect(merged.protect, isFalse);
      expect(merged.deleteBeforeReplace, isFalse);
      expect(merged.retainOnDelete, isTrue);
    });

    test('scalar fields keep left value when right side omits the field', () {
      final merged = const ResourceOptions(
        protect: true,
      ).merge(const ResourceOptions());

      expect(merged.protect, isTrue);
    });

    test('replacementTrigger follows merge order', () {
      final merged = const ResourceOptions(
        replacementTrigger: ['old'],
      ).merge(const ResourceOptions(replacementTrigger: ['new']));

      expect(merged.replacementTrigger, equals(['new']));
      expect(merged.effectiveReplacementTrigger, equals(['new']));
    });

    test('later replacementTrigger overrides earlier replacementTrigger', () {
      final merged = const ResourceOptions(replacementTrigger: ['base'])
          .merge(const ResourceOptions(replacementTrigger: ['middle']))
          .merge(const ResourceOptions(replacementTrigger: ['final']));

      expect(merged.replacementTrigger, equals(['final']));
      expect(merged.effectiveReplacementTrigger, equals(['final']));
    });

    test('provider and providers merge with later provider preferred', () {
      final awsA = providerResource('aws', 'a');
      final awsB = providerResource('aws', 'b');
      final azureA = providerResource('azure', 'a');

      final merged = ResourceOptions(
        provider: awsA,
        providers: [awsA, azureA],
      ).merge(ResourceOptions(provider: awsB, providers: [awsB]));

      expect(merged.provider, same(awsB));
      expect(merged.providers.map((p) => p.package), equals(['azure', 'aws']));
      expect(merged.providers.last, same(awsB));
    });

    test(
      'provider precedence and providers ordering remain stable across overlaps',
      () {
        final awsA = providerResource('aws', 'a');
        final awsB = providerResource('aws', 'b');
        final azureA = providerResource('azure', 'a');
        final azureB = providerResource('azure', 'b');
        final gcpA = providerResource('gcp', 'a');

        final merged =
            ResourceOptions(provider: awsA, providers: [awsA, azureA])
                .merge(ResourceOptions(providers: [awsB, gcpA]))
                .merge(ResourceOptions(provider: azureB, providers: [azureB]));

        expect(merged.provider, same(azureB));
        expect(
          merged.providers.map((p) => p.package),
          equals(['aws', 'gcp', 'azure']),
        );
        expect(merged.providers[0], same(awsB));
        expect(merged.providers[1], same(gcpA));
        expect(merged.providers[2], same(azureB));
      },
    );

    test('list fields append while nullable singular fields keep latest', () {
      final deletedWithA = dependencyResource(
        'test:index:res',
        'deleted-with-a',
      );
      final deletedWithB = dependencyResource(
        'test:index:res',
        'deleted-with-b',
      );

      final merged =
          ResourceOptions(
            additionalSecretOutputs: ['a'],
            deletedWith: deletedWithA,
          ).merge(
            ResourceOptions(
              additionalSecretOutputs: ['b', 'c'],
              deletedWith: deletedWithB,
            ),
          );

      expect(merged.additionalSecretOutputs, equals(['a', 'b', 'c']));
      expect(merged.deletedWith, same(deletedWithB));
    });

    test('ignoreChanges arrays append', () {
      final merged = const ResourceOptions(
        ignoreChanges: ['a', 'b'],
      ).merge(const ResourceOptions(ignoreChanges: ['b', 'c']));

      expect(merged.ignoreChanges, equals(['a', 'b', 'b', 'c']));
    });

    test('array fields keep left value when right side omits the field', () {
      final merged = const ResourceOptions(
        ignoreChanges: ['a', 'b'],
      ).merge(const ResourceOptions());

      expect(merged.ignoreChanges, equals(['a', 'b']));
    });

    test('aliases arrays append', () {
      final a1 = Alias(name: Input.fromValue('a'));
      final a2 = Alias(name: Input.fromValue('b'));
      final a3 = Alias(name: Input.fromValue('c'));

      final merged = ResourceOptions(
        aliases: [a1, a2],
      ).merge(ResourceOptions(aliases: [a2, a3]));

      expect(merged.aliases, hasLength(4));
      expect(merged.aliases![0], same(a1));
      expect(merged.aliases![1], same(a2));
      expect(merged.aliases![2], same(a2));
      expect(merged.aliases![3], same(a3));
    });

    test('aliases keep left values when right side omits aliases', () {
      final a1 = Alias(name: Input.fromValue('a'));
      final a2 = Alias(name: Input.fromValue('b'));

      final merged = ResourceOptions(
        aliases: [a1, a2],
      ).merge(const ResourceOptions());

      expect(merged.aliases, hasLength(2));
      expect(merged.aliases![0], same(a1));
      expect(merged.aliases![1], same(a2));
    });

    test('customTimeouts last value wins', () {
      final t1 = const CustomTimeouts(create: '1m');
      final t2 = const CustomTimeouts(create: '2m');
      final merged = ResourceOptions(
        customTimeouts: t1,
      ).merge(ResourceOptions(customTimeouts: t2));
      expect(merged.customTimeouts, same(t2));
    });

    test('resource transformations append new values', () {
      ResourceTransformationResult? t1(ResourceTransformationArgs args) {
        return null;
      }

      ResourceTransformationResult? t2(ResourceTransformationArgs args) {
        return null;
      }

      final merged = ResourceOptions(
        resourceTransformations: [t1],
      ).merge(ResourceOptions(resourceTransformations: [t2]));

      expect(merged.resourceTransformations, hasLength(2));
      expect(merged.resourceTransformations.first, same(t1));
      expect(merged.resourceTransformations.last, same(t2));
    });

    test('resource transforms append new values', () {
      Future<ResourceTransformResult?> t1(
        ResourceTransformArgs args, [
        CancellationToken? cancellationToken,
      ]) async {
        return null;
      }

      Future<ResourceTransformResult?> t2(
        ResourceTransformArgs args, [
        CancellationToken? cancellationToken,
      ]) async {
        return null;
      }

      final merged = ResourceOptions(
        resourceTransforms: [t1],
      ).merge(ResourceOptions(resourceTransforms: [t2]));

      expect(merged.resourceTransforms, hasLength(2));
      expect(merged.resourceTransforms.first, same(t1));
      expect(merged.resourceTransforms.last, same(t2));
    });

    test('merge with null options returns original providers and provider', () {
      final awsDefault = providerResource('aws', 'default');
      final azureDefault = providerResource('azure', 'default');
      final awsExplicit = providerResource('aws', 'explicit');

      final options = ResourceOptions(
        providers: [awsDefault, azureDefault],
        provider: awsExplicit,
      );

      final merged = options.merge(null);
      expect(merged.provider, same(awsExplicit));
      expect(merged.providers, hasLength(2));
      expect(merged.providers[0], same(awsDefault));
      expect(merged.providers[1], same(azureDefault));
    });

    test(
      'merge keeps singleton providers when second options omit providers',
      () {
        final aws = providerResource('aws', 'default');
        final merged = ResourceOptions(
          providers: [aws],
        ).merge(const ResourceOptions(protect: true));

        expect(merged.protect, isTrue);
        expect(merged.provider, isNull);
        expect(merged.providers, hasLength(1));
        expect(merged.providers.single, same(aws));
      },
    );

    test('hooks merge appends lifecycle handlers in order', () {
      Future<void> noopResourceHook(ResourceHookArgs args) async {}
      Future<bool> neverRetry(ErrorHookArgs args) async => false;

      final bc1 = ResourceHook('bc1', noopResourceHook);
      final bc2 = ResourceHook('bc2', noopResourceHook);
      final au1 = ResourceHook('au1', noopResourceHook);
      final bd2 = ResourceHook('bd2', noopResourceHook);
      final err1 = ErrorHook('err1', neverRetry);
      final err2 = ErrorHook('err2', neverRetry);

      final merged =
          ResourceOptions(
            hooks: ResourceHookBinding(
              beforeCreate: [bc1],
              afterUpdate: [au1],
              onError: [err1],
            ),
          ).merge(
            ResourceOptions(
              hooks: ResourceHookBinding(
                beforeCreate: [bc2],
                beforeDelete: [bd2],
                onError: [err2],
              ),
            ),
          );

      final hooks = merged.hooks;
      expect(hooks, isNotNull);
      expect(hooks!.beforeCreate, hasLength(2));
      expect(hooks.beforeCreate[0], same(bc1));
      expect(hooks.beforeCreate[1], same(bc2));
      expect(hooks.afterUpdate, hasLength(1));
      expect(hooks.afterUpdate.single, same(au1));
      expect(hooks.beforeDelete, hasLength(1));
      expect(hooks.beforeDelete.single, same(bd2));
      expect(hooks.onError, hasLength(2));
      expect(hooks.onError[0], same(err1));
      expect(hooks.onError[1], same(err2));
    });

    test('hooks merge keeps explicit empty binding when left side is null', () {
      final merged = const ResourceOptions().merge(
        const ResourceOptions(hooks: ResourceHookBinding()),
      );

      expect(merged.hooks, isNotNull);
      expect(merged.hooks!.isEmpty, isTrue);
    });

    test('hooks merge with empty right binding preserves existing hooks', () {
      Future<void> noopResourceHook(ResourceHookArgs args) async {}
      final originalHook = ResourceHook('before-create', noopResourceHook);

      final merged = ResourceOptions(
        hooks: ResourceHookBinding(beforeCreate: [originalHook]),
      ).merge(const ResourceOptions(hooks: ResourceHookBinding()));

      expect(merged.hooks, isNotNull);
      expect(merged.hooks!.isEmpty, isFalse);
      expect(merged.hooks!.beforeCreate, hasLength(1));
      expect(merged.hooks!.beforeCreate.single, same(originalHook));
    });

    test('clone performs deep copy of hook lists', () {
      Future<void> noopResourceHook(ResourceHookArgs args) async {}

      final originalHook = ResourceHook('original', noopResourceHook);
      final clonedHook = ResourceHook('cloned', noopResourceHook);

      final original = ResourceOptions(
        hooks: ResourceHookBinding(beforeCreate: [originalHook]),
      );
      final clone = original.clone();

      expect(clone.hooks, isNotNull);
      expect(clone.hooks, isNot(same(original.hooks)));
      expect(clone.hooks!.beforeCreate, hasLength(1));
      expect(clone.hooks!.beforeCreate.single, same(originalHook));

      clone.hooks!.beforeCreate.add(clonedHook);
      expect(clone.hooks!.beforeCreate, hasLength(2));
      expect(original.hooks!.beforeCreate, hasLength(1));
      expect(original.hooks!.beforeCreate.single, same(originalHook));
    });

    test('hideDiffs arrays append', () {
      final merged = const ResourceOptions(
        hideDiffs: ['a', 'b'],
      ).merge(const ResourceOptions(hideDiffs: ['b', 'c']));

      expect(merged.hideDiffs, equals(['a', 'b', 'b', 'c']));
    });

    test('replaceWith arrays append', () {
      final merged = const ResourceOptions(
        replaceWith: ['a', 'b'],
      ).merge(const ResourceOptions(replaceWith: ['b', 'c']));

      expect(merged.replaceWith, equals(['a', 'b', 'b', 'c']));
    });

    test('envVarMappings merge with later values overriding earlier ones', () {
      final merged =
          ResourceOptions(
            envVarMappings: {'key1': 'value1', 'key2': 'value2'},
          ).merge(
            ResourceOptions(
              envVarMappings: {'key2': 'updated', 'key3': 'value3'},
            ),
          );

      expect(
        merged.envVarMappings,
        equals({'key1': 'value1', 'key2': 'updated', 'key3': 'value3'}),
      );
    });

    test('urn field follows last-wins semantics', () {
      final merged = ResourceOptions(
        urn: Input.fromValue('urn:first'),
      ).merge(ResourceOptions(urn: Input.fromValue('urn:second')));

      expect(merged.urn, isNotNull);
    });

    test('id and urn are independent fields', () {
      final merged = ResourceOptions(
        id: Input.fromValue('resource-id'),
        urn: Input.fromValue('urn:pulumi:stack::project::type::name'),
      ).merge(const ResourceOptions());

      expect(merged.id, isNotNull);
      expect(merged.urn, isNotNull);
    });
  });

  group('provider list merge semantics', () {
    test('same package keeps the later provider', () {
      final awsA = providerResource('aws', 'a');
      final awsB = providerResource('aws', 'b');

      final merged = mergeProviders([awsA], [awsB]);
      expect(merged, hasLength(1));
      expect(merged.single, same(awsB));
    });

    test('different packages keep deterministic order', () {
      final aws = providerResource('aws', 'a');
      final azure = providerResource('azure', 'a');

      final merged = mergeProviders([aws], [azure]);
      expect(merged.map((p) => p.package), equals(['aws', 'azure']));
    });

    test('overlapping arrays retain one provider per package', () {
      final awsA = providerResource('aws', 'a');
      final awsB = providerResource('aws', 'b');
      final azure = providerResource('azure', 'a');

      final merged = mergeProviders([awsA, awsB], [awsA, azure]);
      expect(merged, hasLength(2));
      expect(merged.first, same(awsA));
      expect(merged.last, same(azure));
    });

    test('repeated overlaps keep deterministic package order', () {
      final awsA = providerResource('aws', 'a');
      final awsB = providerResource('aws', 'b');
      final azureA = providerResource('azure', 'a');
      final azureB = providerResource('azure', 'b');
      final gcpA = providerResource('gcp', 'a');
      final gcpB = providerResource('gcp', 'b');

      final merged = mergeProviders(
        mergeProviders([awsA, azureA, gcpA], [azureB]),
        [awsB, gcpB],
      );

      expect(merged.map((p) => p.package), equals(['azure', 'aws', 'gcp']));
      expect(merged[0], same(azureB));
      expect(merged[1], same(awsB));
      expect(merged[2], same(gcpB));
    });
  });
}
