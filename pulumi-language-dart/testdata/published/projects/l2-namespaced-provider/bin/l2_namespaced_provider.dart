import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_a_namespace_namespaced/index.dart' as pulumi_a_namespace_namespaced_index;
import 'package:pulumi_component/index.dart' as pulumi_component_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    pulumi.ResourceReferenceRegistry.register('component:index:Custom', (urn) => pulumi_component_index.Custom.reference(urn));
    final componentRes = pulumi_component_index.ComponentCustomRefOutput('componentRes', args: pulumi_component_index.ComponentCustomRefOutputArgs(value: pulumi.Input.asInput('foo-bar-baz'), ));
    final res = pulumi_a_namespace_namespaced_index.ResourceType('res', args: pulumi_a_namespace_namespaced_index.ResourceArgs(value: pulumi.Input.asInput(true), resourceRef: pulumi.Input.asInput(componentRes.ref), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
