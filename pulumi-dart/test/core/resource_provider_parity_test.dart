import 'package:mockito/mockito.dart';
import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

import '../mocks/mocks.mocks.dart';

class _ParentComponent extends ComponentResource {
  _ParentComponent(String name, ComponentResourceOptions opts)
    : super('my:mod:Parent', name, {}, opts);
}

class _RemoteParentComponent extends ComponentResource {
  _RemoteParentComponent(String name, ComponentResourceOptions opts)
    : super('test:index:RemoteParent', name, {}, opts, remote: true);
}

class _TestCustomResource extends CustomResource {
  _TestCustomResource(String name, CustomResourceOptions opts)
    : super('test:index:MyCustomResource', name, {}, opts);
}

class _OtherCustomResource extends CustomResource {
  _OtherCustomResource(String name, CustomResourceOptions opts)
    : super('other:index:MyCustomResource', name, {}, opts);
}

class _Pkg1CustomResource extends CustomResource {
  _Pkg1CustomResource(String name, CustomResourceOptions opts)
    : super('pkg1:index:MyResource', name, {}, opts);
}

class _Pkg2CustomResource extends CustomResource {
  _Pkg2CustomResource(String name, CustomResourceOptions opts)
    : super('pkg2:index:MyResource', name, {}, opts);
}

class _ComponentResourceOnly extends ComponentResource {
  _ComponentResourceOnly(String name, ComponentResourceOptions opts)
    : super('pkg:index:ComponentOnly', name, {}, opts);
}

class _ComplexChildResource extends CustomResource {
  _ComplexChildResource(String name, CustomResourceOptions opts)
    : super('my:module:Child', name, {}, opts);
}

class _ComplexB extends ComponentResource {
  _ComplexB(String name, ComponentResourceOptions opts)
    : super('my:modules:B', name, {}, opts) {
    _ComplexChildResource('b-child', CustomResourceOptions(parent: this));
  }
}

class _ComplexC extends ComponentResource {
  _ComplexC(String name, ComponentResourceOptions opts)
    : super('my:modules:C', name, {}, opts) {
    _ComplexChildResource('c-child', CustomResourceOptions(parent: this));
  }
}

class _ComplexA extends ComponentResource {
  late final _ComplexB b;
  late final _ComplexC c;

  _ComplexA(String name, ComponentResourceOptions opts)
    : super('my:modules:A', name, {}, opts) {
    b = _ComplexB('a-b', ComponentResourceOptions(parent: this));
    c = _ComplexC('a-c', ComponentResourceOptions(parent: b, dependsOn: [b]));
  }
}

class _ComplexD extends ComponentResource {
  _ComplexD(String name, ComponentResourceOptions opts)
    : super('my:modules:D', name, {}, opts) {
    _ComplexChildResource('d-child', CustomResourceOptions(parent: this));
  }
}

void main() {
  group('resource provider propagation', () {
    late MockDeploymentImpl mockDeployment;
    late Map<String, ResourceOptions> capturedOptionsByName;

    setUp(() {
      mockDeployment = MockDeploymentImpl();
      capturedOptionsByName = <String, ResourceOptions>{};

      when(
        mockDeployment.readOrRegisterResource(
          resource: anyNamed('resource'),
          remote: anyNamed('remote'),
          newDependency: anyNamed('newDependency'),
          args: anyNamed('args'),
          opts: anyNamed('opts'),
          registerPackageRequest: anyNamed('registerPackageRequest'),
        ),
      ).thenAnswer((invocation) async {
        final resource = invocation.namedArguments[#resource] as Resource;
        final opts = invocation.namedArguments[#opts] as ResourceOptions;
        capturedOptionsByName[resource.getResourceName()] = opts;

        resource.resolveUrn(
          'urn:pulumi:stack::project::${resource.getResourceType()}::${resource.getResourceName()}',
        );
        if (resource is CustomResource) {
          resource.resolveId('${resource.getResourceName()}-id', isKnown: true);
        }
      });

      when(mockDeployment.registerResourceOperation(any)).thenAnswer((_) {});

      DeploymentImpl.setTestInstance(mockDeployment);
    });

    tearDown(() {
      DeploymentImpl.clearInstance();
    });

    test('component providers propagate to matching custom child package', () {
      final root = DependencyResource(
        'urn:pulumi:stack::project::pkg:index:Root::root',
      );
      final provider = ProviderResource.reference(
        'test',
        'urn:pulumi:stack::project::pulumi:providers:test::default',
        id: '1',
      );

      final parent = _ParentComponent(
        'parent',
        ComponentResourceOptions(parent: root, providers: [provider]),
      );
      _TestCustomResource('child', CustomResourceOptions(parent: parent));

      final childOptions = capturedOptionsByName['child'];
      expect(childOptions, isNotNull);
      expect(childOptions!.provider, same(provider));
    });

    test(
      'component providers do not propagate to non-matching custom child package',
      () {
        final root = DependencyResource(
          'urn:pulumi:stack::project::pkg:index:Root::root',
        );
        final provider = ProviderResource.reference(
          'test',
          'urn:pulumi:stack::project::pulumi:providers:test::default',
          id: '1',
        );

        final parent = _ParentComponent(
          'parent',
          ComponentResourceOptions(parent: root, providers: [provider]),
        );
        _OtherCustomResource('child', CustomResourceOptions(parent: parent));

        final childOptions = capturedOptionsByName['child'];
        expect(childOptions, isNotNull);
        expect(childOptions!.provider, isNull);
      },
    );

    test('component provider propagates to matching custom child package', () {
      final root = DependencyResource(
        'urn:pulumi:stack::project::pkg:index:Root::root',
      );
      final provider = ProviderResource.reference(
        'test',
        'urn:pulumi:stack::project::pulumi:providers:test::default',
        id: '1',
      );

      final parent = _ParentComponent(
        'parent',
        ComponentResourceOptions(parent: root, provider: provider),
      );
      _TestCustomResource('child', CustomResourceOptions(parent: parent));

      final childOptions = capturedOptionsByName['child'];
      expect(childOptions, isNotNull);
      expect(childOptions!.provider, same(provider));
    });

    test(
      'remote component provider propagates to matching custom child package',
      () {
        final root = DependencyResource(
          'urn:pulumi:stack::project::pkg:index:Root::root',
        );
        final provider = ProviderResource.reference(
          'test',
          'urn:pulumi:stack::project::pulumi:providers:test::default',
          id: '1',
        );

        final parent = _RemoteParentComponent(
          'parent',
          ComponentResourceOptions(parent: root, provider: provider),
        );
        _TestCustomResource('child', CustomResourceOptions(parent: parent));

        final childOptions = capturedOptionsByName['child'];
        expect(childOptions, isNotNull);
        expect(childOptions!.provider, same(provider));
      },
    );

    test(
      'remote component providers list propagates to matching custom child package',
      () {
        final root = DependencyResource(
          'urn:pulumi:stack::project::pkg:index:Root::root',
        );
        final provider = ProviderResource.reference(
          'test',
          'urn:pulumi:stack::project::pulumi:providers:test::default',
          id: '1',
        );

        final parent = _RemoteParentComponent(
          'parent',
          ComponentResourceOptions(parent: root, providers: [provider]),
        );
        _TestCustomResource('child', CustomResourceOptions(parent: parent));

        final childOptions = capturedOptionsByName['child'];
        expect(childOptions, isNotNull);
        expect(childOptions!.provider, same(provider));
      },
    );

    test(
      'remote component provider does not propagate when package does not match child',
      () {
        final root = DependencyResource(
          'urn:pulumi:stack::project::pkg:index:Root::root',
        );
        final provider = ProviderResource.reference(
          'other',
          'urn:pulumi:stack::project::pulumi:providers:other::default',
          id: '1',
        );

        final parent = _RemoteParentComponent(
          'parent',
          ComponentResourceOptions(parent: root, provider: provider),
        );
        _TestCustomResource('child', CustomResourceOptions(parent: parent));

        final childOptions = capturedOptionsByName['child'];
        expect(childOptions, isNotNull);
        expect(childOptions!.provider, isNull);
      },
    );

    test(
      'custom resource keeps explicit provider when provider package matches resource package',
      () {
        final root = DependencyResource(
          'urn:pulumi:stack::project::pkg:index:Root::root',
        );
        final provider = ProviderResource.reference(
          'test',
          'urn:pulumi:stack::project::pulumi:providers:test::default',
          id: '1',
        );

        _TestCustomResource(
          'custom',
          CustomResourceOptions(parent: root, provider: provider),
        );

        final options = capturedOptionsByName['custom'];
        expect(options, isNotNull);
        expect(options!.provider, same(provider));
      },
    );

    test(
      'custom resource drops explicit provider when provider package does not match resource package',
      () {
        final root = DependencyResource(
          'urn:pulumi:stack::project::pkg:index:Root::root',
        );
        final provider = ProviderResource.reference(
          'other',
          'urn:pulumi:stack::project::pulumi:providers:other::default',
          id: '1',
        );

        _TestCustomResource(
          'custom',
          CustomResourceOptions(parent: root, provider: provider),
        );

        final options = capturedOptionsByName['custom'];
        expect(options, isNotNull);
        expect(options!.provider, isNull);
      },
    );

    test('parent and dependsOn pointing to same resource does not throw', () {
      final root = DependencyResource(
        'urn:pulumi:stack::project::pkg:index:Root::root',
      );
      final parent = _ComponentResourceOnly(
        'parent',
        ComponentResourceOptions(parent: root),
      );

      expect(
        () => _ComponentResourceOnly(
          'child',
          ComponentResourceOptions(parent: parent, dependsOn: [parent]),
        ),
        returnsNormally,
      );

      final childOptions = capturedOptionsByName['child'];
      expect(childOptions, isNotNull);
      expect(childOptions!.parent, same(parent));
      expect(childOptions.dependsOn, isNotNull);
      expect(childOptions.dependsOn, contains(same(parent)));
    });

    test('multiple parent providers propagate by package to children', () {
      final root = DependencyResource(
        'urn:pulumi:stack::project::pkg:index:Root::root',
      );
      final provider1 = ProviderResource.reference(
        'pkg1',
        'urn:pulumi:stack::project::pulumi:providers:pkg1::default',
        id: '1',
      );
      final provider2 = ProviderResource.reference(
        'pkg2',
        'urn:pulumi:stack::project::pulumi:providers:pkg2::default',
        id: '1',
      );

      final parent = _ParentComponent(
        'parent',
        ComponentResourceOptions(
          parent: root,
          providers: [provider1, provider2],
        ),
      );

      _Pkg1CustomResource('res1', CustomResourceOptions(parent: parent));
      _Pkg2CustomResource('res2', CustomResourceOptions(parent: parent));

      final res1Options = capturedOptionsByName['res1'];
      final res2Options = capturedOptionsByName['res2'];
      expect(res1Options, isNotNull);
      expect(res2Options, isNotNull);
      expect(res1Options!.provider, same(provider1));
      expect(res2Options!.provider, same(provider2));
    });

    test(
      'component provider and providers list both propagate to matching children',
      () {
        final root = DependencyResource(
          'urn:pulumi:stack::project::pkg:index:Root::root',
        );
        final provider1 = ProviderResource.reference(
          'pkg1',
          'urn:pulumi:stack::project::pulumi:providers:pkg1::default',
          id: '1',
        );
        final provider2 = ProviderResource.reference(
          'pkg2',
          'urn:pulumi:stack::project::pulumi:providers:pkg2::default',
          id: '1',
        );

        final parent = _ParentComponent(
          'parent',
          ComponentResourceOptions(
            parent: root,
            provider: provider1,
            providers: [provider2],
          ),
        );

        _Pkg1CustomResource('res1', CustomResourceOptions(parent: parent));
        _Pkg2CustomResource('res2', CustomResourceOptions(parent: parent));

        final res1Options = capturedOptionsByName['res1'];
        final res2Options = capturedOptionsByName['res2'];
        expect(res1Options, isNotNull);
        expect(res2Options, isNotNull);
        expect(res1Options!.provider, same(provider1));
        expect(res2Options!.provider, same(provider2));
      },
    );

    test(
      'component singular provider takes precedence over providers list for same package',
      () {
        final root = DependencyResource(
          'urn:pulumi:stack::project::pkg:index:Root::root',
        );
        final preferred = ProviderResource.reference(
          'pkg1',
          'urn:pulumi:stack::project::pulumi:providers:pkg1::preferred',
          id: '1',
        );
        final secondary = ProviderResource.reference(
          'pkg1',
          'urn:pulumi:stack::project::pulumi:providers:pkg1::secondary',
          id: '2',
        );

        final parent = _ParentComponent(
          'parent',
          ComponentResourceOptions(
            parent: root,
            provider: preferred,
            providers: [secondary],
          ),
        );

        _Pkg1CustomResource('res1', CustomResourceOptions(parent: parent));

        final res1Options = capturedOptionsByName['res1'];
        expect(res1Options, isNotNull);
        expect(res1Options!.provider, same(preferred));
      },
    );

    test(
      'getProvider lookup uses package token and returns null on invalid',
      () {
        final root = DependencyResource(
          'urn:pulumi:stack::project::pkg:index:Root::root',
        );
        final provider1 = ProviderResource.reference(
          'pkg1',
          'urn:pulumi:stack::project::pulumi:providers:pkg1::default',
          id: '1',
        );
        final provider2 = ProviderResource.reference(
          'pkg2',
          'urn:pulumi:stack::project::pulumi:providers:pkg2::default',
          id: '1',
        );
        final parent = _ParentComponent(
          'parent',
          ComponentResourceOptions(
            parent: root,
            providers: [provider1, provider2],
          ),
        );

        expect(parent.getProvider('pkg1:index:Thing'), same(provider1));
        expect(parent.getProvider('pkg2:index:Thing'), same(provider2));
        expect(parent.getProvider('pkg3:index:Thing'), isNull);
        expect(parent.getProvider('invalid-token'), isNull);
      },
    );

    test(
      'complex parent-child dependency graph does not throw and preserves parent/dependsOn',
      () {
        final root = DependencyResource(
          'urn:pulumi:stack::project::pkg:index:Root::root',
        );

        final a = _ComplexA('a', ComponentResourceOptions(parent: root));

        late final _ComplexD d;
        expect(
          () => d = _ComplexD(
            'd',
            ComponentResourceOptions(parent: a.b, dependsOn: [a.b]),
          ),
          returnsNormally,
        );

        final dOptions = capturedOptionsByName['d'];
        expect(dOptions, isNotNull);
        expect(dOptions!.parent, same(a.b));
        expect(dOptions.dependsOn, isNotNull);
        expect(dOptions.dependsOn, contains(same(a.b)));

        final bChildOptions = capturedOptionsByName['b-child'];
        final cChildOptions = capturedOptionsByName['c-child'];
        final dChildOptions = capturedOptionsByName['d-child'];
        expect(bChildOptions, isNotNull);
        expect(cChildOptions, isNotNull);
        expect(dChildOptions, isNotNull);
        expect(bChildOptions!.parent, same(a.b));
        expect(cChildOptions!.parent, same(a.c));
        expect(dChildOptions!.parent, same(d));
      },
    );

    test('convertToProvidersMap keeps latest provider per package', () {
      final aws1 = ProviderResource.reference(
        'aws',
        'urn:pulumi:stack::project::pulumi:providers:aws::a',
        id: '1',
      );
      final aws2 = ProviderResource.reference(
        'aws',
        'urn:pulumi:stack::project::pulumi:providers:aws::b',
        id: '2',
      );
      final azure = ProviderResource.reference(
        'azure',
        'urn:pulumi:stack::project::pulumi:providers:azure::a',
        id: '1',
      );

      final map = Resource.convertToProvidersMap([aws1, azure, aws2]);
      expect(map.keys.toList(), containsAll(<String>['aws', 'azure']));
      expect(map['aws'], same(aws2));
      expect(map['azure'], same(azure));
    });

    test('custom resource prefers singular provider over providers list', () {
      final root = DependencyResource(
        'urn:pulumi:stack::project::pkg:index:Root::root',
      );
      final preferred = ProviderResource.reference(
        'test',
        'urn:pulumi:stack::project::pulumi:providers:test::preferred',
        id: '1',
      );
      final secondary = ProviderResource.reference(
        'test',
        'urn:pulumi:stack::project::pulumi:providers:test::secondary',
        id: '2',
      );

      expect(
        () => _TestCustomResource(
          'custom',
          CustomResourceOptions(
            parent: root,
            provider: preferred,
            providers: [secondary],
          ),
        ),
        returnsNormally,
      );

      final options = capturedOptionsByName['custom'];
      expect(options, isNotNull);
      expect(options!.provider, same(preferred));
    });

    test('custom resource prefers singular provider after options merge', () {
      final root = DependencyResource(
        'urn:pulumi:stack::project::pkg:index:Root::root',
      );
      final preferred = ProviderResource.reference(
        'test',
        'urn:pulumi:stack::project::pulumi:providers:test::preferred',
        id: '1',
      );
      final secondary = ProviderResource.reference(
        'test',
        'urn:pulumi:stack::project::pulumi:providers:test::secondary',
        id: '2',
      );

      final merged = CustomResourceOptions(
        parent: root,
        providers: [secondary],
      ).merge(CustomResourceOptions(provider: preferred));

      final mergedCustom = CustomResourceOptions(
        parent: merged.parent,
        dependsOn: merged.dependsOn,
        protect: merged.protect,
        provider: merged.provider,
        providers: merged.providers,
        aliases: merged.aliases,
        customTimeouts: merged.customTimeouts,
        deleteBeforeReplace: merged.deleteBeforeReplace,
        retainOnDelete: merged.retainOnDelete,
        deletedWith: merged.deletedWith,
        additionalSecretOutputs: merged.additionalSecretOutputs,
        ignoreChanges: merged.ignoreChanges,
        version: merged.version,
        pluginDownloadURL: merged.pluginDownloadURL,
        replacementTrigger: merged.replacementTrigger,
        transformations: merged.resourceTransformations,
        resourceTransforms: merged.resourceTransforms,
        hooks: merged.hooks,
      );

      expect(
        () => _TestCustomResource('custom', mergedCustom),
        returnsNormally,
      );

      final options = capturedOptionsByName['custom'];
      expect(options, isNotNull);
      expect(options!.provider, same(preferred));
    });
  });
}
