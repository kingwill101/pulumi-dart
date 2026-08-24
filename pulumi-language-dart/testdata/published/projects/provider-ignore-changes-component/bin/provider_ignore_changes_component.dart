import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_conformance_component/index.dart' as pulumi_conformance_component_index;
import 'package:pulumi_simple/index.dart' as pulumi_simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final withIgnoreChanges = pulumi_conformance_component_index.Simple('withIgnoreChanges', args: pulumi_conformance_component_index.SimpleArgs(value: pulumi.Input.asInput(true), ), options: pulumi.ComponentResourceOptions(ignoreChanges: ['value'], ));
    final withoutIgnoreChanges = pulumi_conformance_component_index.Simple('withoutIgnoreChanges', args: pulumi_conformance_component_index.SimpleArgs(value: pulumi.Input.asInput(true), ));
    final simpleResource = pulumi_simple_index.ResourceType('simpleResource', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(false), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
