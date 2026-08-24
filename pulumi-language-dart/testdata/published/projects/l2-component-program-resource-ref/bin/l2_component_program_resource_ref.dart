import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:component/index.dart' as component_index;
import 'package:pulumi_component/index.dart' as pulumi_component_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    pulumi.ResourceReferenceRegistry.register('component:index:Custom', (urn) => component_index.Custom.reference(urn));
    final component1 = pulumi_component_index.ComponentCustomRefOutput('component1', args: pulumi_component_index.ComponentCustomRefOutputArgs(value: pulumi.Input.asInput('foo-bar-baz'), ));
    final custom1 = pulumi_component_index.Custom('custom1', args: pulumi_component_index.CustomArgs(value: pulumi.Input.asInput(pulumi.output(component1.value).apply<String>((value) => (value).toString())), ));
    final custom2 = pulumi_component_index.Custom('custom2', args: pulumi_component_index.CustomArgs(value: pulumi.Input.asInput(pulumi.output(component1.ref.apply<dynamic>((value) => value?.value)).apply<String>((value) => (value).toString())), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
