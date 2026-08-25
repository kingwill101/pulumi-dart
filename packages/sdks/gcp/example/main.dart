import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_gcp/storage.dart' as pulumi_gcp_storage;

class GcpStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GcpStack() {
    final bucket = pulumi_gcp_storage.Bucket(
      'bucket',
      args: pulumi_gcp_storage.BucketArgs(
        location: pulumi.Input.asInput('US'),
        forceDestroy: pulumi.Input.asInput(true),
      ),
    );

    _outputProperties = [
      pulumi.OutputProperty(
        'bucketUrl',
        pulumi.output(bucket.url).apply<Object?>((value) => value),
      ),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GcpStack());
}
