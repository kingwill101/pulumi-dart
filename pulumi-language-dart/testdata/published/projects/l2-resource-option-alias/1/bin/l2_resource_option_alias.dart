import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as pulumi_simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final parent = pulumi_simple_index.ResourceType('parent', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ));
    final aliasURN = pulumi_simple_index.ResourceType('aliasURN', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(parent: parent, aliases: [pulumi.Alias(urn: 'urn:pulumi:test::l2-resource-option-alias::simple:index:Resource::aliasURN')], ));
    final aliasNewName = pulumi_simple_index.ResourceType('aliasNewName', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(aliases: [pulumi.Alias(name: ('aliasName').input())], ));
    final aliasNoParent = pulumi_simple_index.ResourceType('aliasNoParent', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(parent: parent, aliases: [pulumi.Alias(noParent: true)], ));
    final aliasParent = pulumi_simple_index.ResourceType('aliasParent', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(parent: parent, aliases: [pulumi.Alias(parent: aliasURN)], ));
    final aliasType = pulumi_simple_index.ResourceType('aliasType', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(aliases: [pulumi.Alias(type: ('component:index:Custom').input())], ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
