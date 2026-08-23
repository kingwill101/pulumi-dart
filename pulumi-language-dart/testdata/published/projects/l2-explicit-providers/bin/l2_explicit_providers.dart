import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_component/index.dart' as component_index;
import 'package:pulumi_component/providers.dart' as component_providers;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final explicit = component_providers.ProviderProvider('explicit');
    final list = component_index.ComponentCallable('list', args: component_index.ComponentCallableArgs(value: ('value').input(), ), options: pulumi.ComponentResourceOptions(providers: [explicit], ));
    final map = component_index.ComponentCallable('map', args: component_index.ComponentCallableArgs(value: ('value').input(), ), options: pulumi.ComponentResourceOptions(providers: [explicit], ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
