import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_nestedobject/index.dart' as pulumi_nestedobject_index;
import 'package:pulumi_simple/index.dart' as pulumi_simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final target = pulumi_simple_index.ResourceType('target', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ));
    final other = pulumi_nestedobject_index.Container('other', args: pulumi_nestedobject_index.ContainerArgs(inputs: pulumi.Input.asInput(<String>['a']), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
