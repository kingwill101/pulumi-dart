import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_component/index.dart' as component_index;
import 'package:pulumi_simple/index.dart' as simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final parent = simple_index.ResourceType('parent', args: simple_index.ResourceArgs(value: (true).input(), ));
    final aliasURN = simple_index.ResourceType('aliasURN', args: simple_index.ResourceArgs(value: (true).input(), ));
    final aliasName = simple_index.ResourceType('aliasName', args: simple_index.ResourceArgs(value: (true).input(), ));
    final aliasNoParent = simple_index.ResourceType('aliasNoParent', args: simple_index.ResourceArgs(value: (true).input(), ));
    final aliasParent = simple_index.ResourceType('aliasParent', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(parent: aliasURN, ));
    final aliasType = component_index.Custom('aliasType', args: component_index.CustomArgs(value: ('true').input(), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
