import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final parent = simple_index.ResourceType('parent', args: simple_index.ResourceArgs(value: (true).input(), ));
    final aliasURN = simple_index.ResourceType('aliasURN', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(parent: parent, aliases: [pulumi.Alias(urn: 'urn:pulumi:test::l2-resource-option-alias::simple:index:Resource::aliasURN')], ));
    final aliasNewName = simple_index.ResourceType('aliasNewName', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(aliases: [pulumi.Alias(name: ('aliasName').input())], ));
    final aliasNoParent = simple_index.ResourceType('aliasNoParent', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(parent: parent, aliases: [pulumi.Alias(noParent: true)], ));
    final aliasParent = simple_index.ResourceType('aliasParent', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(parent: parent, aliases: [pulumi.Alias(parent: aliasURN)], ));
    final aliasType = simple_index.ResourceType('aliasType', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(aliases: [pulumi.Alias(type: ('component:index:Custom').input())], ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
