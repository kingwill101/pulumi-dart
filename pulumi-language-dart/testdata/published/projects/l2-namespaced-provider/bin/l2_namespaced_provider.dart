import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_a_namespace_namespaced/index.dart' as pulumi_a_namespace_namespaced_index;
import 'package:pulumi_component/index.dart' as pulumi_component_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    pulumi.ProviderResource('pulumi', 'default', null, null);
    final componentRes = pulumi_component_index.ComponentCustomRefOutput('componentRes', args: pulumi_component_index.ComponentCustomRefOutputArgs(value: ('foo-bar-baz').input(), ));
    final res = pulumi_a_namespace_namespaced_index.ResourceType('res', args: pulumi_a_namespace_namespaced_index.ResourceArgs(value: (true).input(), resourceRef: (componentRes.ref).input(), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
