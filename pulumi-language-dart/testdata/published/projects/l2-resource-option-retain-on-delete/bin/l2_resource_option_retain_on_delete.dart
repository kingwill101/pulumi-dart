import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as pulumi_simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final retainOnDelete = pulumi_simple_index.ResourceType('retainOnDelete', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(retainOnDelete: true, ));
    final notRetainOnDelete = pulumi_simple_index.ResourceType('notRetainOnDelete', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(retainOnDelete: false, ));
    final defaulted = pulumi_simple_index.ResourceType('defaulted', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
