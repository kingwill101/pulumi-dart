import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final withV2 = simple_index.ResourceType('withV2', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(version: '2.0.0', ));
    final withV26 = simple_index.ResourceType('withV26', args: simple_index.ResourceArgs(value: (false).input(), ), options: pulumi.CustomResourceOptions(version: '26.0.0', ));
    final withDefault = simple_index.ResourceType('withDefault', args: simple_index.ResourceArgs(value: (true).input(), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
