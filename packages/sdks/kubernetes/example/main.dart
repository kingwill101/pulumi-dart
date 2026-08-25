import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_kubernetes/core.dart' as pulumi_kubernetes_core;

class KubernetesStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  KubernetesStack() {
    final namespace = pulumi_kubernetes_core.NamespaceCoreV1('namespace');

    _outputProperties = [
      pulumi.OutputProperty(
        'namespaceId',
        pulumi.output(namespace.id).apply<Object?>((value) => value),
      ),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => KubernetesStack());
}
