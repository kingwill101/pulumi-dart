import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_component/index.dart' as pulumi_component_index;
import 'package:pulumi_component/providers.dart' as pulumi_component_providers;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final explicit = pulumi_component_providers.ProviderProvider('explicit');
    final list = pulumi_component_index.ComponentCallable('list', args: pulumi_component_index.ComponentCallableArgs(value: pulumi.Input.asInput('value'), ), options: pulumi.ComponentResourceOptions(providers: [explicit], ));
    final map = pulumi_component_index.ComponentCallable('map', args: pulumi_component_index.ComponentCallableArgs(value: pulumi.Input.asInput('value'), ), options: pulumi.ComponentResourceOptions(providers: [explicit], ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
