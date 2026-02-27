import 'package:mockito/mockito.dart';
import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/constants.dart';
import 'package:pulumi/src/deserializer.dart';
import 'package:pulumi/src/serializer.dart';
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'package:test/test.dart';

import 'mocks/mocks.mocks.dart';

class _DeferredDependencyResource extends Resource {
  _DeferredDependencyResource(String type, String name)
    : super(type, name, false, {}, ResourceOptions(), dependency: true);

  void resolve(String urn) {
    resolveUrn(urn);
  }
}

class _UnknownAssetOrArchive implements AssetOrArchive {}

void main() {
  late MockDeploymentImpl mockDeployment;
  late Serializer serializer;
  late MockStack stack;

  setUp(() {
    mockDeployment = MockDeploymentImpl();
    stack = MockStack();

    when(mockDeployment.stack).thenReturn(stack);
    DeploymentImpl.setTestInstance(mockDeployment);
    serializer = Serializer();
  });

  tearDown(() {
    DeploymentImpl.clearInstance();
  });

  group('Serializer Tests', () {
    test('Serialize primitive values', () async {
      expect(await serializer.serializeAsync('test', null, false), isNull);
      expect(await serializer.serializeAsync('test', true, false), isTrue);
      expect(await serializer.serializeAsync('test', 42, false), equals(42));
      expect(
        await serializer.serializeAsync('test', 3.14, false),
        equals(3.14),
      );
      expect(
        await serializer.serializeAsync('test', 'hello', false),
        equals('hello'),
      );
    });

    test('Serialize Asset', () async {
      var asset = FileAsset('path/to/file.txt');
      var result = await serializer.serializeAsync('test', asset, false);
      expect(
        result,
        equals({
          Constants.specialSigKey: Constants.specialAssetSig,
          Constants.assetOrArchivePathName: 'path/to/file.txt',
        }),
      );
    });

    test('Serialize Asset with debug output preserves payload shape', () async {
      final debugSerializer = Serializer(excessiveDebugOutput: true);
      final result = await debugSerializer.serializeAsync(
        'debug.asset',
        FileAsset('path/to/file.txt'),
        false,
      );
      expect(
        result,
        equals({
          Constants.specialSigKey: Constants.specialAssetSig,
          Constants.assetOrArchivePathName: 'path/to/file.txt',
        }),
      );
    });

    test('Serialize Archive', () async {
      var archive = FileArchive('path/to/archive.zip');
      var result = await serializer.serializeAsync('test', archive, false);
      expect(
        result,
        equals({
          Constants.specialSigKey: Constants.specialArchiveSig,
          Constants.assetOrArchivePathName: 'path/to/archive.zip',
        }),
      );
    });

    test(
      'Serialize asset/archive variants include string, remote, nested, and remote archive',
      () async {
        final stringAsset = StringAsset('inline-content');
        final remoteAsset = RemoteAsset('https://example.com/asset.txt');
        final assetArchive = AssetArchive({
          'file': FileAsset('/tmp/file.txt'),
          'remote': RemoteAsset('https://example.com/a'),
        });
        final remoteArchive = RemoteArchive('https://example.com/archive.zip');

        final stringResult = await serializer.serializeAsync(
          'test',
          stringAsset,
          false,
        );
        expect(
          stringResult,
          equals({
            Constants.specialSigKey: Constants.specialAssetSig,
            Constants.assetTextName: 'inline-content',
          }),
        );

        final remoteResult = await serializer.serializeAsync(
          'test',
          remoteAsset,
          false,
        );
        expect(
          remoteResult,
          equals({
            Constants.specialSigKey: Constants.specialAssetSig,
            Constants.assetOrArchiveUriName: 'https://example.com/asset.txt',
          }),
        );

        final archiveResult = await serializer.serializeAsync(
          'test',
          assetArchive,
          false,
        );
        expect(
          archiveResult[Constants.specialSigKey],
          equals(Constants.specialArchiveSig),
        );
        expect(
          (archiveResult[Constants.archiveAssetsName] as Map<String, dynamic>)
              .containsKey('file'),
          isTrue,
        );

        final remoteArchiveResult = await serializer.serializeAsync(
          'test',
          remoteArchive,
          false,
        );
        expect(
          remoteArchiveResult,
          equals({
            Constants.specialSigKey: Constants.specialArchiveSig,
            Constants.assetOrArchiveUriName: 'https://example.com/archive.zip',
          }),
        );
      },
    );

    test('Serialize unknown asset/archive type throws parity error', () async {
      await expectLater(
        serializer.serializeAsync('test', _UnknownAssetOrArchive(), false),
        throwsA(
          isA<Exception>().having(
            (e) => e.toString(),
            'message',
            contains('Unknown asset or archive type'),
          ),
        ),
      );
    });

    test('Serialize Inputs and debug map/list paths remain stable', () async {
      final debugSerializer = Serializer(excessiveDebugOutput: true);
      final inputs = <String, Input<dynamic>>{
        'name': Input.fromValue('demo'),
        'enabled': Input.fromValue(true),
      };

      final result = await debugSerializer.serializeAsync('ctx', {
        'args': inputs,
        'list': [1, 2, 3],
      }, false);

      expect(result, isA<Map<String, dynamic>>());
      final map = result as Map<String, dynamic>;
      expect(map['args'], equals({'name': 'demo', 'enabled': true}));
      expect(map['list'], equals([1, 2, 3]));
    });

    test('Serialize rejects Future and unsupported argument types', () async {
      await expectLater(
        serializer.serializeAsync('test', Future.value('value'), false),
        throwsA(
          isA<Exception>().having(
            (e) => e.toString(),
            'message',
            contains('Futures are not allowed inside ResourceArgs'),
          ),
        ),
      );

      await expectLater(
        serializer.serializeAsync('test', DateTime.utc(2026, 1, 1), false),
        throwsA(
          isA<Exception>().having(
            (e) => e.toString(),
            'message',
            contains('is not a supported argument type'),
          ),
        ),
      );
    });

    test('Serialize CustomResource', () async {
      var mockResource = MockCustomResource();
      when(mockResource.getResourceType()).thenReturn('aws:s3/bucket:Bucket');
      when(mockResource.getResourceName()).thenReturn('my-bucket');
      when(mockResource.urn).thenReturn(
        Output.create(
          'urn:pulumi:stack::project::aws:s3/bucket:Bucket::my-bucket',
        ),
      );
      when(mockResource.id).thenReturn(Output.create('bucket-id'));

      var result = await serializer.serializeAsync('test', mockResource, true);
      expect(
        result,
        equals({
          Constants.specialSigKey: Constants.specialResourceSig,
          Constants.resourceUrnName:
              'urn:pulumi:stack::project::aws:s3/bucket:Bucket::my-bucket',
          Constants.resourceIdName: 'bucket-id',
        }),
      );
    });

    test(
      'Serialize CustomResource without resource references uses ID',
      () async {
        final mockResource = MockCustomResource();
        when(mockResource.getResourceType()).thenReturn('aws:s3/bucket:Bucket');
        when(mockResource.getResourceName()).thenReturn('my-bucket');
        when(mockResource.urn).thenReturn(
          Output.create(
            'urn:pulumi:stack::project::aws:s3/bucket:Bucket::my-bucket',
          ),
        );
        when(mockResource.id).thenReturn(Output.create('bucket-id'));

        final result = await serializer.serializeAsync(
          'test',
          mockResource,
          false,
        );
        expect(result, equals('bucket-id'));
      },
    );

    test(
      'Serialize CustomResource without resource references uses unknown sentinel for unknown ID',
      () async {
        final mockResource = MockCustomResource();
        when(mockResource.getResourceType()).thenReturn('aws:s3/bucket:Bucket');
        when(mockResource.getResourceName()).thenReturn('my-bucket');
        when(mockResource.urn).thenReturn(
          Output.create(
            'urn:pulumi:stack::project::aws:s3/bucket:Bucket::my-bucket',
          ),
        );
        when(mockResource.id).thenReturn(
          Output<String?>(
            Future.value(
              const OutputData<String?>(
                value: null,
                isKnown: false,
                isSecret: false,
                resources: {},
              ),
            ),
          ),
        );

        final result = await serializer.serializeAsync(
          'test',
          mockResource,
          false,
        );
        expect(result, equals(Constants.unknownValue));
      },
    );

    test(
      'Serialize ComponentResource without resource references uses URN',
      () async {
        final mockResource = MockComponentResource();
        when(mockResource.getResourceType()).thenReturn('test:index:Component');
        when(mockResource.getResourceName()).thenReturn('component');
        when(mockResource.urn).thenReturn(
          Output.create(
            'urn:pulumi:stack::project::test:index:Component::component',
          ),
        );

        final result = await serializer.serializeAsync(
          'test',
          mockResource,
          false,
        );
        expect(
          result,
          equals('urn:pulumi:stack::project::test:index:Component::component'),
        );
      },
    );

    test(
      'Serialize ComponentResource with keepResources emits resource signature envelope',
      () async {
        final mockResource = MockComponentResource();
        when(mockResource.getResourceType()).thenReturn('test:index:Component');
        when(mockResource.getResourceName()).thenReturn('component');
        when(mockResource.urn).thenReturn(
          Output.create(
            'urn:pulumi:stack::project::test:index:Component::component',
          ),
        );

        final result = await serializer.serializeAsync(
          'test',
          mockResource,
          true,
        );
        expect(
          result,
          equals({
            Constants.specialSigKey: Constants.specialResourceSig,
            Constants.resourceUrnName:
                'urn:pulumi:stack::project::test:index:Component::component',
          }),
        );
      },
    );

    test(
      'Serialize CustomResource and ComponentResource with debug output preserves values',
      () async {
        final debugSerializer = Serializer(excessiveDebugOutput: true);

        final custom = MockCustomResource();
        when(custom.getResourceType()).thenReturn('aws:s3/bucket:Bucket');
        when(custom.getResourceName()).thenReturn('my-bucket');
        when(custom.urn).thenReturn(
          Output.create(
            'urn:pulumi:stack::project::aws:s3/bucket:Bucket::my-bucket',
          ),
        );
        when(custom.id).thenReturn(Output.create('bucket-id'));

        final customSerialized = await debugSerializer.serializeAsync(
          'debug.custom',
          custom,
          false,
        );
        expect(customSerialized, equals('bucket-id'));

        final component = MockComponentResource();
        when(component.getResourceType()).thenReturn('test:index:Component');
        when(component.getResourceName()).thenReturn('component');
        when(component.urn).thenReturn(
          Output.create(
            'urn:pulumi:stack::project::test:index:Component::component',
          ),
        );

        final componentSerialized = await debugSerializer.serializeAsync(
          'debug.component',
          component,
          false,
        );
        expect(
          componentSerialized,
          equals('urn:pulumi:stack::project::test:index:Component::component'),
        );
      },
    );

    test(
      'Serialize resource references tracks dependent resources deterministically',
      () async {
        final custom1 = MockCustomResource();
        final custom2 = MockCustomResource();

        when(custom1.getResourceType()).thenReturn('test:index:Custom');
        when(custom1.getResourceName()).thenReturn('custom1');
        when(custom1.urn).thenReturn(
          Output.create(
            'urn:pulumi:stack::project::test:index:Custom::custom1',
          ),
        );
        when(custom1.id).thenReturn(Output.create('custom1-id'));

        when(custom2.getResourceType()).thenReturn('test:index:Custom');
        when(custom2.getResourceName()).thenReturn('custom2');
        when(custom2.urn).thenReturn(
          Output.create(
            'urn:pulumi:stack::project::test:index:Custom::custom2',
          ),
        );
        when(custom2.id).thenReturn(Output.create('custom2-id'));

        final result = await serializer.serializeAsync('test', {
          'resources': [custom1, custom2],
        }, true);

        expect(result, isA<Map<String, dynamic>>());
        expect(serializer.dependentResources, hasLength(2));
        expect(serializer.dependentResources, contains(custom1));
        expect(serializer.dependentResources, contains(custom2));
      },
    );

    test('Serialize Output', () async {
      var output = Output.create('test-value');
      var result = await serializer.serializeAsync('test', output, false);
      expect(result, equals('test-value'));
    });

    test(
      'Serialize map with unknown output produces unknown object sentinel',
      () async {
        final unknown = Output<String>(
          Future.value(
            const OutputData<String>(
              value: null,
              isKnown: false,
              isSecret: false,
              resources: {},
            ),
          ),
        );

        final result = await serializer.serializeAsync('test', {
          'known': 'value',
          'unknown': unknown,
        }, false);

        expect(result, equals(Constants.unknownObjectValue));
      },
    );

    test(
      'Serialize list with unknown output produces unknown array sentinel',
      () async {
        final unknown = Output<int>(
          Future.value(
            const OutputData<int>(
              value: null,
              isKnown: false,
              isSecret: false,
              resources: {},
            ),
          ),
        );

        final result = await serializer.serializeAsync('test', [
          1,
          unknown,
        ], false);

        expect(result, equals(Constants.unknownArrayValue));
      },
    );

    test('Serialize OutputValue envelope with metadata', () async {
      final dependency = DependencyResource(
        'urn:pulumi:stack::project::test:index:Resource::dep',
      );
      final output = Output<String>(
        Future.value(
          OutputData<String>(
            value: 'wrapped',
            isKnown: true,
            isSecret: true,
            resources: {dependency},
          ),
        ),
      );

      final result = await serializer.serializeAsync(
        'test',
        output,
        false,
        keepOutputValues: true,
      );

      expect(result, isA<Map<String, dynamic>>());
      final value = result as Map<String, dynamic>;
      expect(value[Constants.specialSigKey], Constants.specialOutputValueSig);
      expect(value[Constants.valueName], 'wrapped');
      expect(value[Constants.secretName], isTrue);
      expect(
        value[Constants.dependenciesName],
        contains('urn:pulumi:stack::project::test:index:Resource::dep'),
      );
    });

    test(
      'Serialize OutputValue returns raw value when metadata is unnecessary',
      () async {
        final output = Output.create('plain');
        final result = await serializer.serializeAsync(
          'test',
          output,
          false,
          keepOutputValues: true,
        );

        expect(result, equals('plain'));
      },
    );

    test(
      'Serialize OutputValue emits envelope when dependencies exist',
      () async {
        final dependency = DependencyResource(
          'urn:pulumi:stack::project::test:index:Resource::dep',
        );
        final output = Output<String>(
          Future.value(
            OutputData<String>(
              value: 'with-deps',
              isKnown: true,
              isSecret: false,
              resources: {dependency},
            ),
          ),
        );

        final result = await serializer.serializeAsync(
          'test',
          output,
          false,
          keepOutputValues: true,
        );
        expect(result, isA<Map<String, dynamic>>());
        final envelope = result as Map<String, dynamic>;
        expect(
          envelope[Constants.specialSigKey],
          Constants.specialOutputValueSig,
        );
        expect(envelope[Constants.valueName], equals('with-deps'));
        expect(
          envelope[Constants.dependenciesName],
          contains('urn:pulumi:stack::project::test:index:Resource::dep'),
        );
      },
    );

    test('Serialize unknown OutputValue envelope omits value', () async {
      final output = Output<String>(
        Future.value(
          OutputData<String>(
            value: null,
            isKnown: false,
            isSecret: false,
            resources: {},
          ),
        ),
      );

      final result = await serializer.serializeAsync(
        'test',
        output,
        false,
        keepOutputValues: true,
      );

      expect(result, isA<Map<String, dynamic>>());
      final value = result as Map<String, dynamic>;
      expect(value[Constants.specialSigKey], Constants.specialOutputValueSig);
      expect(value.containsKey(Constants.valueName), isFalse);
      expect(value.containsKey(Constants.secretName), isFalse);
    });

    test('Serialize Secret', () async {
      var secret = Output.createSecret(Output.create('secret-value'));
      var result = await serializer.serializeAsync('test', secret, false);
      expect(
        result,
        equals({
          Constants.specialSigKey: Constants.specialSecretSig,
          Constants.valueName: 'secret-value',
        }),
      );
    });

    test(
      'Serialize CustomResource with unknown ID emits empty ID in resource envelope',
      () async {
        final mockResource = MockCustomResource();
        when(mockResource.getResourceType()).thenReturn('aws:s3/bucket:Bucket');
        when(mockResource.getResourceName()).thenReturn('my-bucket');
        when(mockResource.urn).thenReturn(
          Output.create(
            'urn:pulumi:stack::project::aws:s3/bucket:Bucket::my-bucket',
          ),
        );
        when(mockResource.id).thenReturn(
          Output<String?>(
            Future.value(
              const OutputData<String?>(
                value: null,
                isKnown: false,
                isSecret: false,
                resources: {},
              ),
            ),
          ),
        );

        final result = await serializer.serializeAsync(
          'test',
          mockResource,
          true,
        );
        expect(
          result,
          equals({
            Constants.specialSigKey: Constants.specialResourceSig,
            Constants.resourceUrnName:
                'urn:pulumi:stack::project::aws:s3/bucket:Bucket::my-bucket',
            Constants.resourceIdName: '',
          }),
        );
      },
    );

    test('Serialize transitive dependency URNs', () async {
      final parent = DependencyResource(
        'urn:pulumi:stack::project::test:index:Parent::parent',
      );
      final child = DependencyResource(
        'urn:pulumi:stack::project::test:index:Child::child',
      );
      final grandchild = DependencyResource(
        'urn:pulumi:stack::project::test:index:GrandChild::grandchild',
      );

      parent.childResources.add(child);
      child.childResources.add(grandchild);

      final urns = await Serializer.getAllTransitivelyReferencedResourceUrns({
        parent,
      });

      expect(
        urns,
        containsAll(<String>{
          'urn:pulumi:stack::project::test:index:Parent::parent',
          'urn:pulumi:stack::project::test:index:Child::child',
          'urn:pulumi:stack::project::test:index:GrandChild::grandchild',
        }),
      );
    });

    test('Serialize transitive dependency URNs handles cycles', () async {
      final a = DependencyResource(
        'urn:pulumi:stack::project::test:index:A::a',
      );
      final b = DependencyResource(
        'urn:pulumi:stack::project::test:index:B::b',
      );

      a.childResources.add(b);
      b.childResources.add(a);

      final urns = await Serializer.getAllTransitivelyReferencedResourceUrns({
        a,
      });
      expect(
        urns,
        equals(<String>{
          'urn:pulumi:stack::project::test:index:A::a',
          'urn:pulumi:stack::project::test:index:B::b',
        }),
      );
    });

    test(
      'Serialize transitive dependency URNs waits for descendant URNs',
      () async {
        final root = _DeferredDependencyResource('test:index:Root', 'root');
        final child = _DeferredDependencyResource('test:index:Child', 'child');
        final grandchild = _DeferredDependencyResource(
          'test:index:GrandChild',
          'grandchild',
        );

        root.childResources.add(child);
        child.childResources.add(grandchild);

        final urnsFuture = Serializer.getAllTransitivelyReferencedResourceUrns({
          root,
        });

        Future<void>.delayed(
          const Duration(milliseconds: 1),
          () =>
              root.resolve('urn:pulumi:stack::project::test:index:Root::root'),
        );
        Future<void>.delayed(
          const Duration(milliseconds: 20),
          () => child.resolve(
            'urn:pulumi:stack::project::test:index:Child::child',
          ),
        );
        Future<void>.delayed(
          const Duration(milliseconds: 40),
          () => grandchild.resolve(
            'urn:pulumi:stack::project::test:index:GrandChild::grandchild',
          ),
        );

        final urns = await urnsFuture.timeout(const Duration(seconds: 1));
        expect(
          urns,
          equals(<String>{
            'urn:pulumi:stack::project::test:index:Root::root',
            'urn:pulumi:stack::project::test:index:Child::child',
            'urn:pulumi:stack::project::test:index:GrandChild::grandchild',
          }),
        );
      },
    );
  });

  group('Deserializer Tests', () {
    test('Deserialize primitive values', () {
      expect(
        Deserializer.deserialize(
          Value()..nullValue = NullValue.NULL_VALUE,
        ).value,
        isNull,
      );
      expect(Deserializer.deserialize(Value()..boolValue = true).value, isTrue);
      expect(
        Deserializer.deserialize(Value()..numberValue = 42).value,
        equals(42),
      );
      expect(
        Deserializer.deserialize(Value()..stringValue = 'hello').value,
        equals('hello'),
      );
    });

    test('Deserialize Asset', () {
      var value = Value()
        ..structValue = (Struct()
          ..fields[Constants.specialSigKey] = (Value()
            ..stringValue = Constants.specialAssetSig)
          ..fields[Constants.assetOrArchivePathName] = (Value()
            ..stringValue = 'path/to/file.txt'));
      var result = Deserializer.deserialize(value).value;
      expect(result, isA<FileAsset>());
      expect((result as FileAsset).path, equals('path/to/file.txt'));
    });

    test('Deserialize Archive', () {
      var value = Value()
        ..structValue = (Struct()
          ..fields[Constants.specialSigKey] = (Value()
            ..stringValue = Constants.specialArchiveSig)
          ..fields[Constants.assetOrArchivePathName] = (Value()
            ..stringValue = 'path/to/archive.zip'));
      var result = Deserializer.deserialize(value).value;
      expect(result, isA<FileArchive>());
      expect((result as FileArchive).path, equals('path/to/archive.zip'));
    });

    test('Deserialize Resource', () {
      var value = Value()
        ..structValue = (Struct()
          ..fields[Constants.specialSigKey] = (Value()
            ..stringValue = Constants.specialResourceSig)
          ..fields[Constants.resourceUrnName] = (Value()
            ..stringValue =
                'urn:pulumi:stack::project::aws:s3/bucket:Bucket::my-bucket')
          ..fields[Constants.resourceIdName] = (Value()
            ..stringValue = 'my-bucket-id'));

      var result = Deserializer.deserialize(value).value;

      expect(result, isA<DependencyResource>());
      var resource = result as DependencyResource;
      expect(resource.getResourceType(), equals('aws:s3/bucket:Bucket'));
      expect(
        resource.urn.getData(),
        completion(
          predicate(
            (OutputData<String> data) =>
                data.value ==
                'urn:pulumi:stack::project::aws:s3/bucket:Bucket::my-bucket',
          ),
        ),
      );
    });

    test('Deserialize Resource missing URN throws', () {
      final value = Value()
        ..structValue = (Struct()
          ..fields[Constants.specialSigKey] = (Value()
            ..stringValue = Constants.specialResourceSig));
      expect(() => Deserializer.deserialize(value), throwsException);
    });

    test('Deserialize Secret', () {
      var value = Value()
        ..structValue = (Struct()
          ..fields[Constants.specialSigKey] = (Value()
            ..stringValue = Constants.specialSecretSig)
          ..fields[Constants.valueName] = (Value()
            ..stringValue = 'secret-value'));
      var result = Deserializer.deserialize(value);
      expect(result.isSecret, isTrue);
      expect(result.value, equals('secret-value'));
    });

    test('Deserialize invalid secret shape throws', () {
      final value = Value()
        ..structValue = (Struct()
          ..fields[Constants.specialSigKey] = (Value()
            ..stringValue = Constants.specialSecretSig));
      expect(() => Deserializer.deserialize(value), throwsException);
    });

    test('Deserialize unknown special signature throws', () {
      final value = Value()
        ..structValue = (Struct()
          ..fields[Constants.specialSigKey] = (Value()
            ..stringValue = 'unknown-signature')
          ..fields['value'] = (Value()..stringValue = 'payload'));
      expect(() => Deserializer.deserialize(value), throwsException);
    });

    test('Deserialize Unknown', () {
      var value = Value()..stringValue = Constants.unknownValue;
      var result = Deserializer.deserialize(value);
      expect(result.isKnown, isFalse);
    });

    test('Deserialize all unknown sentinels as unknown', () {
      final sentinels = [
        Constants.unknownValue,
        Constants.unknownBoolValue,
        Constants.unknownNumberValue,
        Constants.unknownArrayValue,
        Constants.unknownObjectValue,
      ];

      for (final sentinel in sentinels) {
        final value = Value()..stringValue = sentinel;
        final result = Deserializer.deserialize(value);
        expect(result.isKnown, isFalse);
        expect(result.value, isNull);
      }
    });

    test('Deserialize ProviderResource reference', () async {
      final value = Value()
        ..structValue = (Struct()
          ..fields[Constants.specialSigKey] = (Value()
            ..stringValue = Constants.specialResourceSig)
          ..fields[Constants.resourceUrnName] = (Value()
            ..stringValue =
                'urn:pulumi:stack::project::pulumi:providers:aws::default')
          ..fields[Constants.resourceIdName] = (Value()
            ..stringValue = 'provider-id'));

      final result = Deserializer.deserialize(value).value;
      expect(result, isA<ProviderResource>());
      final provider = result as ProviderResource;
      expect(provider.package, equals('aws'));
      expect(await provider.id.getValue(), equals('provider-id'));
    });

    test(
      'Deserialize ProviderResource unknown ID sentinel becomes unknown ID',
      () async {
        final value = Value()
          ..structValue = (Struct()
            ..fields[Constants.specialSigKey] = (Value()
              ..stringValue = Constants.specialResourceSig)
            ..fields[Constants.resourceUrnName] = (Value()
              ..stringValue =
                  'urn:pulumi:stack::project::pulumi:providers:aws::default')
            ..fields[Constants.resourceIdName] = (Value()
              ..stringValue = Constants.unknownValue));

        final result = Deserializer.deserialize(value).value;
        expect(result, isA<ProviderResource>());
        final provider = result as ProviderResource;
        final idData = await provider.id.getData();
        expect(idData.isKnown, isFalse);
        expect(idData.value, isNull);
      },
    );

    test(
      'Deserialize OutputValue map with nested ProviderResource reference',
      () async {
        const providerUrn =
            'urn:pulumi:stack::project::pulumi:providers:aws::default';
        const depUrn = 'urn:pulumi:stack::project::test:index:Resource::dep';

        final providerRef = Value()
          ..structValue = (Struct()
            ..fields[Constants.specialSigKey] = (Value()
              ..stringValue = Constants.specialResourceSig)
            ..fields[Constants.resourceUrnName] = (Value()
              ..stringValue = providerUrn)
            ..fields[Constants.resourceIdName] = (Value()
              ..stringValue = 'provider-id'));

        final outputEnvelope = Value()
          ..structValue = (Struct()
            ..fields[Constants.specialSigKey] = (Value()
              ..stringValue = Constants.specialOutputValueSig)
            ..fields[Constants.valueName] = (Value()
              ..structValue = (Struct()
                ..fields['provider'] = providerRef
                ..fields['name'] = (Value()..stringValue = 'example')))
            ..fields[Constants.dependenciesName] = (Value()
              ..listValue = (ListValue()
                ..values.add(Value()..stringValue = depUrn))));

        final result = Deserializer.deserialize(outputEnvelope);
        expect(result.value, isA<Output>());
        final output = result.value as Output<dynamic>;
        final data = await output.getData();

        expect(data.isKnown, isTrue);
        expect(data.isSecret, isFalse);
        final value = data.value as Map<String, dynamic>;
        expect(value['name'], equals('example'));
        expect(value['provider'], isA<ProviderResource>());

        final provider = value['provider'] as ProviderResource;
        expect(provider.package, equals('aws'));
        expect(await provider.id.getValue(), equals('provider-id'));

        final depUrns = <String>{};
        for (final resource in data.resources) {
          if (resource is DependencyResource) {
            depUrns.add(await resource.urn.getValue());
          }
        }
        expect(depUrns, equals(<String>{depUrn}));
      },
    );

    test(
      'Deserialize OutputValue list with ProviderResource unknown ID',
      () async {
        const providerUrn =
            'urn:pulumi:stack::project::pulumi:providers:aws::default';
        const depUrn =
            'urn:pulumi:stack::project::test:index:Resource::list-output-dep';

        final providerRef = Value()
          ..structValue = (Struct()
            ..fields[Constants.specialSigKey] = (Value()
              ..stringValue = Constants.specialResourceSig)
            ..fields[Constants.resourceUrnName] = (Value()
              ..stringValue = providerUrn)
            ..fields[Constants.resourceIdName] = (Value()
              ..stringValue = Constants.unknownValue));

        final outputEnvelope = Value()
          ..structValue = (Struct()
            ..fields[Constants.specialSigKey] = (Value()
              ..stringValue = Constants.specialOutputValueSig)
            ..fields[Constants.valueName] = (Value()
              ..listValue = (ListValue()
                ..values.add(providerRef)
                ..values.add(Value()..stringValue = 'tail')))
            ..fields[Constants.dependenciesName] = (Value()
              ..listValue = (ListValue()
                ..values.add(Value()..stringValue = depUrn))));

        final result = Deserializer.deserialize(outputEnvelope);
        expect(result.value, isA<Output>());
        final output = result.value as Output<dynamic>;
        final data = await output.getData();

        expect(data.isKnown, isTrue);
        final values = data.value as List<dynamic>;
        expect(values, hasLength(2));
        expect(values[0], isA<ProviderResource>());
        expect(values[1], equals('tail'));

        final provider = values[0] as ProviderResource;
        expect(provider.package, equals('aws'));
        final idData = await provider.id.getData();
        expect(idData.isKnown, isFalse);
        expect(idData.value, isNull);

        final depUrns = <String>{};
        for (final resource in data.resources) {
          if (resource is DependencyResource) {
            depUrns.add(await resource.urn.getValue());
          }
        }
        expect(depUrns, equals(<String>{depUrn}));
      },
    );

    test(
      'Deserialize nested OutputValue wrappers with ProviderResource merges dependencies',
      () async {
        const providerUrn =
            'urn:pulumi:stack::project::pulumi:providers:aws::default';
        const outerDepUrn =
            'urn:pulumi:stack::project::test:index:Resource::outer-provider-dep';
        const innerDepUrn =
            'urn:pulumi:stack::project::test:index:Resource::inner-provider-dep';

        final providerRef = Value()
          ..structValue = (Struct()
            ..fields[Constants.specialSigKey] = (Value()
              ..stringValue = Constants.specialResourceSig)
            ..fields[Constants.resourceUrnName] = (Value()
              ..stringValue = providerUrn)
            ..fields[Constants.resourceIdName] = (Value()
              ..stringValue = 'provider-id'));

        final innerOutput = Value()
          ..structValue = (Struct()
            ..fields[Constants.specialSigKey] = (Value()
              ..stringValue = Constants.specialOutputValueSig)
            ..fields[Constants.valueName] = (Value()
              ..structValue = (Struct()
                ..fields['provider'] = providerRef
                ..fields['name'] = (Value()..stringValue = 'nested')))
            ..fields[Constants.dependenciesName] = (Value()
              ..listValue = (ListValue()
                ..values.add(Value()..stringValue = innerDepUrn))));

        final outerOutput = Value()
          ..structValue = (Struct()
            ..fields[Constants.specialSigKey] = (Value()
              ..stringValue = Constants.specialOutputValueSig)
            ..fields[Constants.valueName] = innerOutput
            ..fields[Constants.dependenciesName] = (Value()
              ..listValue = (ListValue()
                ..values.add(Value()..stringValue = outerDepUrn))));

        final result = Deserializer.deserialize(outerOutput);
        expect(result.value, isA<Output>());
        final output = result.value as Output<dynamic>;
        final data = await output.getData();

        expect(data.isKnown, isTrue);
        expect(data.isSecret, isFalse);
        final value = data.value as Map<String, dynamic>;
        expect(value['name'], equals('nested'));
        expect(value['provider'], isA<ProviderResource>());

        final provider = value['provider'] as ProviderResource;
        expect(provider.package, equals('aws'));
        expect(await provider.id.getValue(), equals('provider-id'));

        final depUrns = <String>{};
        for (final resource in data.resources) {
          if (resource is DependencyResource) {
            depUrns.add(await resource.urn.getValue());
          }
        }
        expect(depUrns, equals(<String>{outerDepUrn, innerDepUrn}));
      },
    );

    test(
      'Deserialize mixed provider references in list treats missing and unknown IDs as unknown',
      () async {
        const providerUrn =
            'urn:pulumi:stack::project::pulumi:providers:aws::default';

        final providerMissingId = Value()
          ..structValue = (Struct()
            ..fields[Constants.specialSigKey] = (Value()
              ..stringValue = Constants.specialResourceSig)
            ..fields[Constants.resourceUrnName] = (Value()
              ..stringValue = providerUrn));

        final providerUnknownId = Value()
          ..structValue = (Struct()
            ..fields[Constants.specialSigKey] = (Value()
              ..stringValue = Constants.specialResourceSig)
            ..fields[Constants.resourceUrnName] = (Value()
              ..stringValue = providerUrn)
            ..fields[Constants.resourceIdName] = (Value()
              ..stringValue = Constants.unknownValue));

        final providerKnownId = Value()
          ..structValue = (Struct()
            ..fields[Constants.specialSigKey] = (Value()
              ..stringValue = Constants.specialResourceSig)
            ..fields[Constants.resourceUrnName] = (Value()
              ..stringValue = providerUrn)
            ..fields[Constants.resourceIdName] = (Value()
              ..stringValue = 'provider-id'));

        final input = Value()
          ..structValue = (Struct()
            ..fields['providers'] = (Value()
              ..listValue = (ListValue()
                ..values.add(providerMissingId)
                ..values.add(providerUnknownId)
                ..values.add(providerKnownId))));

        final result = Deserializer.deserialize<Map<String, dynamic>>(input);
        final providers = result.value!['providers'] as List<dynamic>;
        expect(providers, hasLength(3));

        for (final providerValue in providers) {
          expect(providerValue, isA<ProviderResource>());
        }

        final missing = providers[0] as ProviderResource;
        final unknown = providers[1] as ProviderResource;
        final known = providers[2] as ProviderResource;

        final missingIdData = await missing.id.getData();
        expect(missingIdData.isKnown, isFalse);
        expect(missingIdData.value, isNull);

        final unknownIdData = await unknown.id.getData();
        expect(unknownIdData.isKnown, isFalse);
        expect(unknownIdData.value, isNull);

        final knownIdData = await known.id.getData();
        expect(knownIdData.isKnown, isTrue);
        expect(knownIdData.value, equals('provider-id'));
      },
    );

    test(
      'Deserialize OutputValue map with provider references keeps missing and unknown IDs unknown',
      () async {
        const providerUrn =
            'urn:pulumi:stack::project::pulumi:providers:aws::default';
        const depUrn =
            'urn:pulumi:stack::project::test:index:Resource::provider-map-dep';

        final providerMissingId = Value()
          ..structValue = (Struct()
            ..fields[Constants.specialSigKey] = (Value()
              ..stringValue = Constants.specialResourceSig)
            ..fields[Constants.resourceUrnName] = (Value()
              ..stringValue = providerUrn));

        final providerUnknownId = Value()
          ..structValue = (Struct()
            ..fields[Constants.specialSigKey] = (Value()
              ..stringValue = Constants.specialResourceSig)
            ..fields[Constants.resourceUrnName] = (Value()
              ..stringValue = providerUrn)
            ..fields[Constants.resourceIdName] = (Value()
              ..stringValue = Constants.unknownValue));

        final outputEnvelope = Value()
          ..structValue = (Struct()
            ..fields[Constants.specialSigKey] = (Value()
              ..stringValue = Constants.specialOutputValueSig)
            ..fields[Constants.valueName] = (Value()
              ..structValue = (Struct()
                ..fields['missing'] = providerMissingId
                ..fields['unknown'] = providerUnknownId))
            ..fields[Constants.dependenciesName] = (Value()
              ..listValue = (ListValue()
                ..values.add(Value()..stringValue = depUrn))));

        final result = Deserializer.deserialize(outputEnvelope);
        expect(result.value, isA<Output>());
        final output = result.value as Output<dynamic>;
        final data = await output.getData();

        final value = data.value as Map<String, dynamic>;
        final missing = value['missing'] as ProviderResource;
        final unknown = value['unknown'] as ProviderResource;

        final missingIdData = await missing.id.getData();
        expect(missingIdData.isKnown, isFalse);
        expect(missingIdData.value, isNull);

        final unknownIdData = await unknown.id.getData();
        expect(unknownIdData.isKnown, isFalse);
        expect(unknownIdData.value, isNull);

        final depUrns = <String>{};
        for (final resource in data.resources) {
          if (resource is DependencyResource) {
            depUrns.add(await resource.urn.getValue());
          }
        }
        expect(depUrns, equals(<String>{depUrn}));
      },
    );

    test(
      'Deserialize map mixing ProviderResource and unknown OutputValue dependencies',
      () async {
        const providerUrn =
            'urn:pulumi:stack::project::pulumi:providers:aws::default';
        const depUrn =
            'urn:pulumi:stack::project::test:index:Resource::mixed-map-dep';

        final providerRef = Value()
          ..structValue = (Struct()
            ..fields[Constants.specialSigKey] = (Value()
              ..stringValue = Constants.specialResourceSig)
            ..fields[Constants.resourceUrnName] = (Value()
              ..stringValue = providerUrn)
            ..fields[Constants.resourceIdName] = (Value()
              ..stringValue = 'provider-id'));

        final unknownOutput = Value()
          ..structValue = (Struct()
            ..fields[Constants.specialSigKey] = (Value()
              ..stringValue = Constants.specialOutputValueSig)
            ..fields[Constants.dependenciesName] = (Value()
              ..listValue = (ListValue()
                ..values.add(Value()..stringValue = depUrn))));

        final input = Value()
          ..structValue = (Struct()
            ..fields['provider'] = providerRef
            ..fields['unknown'] = unknownOutput);

        final result = Deserializer.deserialize<Map<String, dynamic>>(input);
        expect(result.isKnown, isTrue);
        expect(result.resources, isEmpty);

        final value = result.value!;
        expect(value['provider'], isA<ProviderResource>());
        final provider = value['provider'] as ProviderResource;
        expect(provider.package, equals('aws'));
        expect(await provider.id.getValue(), equals('provider-id'));

        expect(value['unknown'], isA<Output>());
        final unknown = value['unknown'] as Output<dynamic>;
        final unknownData = await unknown.getData();
        expect(unknownData.isKnown, isFalse);
        expect(unknownData.value, isNull);

        final unknownDeps = <String>{};
        for (final resource in unknownData.resources) {
          if (resource is DependencyResource) {
            unknownDeps.add(await resource.urn.getValue());
          }
        }
        expect(unknownDeps, equals(<String>{depUrn}));
      },
    );

    test(
      'Deserialize OutputValue wrapper without value is unknown output',
      () async {
        final outputEnvelope = Value()
          ..structValue = (Struct()
            ..fields[Constants.specialSigKey] = (Value()
              ..stringValue = Constants.specialOutputValueSig)
            ..fields[Constants.secretName] = (Value()..boolValue = true));

        final result = Deserializer.deserialize(outputEnvelope);
        expect(result.value, isA<Output>());
        final output = result.value as Output<dynamic>;
        final data = await output.getData();
        expect(data.isKnown, isFalse);
        expect(data.isSecret, isTrue);
        expect(data.value, isNull);
      },
    );

    test(
      'Deserialize unknown OutputValue wrapper preserves dependencies',
      () async {
        final dep = 'urn:pulumi:stack::project::test:index:Resource::dep';
        final outputEnvelope = Value()
          ..structValue = (Struct()
            ..fields[Constants.specialSigKey] = (Value()
              ..stringValue = Constants.specialOutputValueSig)
            ..fields[Constants.dependenciesName] = (Value()
              ..listValue = (ListValue()
                ..values.add(Value()..stringValue = dep))));

        final result = Deserializer.deserialize(outputEnvelope);
        expect(result.value, isA<Output>());
        final output = result.value as Output<dynamic>;
        final data = await output.getData();

        expect(data.isKnown, isFalse);
        expect(data.isSecret, isFalse);
        expect(data.value, isNull);

        final resourceUrns = <String>{};
        for (final resource in data.resources) {
          if (resource is DependencyResource) {
            resourceUrns.add(await resource.urn.getValue());
          }
        }
        expect(resourceUrns, equals(<String>{dep}));
      },
    );

    test('Deserialize OutputValue wrapper preserves metadata', () async {
      final outputEnvelope = Value()
        ..structValue = (Struct()
          ..fields[Constants.specialSigKey] = (Value()
            ..stringValue = Constants.specialOutputValueSig)
          ..fields[Constants.valueName] = (Value()..stringValue = 'wrapped')
          ..fields[Constants.secretName] = (Value()..boolValue = true)
          ..fields[Constants.dependenciesName] = (Value()
            ..listValue = (ListValue()
              ..values.add(
                Value()
                  ..stringValue =
                      'urn:pulumi:stack::project::test:index:Resource::dep',
              ))));

      final result = Deserializer.deserialize(outputEnvelope);
      expect(result.isKnown, isTrue);
      expect(result.value, isA<Output>());

      final output = result.value as Output<dynamic>;
      final data = await output.getData();
      expect(data.isKnown, isTrue);
      expect(data.isSecret, isTrue);
      expect(data.value, equals('wrapped'));
      expect(data.resources, hasLength(1));
      final resource = data.resources.single as DependencyResource;
      expect(
        resource.urn.getData(),
        completion(
          predicate(
            (OutputData<String> d) =>
                d.value ==
                'urn:pulumi:stack::project::test:index:Resource::dep',
          ),
        ),
      );
    });

    test('Deserialize list with nested OutputValue entry', () async {
      final nestedOutput = Value()
        ..structValue = (Struct()
          ..fields[Constants.specialSigKey] = (Value()
            ..stringValue = Constants.specialOutputValueSig)
          ..fields[Constants.valueName] = (Value()..stringValue = 'world'));

      final input = Value()
        ..listValue = (ListValue()
          ..values.add(Value()..stringValue = 'hello')
          ..values.add(nestedOutput));

      final result = Deserializer.deserialize(input).value as List<dynamic>;
      expect(result, hasLength(2));
      expect(result[0], equals('hello'));
      expect(result[1], isA<Output>());

      final nested = result[1] as Output<dynamic>;
      final nestedData = await nested.getData();
      expect(nestedData.isKnown, isTrue);
      expect(nestedData.isSecret, isFalse);
      expect(nestedData.value, equals('world'));
    });

    test('Deserialize list with unknown nested OutputValue entry', () async {
      final nestedUnknown = Value()
        ..structValue = (Struct()
          ..fields[Constants.specialSigKey] = (Value()
            ..stringValue = Constants.specialOutputValueSig));

      final input = Value()
        ..listValue = (ListValue()
          ..values.add(Value()..stringValue = 'hello')
          ..values.add(nestedUnknown));

      final result = Deserializer.deserialize(input).value as List<dynamic>;
      expect(result, hasLength(2));
      expect(result[0], equals('hello'));
      expect(result[1], isA<Output>());

      final nested = result[1] as Output<dynamic>;
      final nestedData = await nested.getData();
      expect(nestedData.isKnown, isFalse);
      expect(nestedData.isSecret, isFalse);
      expect(nestedData.value, isNull);
    });

    test(
      'Deserialize list with nested unknown secret OutputValue keeps metadata',
      () async {
        const depUrn =
            'urn:pulumi:stack::project::test:index:Resource::list-secret-dep';

        final nestedUnknownSecret = Value()
          ..structValue = (Struct()
            ..fields[Constants.specialSigKey] = (Value()
              ..stringValue = Constants.specialOutputValueSig)
            ..fields[Constants.secretName] = (Value()..boolValue = true)
            ..fields[Constants.dependenciesName] = (Value()
              ..listValue = (ListValue()
                ..values.add(Value()..stringValue = depUrn))));

        final input = Value()
          ..listValue = (ListValue()
            ..values.add(Value()..stringValue = 'hello')
            ..values.add(
              Value()
                ..structValue = (Struct()
                  ..fields['nested'] = nestedUnknownSecret),
            ));

        final result = Deserializer.deserialize<List<dynamic>>(input);
        expect(result.isKnown, isTrue);
        expect(result.isSecret, isFalse);

        final list = result.value!;
        final nestedMap = list[1] as Map<String, dynamic>;
        final nested = nestedMap['nested'] as Output<dynamic>;
        final nestedData = await nested.getData();

        expect(nestedData.isKnown, isFalse);
        expect(nestedData.isSecret, isTrue);
        expect(nestedData.value, isNull);

        final nestedDepUrns = <String>{};
        for (final resource in nestedData.resources) {
          if (resource is DependencyResource) {
            nestedDepUrns.add(await resource.urn.getValue());
          }
        }
        expect(nestedDepUrns, equals(<String>{depUrn}));
      },
    );

    test(
      'Deserialize map with list containing unknown secret OutputValue keeps metadata',
      () async {
        const depUrn =
            'urn:pulumi:stack::project::test:index:Resource::map-secret-dep';

        final nestedUnknownSecret = Value()
          ..structValue = (Struct()
            ..fields[Constants.specialSigKey] = (Value()
              ..stringValue = Constants.specialOutputValueSig)
            ..fields[Constants.secretName] = (Value()..boolValue = true)
            ..fields[Constants.dependenciesName] = (Value()
              ..listValue = (ListValue()
                ..values.add(Value()..stringValue = depUrn))));

        final input = Value()
          ..structValue = (Struct()
            ..fields['items'] = (Value()
              ..listValue = (ListValue()
                ..values.add(nestedUnknownSecret)
                ..values.add(Value()..stringValue = 'tail'))));

        final result = Deserializer.deserialize<Map<String, dynamic>>(input);
        expect(result.isKnown, isTrue);
        expect(result.isSecret, isFalse);

        final items = result.value!['items'] as List<dynamic>;
        final nested = items.first as Output<dynamic>;
        final nestedData = await nested.getData();
        expect(nestedData.isKnown, isFalse);
        expect(nestedData.isSecret, isTrue);
        expect(nestedData.value, isNull);

        final nestedDepUrns = <String>{};
        for (final resource in nestedData.resources) {
          if (resource is DependencyResource) {
            nestedDepUrns.add(await resource.urn.getValue());
          }
        }
        expect(nestedDepUrns, equals(<String>{depUrn}));
      },
    );

    test(
      'Deserialize list with unknown nested OutputValue keeps nested dependencies',
      () async {
        final dep = 'urn:pulumi:stack::project::test:index:Resource::list-dep';
        final nestedUnknown = Value()
          ..structValue = (Struct()
            ..fields[Constants.specialSigKey] = (Value()
              ..stringValue = Constants.specialOutputValueSig)
            ..fields[Constants.dependenciesName] = (Value()
              ..listValue = (ListValue()
                ..values.add(Value()..stringValue = dep))));

        final input = Value()
          ..listValue = (ListValue()
            ..values.add(Value()..stringValue = 'hello')
            ..values.add(nestedUnknown));

        final resultData = Deserializer.deserialize<List<dynamic>>(input);
        expect(resultData.resources, isEmpty);

        final result = resultData.value!;
        expect(result, hasLength(2));
        expect(result[1], isA<Output>());

        final nested = result[1] as Output<dynamic>;
        final nestedData = await nested.getData();
        expect(nestedData.isKnown, isFalse);

        final nestedResourceUrns = <String>{};
        for (final resource in nestedData.resources) {
          if (resource is DependencyResource) {
            nestedResourceUrns.add(await resource.urn.getValue());
          }
        }
        expect(nestedResourceUrns, equals(<String>{dep}));
      },
    );

    test('Deserialize map with nested OutputValue entry', () async {
      final nestedOutput = Value()
        ..structValue = (Struct()
          ..fields[Constants.specialSigKey] = (Value()
            ..stringValue = Constants.specialOutputValueSig)
          ..fields[Constants.valueName] = (Value()..stringValue = 'bar'));

      final input = Value()
        ..structValue = (Struct()
          ..fields['hello'] = (Value()..stringValue = 'world')
          ..fields['foo'] = nestedOutput);

      final result = Deserializer.deserialize<Map<String, dynamic>>(
        input,
      ).value!;
      expect(result['hello'], equals('world'));
      expect(result['foo'], isA<Output>());

      final nested = result['foo'] as Output<dynamic>;
      final nestedData = await nested.getData();
      expect(nestedData.isKnown, isTrue);
      expect(nestedData.isSecret, isFalse);
      expect(nestedData.value, equals('bar'));
    });

    test('Deserialize map with unknown nested OutputValue entry', () async {
      final nestedUnknown = Value()
        ..structValue = (Struct()
          ..fields[Constants.specialSigKey] = (Value()
            ..stringValue = Constants.specialOutputValueSig));

      final input = Value()
        ..structValue = (Struct()
          ..fields['hello'] = (Value()..stringValue = 'world')
          ..fields['foo'] = nestedUnknown);

      final result = Deserializer.deserialize<Map<String, dynamic>>(
        input,
      ).value!;
      expect(result['hello'], equals('world'));
      expect(result['foo'], isA<Output>());

      final nested = result['foo'] as Output<dynamic>;
      final nestedData = await nested.getData();
      expect(nestedData.isKnown, isFalse);
      expect(nestedData.isSecret, isFalse);
      expect(nestedData.value, isNull);
    });

    test(
      'Deserialize map with unknown nested OutputValue keeps nested dependencies',
      () async {
        final dep = 'urn:pulumi:stack::project::test:index:Resource::map-dep';
        final nestedUnknown = Value()
          ..structValue = (Struct()
            ..fields[Constants.specialSigKey] = (Value()
              ..stringValue = Constants.specialOutputValueSig)
            ..fields[Constants.dependenciesName] = (Value()
              ..listValue = (ListValue()
                ..values.add(Value()..stringValue = dep))));

        final input = Value()
          ..structValue = (Struct()
            ..fields['hello'] = (Value()..stringValue = 'world')
            ..fields['foo'] = nestedUnknown);

        final resultData = Deserializer.deserialize<Map<String, dynamic>>(
          input,
        );
        expect(resultData.resources, isEmpty);
        final result = resultData.value!;
        expect(result['foo'], isA<Output>());

        final nested = result['foo'] as Output<dynamic>;
        final nestedData = await nested.getData();
        expect(nestedData.isKnown, isFalse);

        final nestedResourceUrns = <String>{};
        for (final resource in nestedData.resources) {
          if (resource is DependencyResource) {
            nestedResourceUrns.add(await resource.urn.getValue());
          }
        }
        expect(nestedResourceUrns, equals(<String>{dep}));
      },
    );

    test(
      'Deserialize nested OutputValue wrappers flatten value and combine metadata',
      () async {
        final dep1 =
            'urn:pulumi:stack::project::test:index:Resource::outer-dep';
        final dep2 =
            'urn:pulumi:stack::project::test:index:Resource::inner-dep';

        final inner = Value()
          ..structValue = (Struct()
            ..fields[Constants.specialSigKey] = (Value()
              ..stringValue = Constants.specialOutputValueSig)
            ..fields[Constants.valueName] = (Value()..stringValue = 'value')
            ..fields[Constants.secretName] = (Value()..boolValue = true)
            ..fields[Constants.dependenciesName] = (Value()
              ..listValue = (ListValue()
                ..values.add(Value()..stringValue = dep2))));

        final outer = Value()
          ..structValue = (Struct()
            ..fields[Constants.specialSigKey] = (Value()
              ..stringValue = Constants.specialOutputValueSig)
            ..fields[Constants.valueName] = inner
            ..fields[Constants.dependenciesName] = (Value()
              ..listValue = (ListValue()
                ..values.add(Value()..stringValue = dep1))));

        final result = Deserializer.deserialize(outer);
        expect(result.value, isA<Output>());
        final output = result.value as Output<dynamic>;
        final outputData = await output.getData();

        expect(outputData.isKnown, isTrue);
        expect(outputData.isSecret, isTrue);
        expect(outputData.value, equals('value'));

        final resourceUrns = <String>{};
        for (final resource in outputData.resources) {
          if (resource is DependencyResource) {
            resourceUrns.add(await resource.urn.getValue());
          }
        }
        expect(resourceUrns, containsAll(<String>{dep1, dep2}));
      },
    );

    test(
      'Deserialize nested OutputValue wrappers keep unknown when inner value is unknown',
      () async {
        final innerUnknown = Value()
          ..structValue = (Struct()
            ..fields[Constants.specialSigKey] = (Value()
              ..stringValue = Constants.specialOutputValueSig));

        final outer = Value()
          ..structValue = (Struct()
            ..fields[Constants.specialSigKey] = (Value()
              ..stringValue = Constants.specialOutputValueSig)
            ..fields[Constants.valueName] = innerUnknown
            ..fields[Constants.secretName] = (Value()..boolValue = true));

        final result = Deserializer.deserialize(outer);
        expect(result.value, isA<Output>());
        final output = result.value as Output<dynamic>;
        final outputData = await output.getData();

        expect(outputData.isKnown, isFalse);
        expect(outputData.isSecret, isTrue);
        expect(outputData.value, isNull);
      },
    );

    test(
      'Deserialize nested unknown OutputValue wrappers merge dependencies',
      () async {
        final dep1 =
            'urn:pulumi:stack::project::test:index:Resource::outer-unknown-dep';
        final dep2 =
            'urn:pulumi:stack::project::test:index:Resource::inner-unknown-dep';

        final innerUnknown = Value()
          ..structValue = (Struct()
            ..fields[Constants.specialSigKey] = (Value()
              ..stringValue = Constants.specialOutputValueSig)
            ..fields[Constants.dependenciesName] = (Value()
              ..listValue = (ListValue()
                ..values.add(Value()..stringValue = dep2))));

        final outer = Value()
          ..structValue = (Struct()
            ..fields[Constants.specialSigKey] = (Value()
              ..stringValue = Constants.specialOutputValueSig)
            ..fields[Constants.valueName] = innerUnknown
            ..fields[Constants.dependenciesName] = (Value()
              ..listValue = (ListValue()
                ..values.add(Value()..stringValue = dep1))));

        final result = Deserializer.deserialize(outer);
        expect(result.value, isA<Output>());
        final output = result.value as Output<dynamic>;
        final outputData = await output.getData();

        expect(outputData.isKnown, isFalse);
        expect(outputData.value, isNull);

        final resourceUrns = <String>{};
        for (final resource in outputData.resources) {
          if (resource is DependencyResource) {
            resourceUrns.add(await resource.urn.getValue());
          }
        }
        expect(resourceUrns, containsAll(<String>{dep1, dep2}));
      },
    );

    test(
      'Deserialize map with nested resource and secret OutputValue preserves both',
      () async {
        const resourceUrn =
            'urn:pulumi:stack::project::test:index:Resource::ref';
        const depUrn = 'urn:pulumi:stack::project::test:index:Resource::dep';

        final resourceRef = Value()
          ..structValue = (Struct()
            ..fields[Constants.specialSigKey] = (Value()
              ..stringValue = Constants.specialResourceSig)
            ..fields[Constants.resourceUrnName] = (Value()
              ..stringValue = resourceUrn)
            ..fields[Constants.resourceIdName] = (Value()
              ..stringValue = 'ref-id'));

        final secretOutput = Value()
          ..structValue = (Struct()
            ..fields[Constants.specialSigKey] = (Value()
              ..stringValue = Constants.specialOutputValueSig)
            ..fields[Constants.valueName] = (Value()..stringValue = 'shh')
            ..fields[Constants.secretName] = (Value()..boolValue = true)
            ..fields[Constants.dependenciesName] = (Value()
              ..listValue = (ListValue()
                ..values.add(Value()..stringValue = depUrn))));

        final input = Value()
          ..structValue = (Struct()
            ..fields['foo'] = resourceRef
            ..fields['bar'] = secretOutput);

        final resultData = Deserializer.deserialize<Map<String, dynamic>>(
          input,
        );
        expect(resultData.isKnown, isTrue);
        expect(resultData.isSecret, isFalse);
        expect(resultData.resources, isEmpty);

        final result = resultData.value!;
        expect(result['foo'], isA<DependencyResource>());
        final foo = result['foo'] as DependencyResource;
        expect(await foo.urn.getValue(), equals(resourceUrn));

        expect(result['bar'], isA<Output>());
        final bar = result['bar'] as Output<dynamic>;
        final barData = await bar.getData();
        expect(barData.isKnown, isTrue);
        expect(barData.isSecret, isTrue);
        expect(barData.value, equals('shh'));

        final barDeps = <String>{};
        for (final resource in barData.resources) {
          if (resource is DependencyResource) {
            barDeps.add(await resource.urn.getValue());
          }
        }
        expect(barDeps, equals(<String>{depUrn}));
      },
    );

    test(
      'Deserialize promotes nested secret values to top-level secret state',
      () {
        Value secret(String v) {
          return Value()
            ..structValue = (Struct()
              ..fields[Constants.specialSigKey] = (Value()
                ..stringValue = Constants.specialSecretSig)
              ..fields[Constants.valueName] = (Value()..stringValue = v));
        }

        final props = Value()
          ..structValue = (Struct()
            ..fields['regular'] = (Value()..stringValue = 'a normal value')
            ..fields['list'] = (Value()
              ..listValue = (ListValue()
                ..values.add(Value()..stringValue = 'a normal value')
                ..values.add(Value()..stringValue = 'another value')
                ..values.add(secret('a secret value'))))
            ..fields['map'] = (Value()
              ..structValue = (Struct()
                ..fields['regular'] = (Value()..stringValue = 'a normal value')
                ..fields['secret'] = secret('a secret value')))
            ..fields['mapWithList'] = (Value()
              ..structValue = (Struct()
                ..fields['regular'] = (Value()..stringValue = 'a normal value')
                ..fields['list'] = (Value()
                  ..listValue = (ListValue()
                    ..values.add(Value()..stringValue = 'a normal value')
                    ..values.add(secret('a secret value'))))))
            ..fields['listWithMap'] = (Value()
              ..listValue = (ListValue()
                ..values.add(
                  Value()
                    ..structValue = (Struct()
                      ..fields['regular'] = (Value()
                        ..stringValue = 'a normal value')
                      ..fields['secret'] = secret('a secret value')),
                ))));

        final result = Deserializer.deserialize<Map<String, dynamic>>(props);

        expect(result.isKnown, isTrue);
        expect(result.isSecret, isTrue);

        final value = result.value!;
        expect(value['regular'], equals('a normal value'));

        final list = value['list'] as List<dynamic>;
        expect(
          list,
          equals(['a normal value', 'another value', 'a secret value']),
        );

        final map = value['map'] as Map<String, dynamic>;
        expect(map['regular'], equals('a normal value'));
        expect(map['secret'], equals('a secret value'));

        final mapWithList = value['mapWithList'] as Map<String, dynamic>;
        expect(mapWithList['regular'], equals('a normal value'));
        expect(
          mapWithList['list'] as List<dynamic>,
          equals(['a normal value', 'a secret value']),
        );

        final listWithMap = value['listWithMap'] as List<dynamic>;
        final first = listWithMap.first as Map<String, dynamic>;
        expect(first['regular'], equals('a normal value'));
        expect(first['secret'], equals('a secret value'));
      },
    );

    test('Deserialize map skips internal fields', () {
      final value = Value()
        ..structValue = (Struct()
          ..fields['foo'] = (Value()..stringValue = 'bar')
          ..fields['__default'] = (Value()..stringValue = 'buzz'));

      final result = Deserializer.deserialize<Map<String, dynamic>>(value);
      expect(result.isKnown, isTrue);
      expect(result.value, containsPair('foo', 'bar'));
      expect(result.value, isNot(contains('__default')));
    });

    test('Deserialize invalid asset shape throws', () {
      final value = Value()
        ..structValue = (Struct()
          ..fields[Constants.specialSigKey] = (Value()
            ..stringValue = Constants.specialAssetSig));
      expect(() => Deserializer.deserialize(value), throwsException);
    });

    test('Deserialize invalid archive shape throws', () {
      final value = Value()
        ..structValue = (Struct()
          ..fields[Constants.specialSigKey] = (Value()
            ..stringValue = Constants.specialArchiveSig));
      expect(() => Deserializer.deserialize(value), throwsException);
    });
  });
}
