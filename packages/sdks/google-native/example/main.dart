import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_google_native/storage.dart'
    as pulumi_google_native_storage;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final bucket = pulumi_google_native_storage.Bucket(
      'bucket',
      args: pulumi_google_native_storage.BucketArgs(
        location: pulumi.Input.asInput('US'),
      ),
    );

    _outputProperties = [
      pulumi.OutputProperty(
        'bucketName',
        pulumi.output(bucket.name).apply<Object?>((value) => value),
      ),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
