import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_google_native/storage.dart'
    as pulumi_google_native_storage;

class GoogleNativeStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GoogleNativeStack() {
    final config = pulumi.Config();
    final project0 = config.require('project');
    final bucketName = config.require('bucketName');
    final bucket = pulumi_google_native_storage.Bucket(
      'bucket',
      args: pulumi_google_native_storage.BucketArgs(
        name: pulumi.Input.asInput(bucketName),
        project: pulumi.Input.asInput(project0),
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
  await pulumi.Deployment.runOrThrow(() => GoogleNativeStack());
}
