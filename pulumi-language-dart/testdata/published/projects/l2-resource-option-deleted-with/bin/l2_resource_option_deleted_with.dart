import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as pulumi_simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final target = pulumi_simple_index.ResourceType('target', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ));
    final deletedWith = pulumi_simple_index.ResourceType('deletedWith', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(deletedWith: target, ));
    final notDeletedWith = pulumi_simple_index.ResourceType('notDeletedWith', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
