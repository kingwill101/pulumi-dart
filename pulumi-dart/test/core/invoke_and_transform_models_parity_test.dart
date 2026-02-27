import 'package:mockito/mockito.dart';
import 'package:pulumi/src/input.dart';
import 'package:pulumi/src/invoke.dart';
import 'package:pulumi/src/resource/provider_resource.dart';
import 'package:pulumi/src/resource/resource_options.dart';
import 'package:pulumi/src/resource/resource_transformation.dart';
import 'package:test/test.dart';

import '../mocks/mocks.mocks.dart';

void main() {
  group('invoke and transform model parity', () {
    test('toDeploymentInvokeOptions returns null when options are null', () {
      expect(toDeploymentInvokeOptions(null), isNull);
    });

    test(
      'toDeploymentInvokeOptions maps parent/provider/version/plugin URL',
      () async {
        final parent = MockResource();
        final provider = ProviderResource.reference(
          'aws',
          'urn:pulumi:stack::project::pulumi:providers:aws::default_1_0_0',
          id: 'provider-id',
        );
        final options = InvokeOptions(
          parent: parent,
          provider: provider,
          version: '1.2.3',
          pluginDownloadURL: 'https://example.com/plugin',
          async: false,
        );

        final converted = toDeploymentInvokeOptions(options);
        expect(converted, isNotNull);
        expect(identical(converted!.parent, parent), isTrue);
        expect(identical(converted.provider, provider), isTrue);
        expect(converted.version, '1.2.3');
        expect(converted.pluginDownloadURL, 'https://example.com/plugin');
      },
    );

    test('Invoke transform args and result keep provided references', () {
      final opts = InvokeOptions(version: '9.9.9');
      final args = InvokeTransformArgs(
        token: 'aws:s3/getBucket:getBucket',
        args: {'name': Input.fromValue('bucket')},
        opts: opts,
      );

      expect(args.token, 'aws:s3/getBucket:getBucket');
      expect(args.args['name'], isA<Input<dynamic>>());
      expect(identical(args.opts, opts), isTrue);

      final replacement = InvokeTransformResult(
        args: {'name': Input.fromValue('replacement')},
        opts: InvokeOptions(version: '10.0.0'),
      );
      expect(replacement.args.keys, contains('name'));
      expect(replacement.opts.version, '10.0.0');
    });

    test('resource transform model constructors preserve values', () {
      final resource = MockResource();
      final opts = ResourceOptions(
        customTimeouts: CustomTimeouts(create: '5m'),
      );
      final args = ResourceTransformationArgs(resource, {
        'name': Input.fromValue('value'),
      }, opts);
      final result = ResourceTransformationResult({
        'name': Input.fromValue('other'),
      }, opts);

      expect(identical(args.resource, resource), isTrue);
      expect(args.args.keys, contains('name'));
      expect(identical(args.options, opts), isTrue);
      expect(result.args.keys, contains('name'));
      expect(identical(result.options, opts), isTrue);
    });

    test('CancellationToken flips once and future completes', () async {
      final token = CancellationToken();

      expect(token.isCancellationRequested, isFalse);
      expect(token.cancellationRequested, isA<Future<void>>());

      token.cancel();
      await token.cancellationRequested;
      expect(token.isCancellationRequested, isTrue);

      token.cancel();
      expect(token.isCancellationRequested, isTrue);
    });
  });
}
