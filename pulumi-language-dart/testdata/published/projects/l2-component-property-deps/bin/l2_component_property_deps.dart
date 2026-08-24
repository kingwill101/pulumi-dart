import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_component_property_deps/index.dart' as pulumi_component_property_deps_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    pulumi.ProviderResource('pulumi', 'default', null, null);
    pulumi.ResourceReferenceRegistry.register('component-property-deps:index:Custom', (urn) => pulumi_component_property_deps_index.Custom.reference(urn));
    final custom1 = pulumi_component_property_deps_index.Custom('custom1', args: pulumi_component_property_deps_index.CustomArgs(value: pulumi.Input.asInput('hello'), ));
    final custom2 = pulumi_component_property_deps_index.Custom('custom2', args: pulumi_component_property_deps_index.CustomArgs(value: pulumi.Input.asInput('world'), ));
    final component1 = pulumi_component_property_deps_index.Component('component1', args: pulumi_component_property_deps_index.ComponentArgs(resource: pulumi.Input.asInput(pulumi.output(custom1).apply<pulumi_component_property_deps_index.Custom>((value) => value!)), resourceList: pulumi.Input.asInput(pulumi.inputList<pulumi_component_property_deps_index.Custom>(<pulumi.Input<pulumi_component_property_deps_index.Custom>>[(pulumi.output(custom1).apply<pulumi_component_property_deps_index.Custom>((value) => value!)).input(), (pulumi.output(custom2).apply<pulumi_component_property_deps_index.Custom>((value) => value!)).input()]) as pulumi.Input<List<pulumi_component_property_deps_index.Custom>>), resourceMap: pulumi.Input.asInput(pulumi.inputMap<pulumi_component_property_deps_index.Custom>(<String, pulumi.Input<pulumi_component_property_deps_index.Custom>>{'one': (pulumi.output(custom1).apply<pulumi_component_property_deps_index.Custom>((value) => value!)).input(), 'two': (pulumi.output(custom2).apply<pulumi_component_property_deps_index.Custom>((value) => value!)).input()}) as pulumi.Input<Map<String, pulumi_component_property_deps_index.Custom>>), ));

    _outputProperties = [
      pulumi.OutputProperty('propertyDepsFromCall', pulumi.output(pulumi.output(component1.refs(args: pulumi_component_property_deps_index.ComponentRefsArgs(resource: (pulumi.output(custom1).apply<pulumi_component_property_deps_index.Custom>((value) => value!)).input(), resourceList: (pulumi.inputList<pulumi_component_property_deps_index.Custom>(<pulumi.Input<pulumi_component_property_deps_index.Custom>>[(pulumi.output(custom1).apply<pulumi_component_property_deps_index.Custom>((value) => value!)).input(), (pulumi.output(custom2).apply<pulumi_component_property_deps_index.Custom>((value) => value!)).input()]) as pulumi.Input<List<pulumi_component_property_deps_index.Custom>>).input(), resourceMap: (pulumi.inputMap<pulumi_component_property_deps_index.Custom>(<String, pulumi.Input<pulumi_component_property_deps_index.Custom>>{'one': (pulumi.output(custom1).apply<pulumi_component_property_deps_index.Custom>((value) => value!)).input(), 'two': (pulumi.output(custom2).apply<pulumi_component_property_deps_index.Custom>((value) => value!)).input()}) as pulumi.Input<Map<String, pulumi_component_property_deps_index.Custom>>).input()))).apply<dynamic>((value) => value.result)).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
