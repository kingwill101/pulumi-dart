import 'package:mockito/mockito.dart';
import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/constants.dart';
import 'package:pulumi/src/deserializer.dart';
import 'package:pulumi/src/resource/custom_resource.dart';
import 'package:pulumi/src/resource/dependency_resource.dart';
import 'package:pulumi/src/serializer.dart';
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'package:test/test.dart';

import 'mocks/mocks.mocks.dart';

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

    test('Serialize Output', () async {
      var output = Output.create('test-value');
      var result = await serializer.serializeAsync('test', output, false);
      expect(result, equals('test-value'));
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

    test('Deserialize Unknown', () {
      var value = Value()..stringValue = Constants.unknownValue;
      var result = Deserializer.deserialize(value);
      expect(result.isKnown, isFalse);
    });
  });
}
