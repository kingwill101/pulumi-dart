import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_component/index.dart' as pulumi_component_index;
import 'package:pulumi_simple/index.dart' as pulumi_simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final parent = pulumi_simple_index.ResourceType('parent', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ));
    final aliasURN = pulumi_simple_index.ResourceType('aliasURN', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ));
    final aliasName = pulumi_simple_index.ResourceType('aliasName', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ));
    final aliasNoParent = pulumi_simple_index.ResourceType('aliasNoParent', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ));
    final aliasParent = pulumi_simple_index.ResourceType('aliasParent', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(parent: aliasURN, ));
    final aliasType = pulumi_component_index.Custom('aliasType', args: pulumi_component_index.CustomArgs(value: pulumi.Input.asInput('true'), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
