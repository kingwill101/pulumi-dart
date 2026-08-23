import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_component/index.dart' as component_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    pulumi.ResourceReferenceRegistry.register('component:index:Custom', (urn) => component_index.Custom.reference(urn));
    final component1 = component_index.ComponentCustomRefOutput('component1', args: component_index.ComponentCustomRefOutputArgs(value: ('foo-bar-baz').input(), ));
    final component2 = component_index.ComponentCustomRefInputOutput('component2', args: component_index.ComponentCustomRefInputOutputArgs(inputRef: (pulumi.output(component1.ref).apply<component_index.Custom>((value) => value!)).input(), ));
    final custom1 = component_index.Custom('custom1', args: component_index.CustomArgs(value: (pulumi.output(component2.inputRef.apply<dynamic>((value) => value?.value)).apply<String>((value) => (value).toString())).input(), ));
    final custom2 = component_index.Custom('custom2', args: component_index.CustomArgs(value: (pulumi.output(component2.outputRef.apply<dynamic>((value) => value?.value)).apply<String>((value) => (value).toString())).input(), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
