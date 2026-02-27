import 'package:pulumi/src/deployment/models.dart' as deployment_models;
import 'package:test/test.dart';

void main() {
  group('deployment models parity', () {
    test('register package proto includes required name/version', () {
      final request = deployment_models.RegisterPackageRequest(
        name: 'pulumi-random',
        version: '4.19.1',
      );

      final proto = request.toProto();
      expect(proto.name, 'pulumi-random');
      expect(proto.version, '4.19.1');
      expect(proto.downloadUrl, isEmpty);
      expect(proto.checksums, isEmpty);
      expect(proto.hasParameterization(), isFalse);
    });

    test('register package proto forwards optional download/checksums', () {
      final request = deployment_models.RegisterPackageRequest(
        name: 'pulumi-aws',
        version: '6.0.0',
        downloadUrl: 'https://example.test/plugins/aws.tgz',
        checksums: {
          'sha256': [1, 2, 3],
        },
      );

      final proto = request.toProto();
      expect(proto.downloadUrl, 'https://example.test/plugins/aws.tgz');
      expect(proto.checksums.containsKey('sha256'), isTrue);
      expect(proto.checksums['sha256'], orderedEquals([1, 2, 3]));
    });

    test('register package proto maps parameterization values', () {
      final request = deployment_models.RegisterPackageRequest(
        name: 'pulumi-pkg',
        version: '1.2.3',
        parameterization: deployment_models.Parameterization(
          name: 'pkg',
          version: '2.0.0',
          value: [9, 8, 7],
        ),
      );

      final proto = request.toProto();
      expect(proto.hasParameterization(), isTrue);
      expect(proto.parameterization.name, 'pkg');
      expect(proto.parameterization.version, '2.0.0');
      expect(proto.parameterization.value, orderedEquals([9, 8, 7]));
    });

    test('register package proto defaults null parameterization fields', () {
      final request = deployment_models.RegisterPackageRequest(
        name: 'pulumi-pkg',
        version: '1.2.3',
        parameterization: deployment_models.Parameterization(),
      );

      final proto = request.toProto();
      expect(proto.hasParameterization(), isTrue);
      expect(proto.parameterization.name, isEmpty);
      expect(proto.parameterization.version, isEmpty);
      expect(proto.parameterization.value, isEmpty);
    });
  });
}
