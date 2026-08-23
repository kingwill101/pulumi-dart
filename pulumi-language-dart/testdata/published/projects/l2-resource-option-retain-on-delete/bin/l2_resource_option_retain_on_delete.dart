import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final retainOnDelete = simple_index.ResourceType('retainOnDelete', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(retainOnDelete: true, ));
    final notRetainOnDelete = simple_index.ResourceType('notRetainOnDelete', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(retainOnDelete: false, ));
    final defaulted = simple_index.ResourceType('defaulted', args: simple_index.ResourceArgs(value: (true).input(), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
