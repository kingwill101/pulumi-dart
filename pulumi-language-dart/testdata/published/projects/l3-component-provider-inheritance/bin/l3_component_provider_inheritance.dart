import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_component/index.dart' as pulumi_component_index;
import 'package:pulumi_simple/providers.dart' as pulumi_simple_providers;

class Local extends pulumi.ComponentResource {
  late final pulumi.Output<dynamic> result;

  Local(String name, {pulumi.ComponentResourceOptions? options})
      : super('components:index:Local', name, const {}, options) {
    final mlc = pulumi_component_index.ComponentForeignChild(name + '-' + ('mlc'), args: pulumi_component_index.ComponentForeignChildArgs(value: pulumi.Input.asInput(true), ), options: pulumi.ComponentResourceOptions(parent: this, ));
    result = pulumi.output(mlc.value);
    registerOutputs({'result': result, });
  }
}

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final explicit = pulumi_simple_providers.ProviderProvider('explicit');
    final withProviders = Local('withProviders', options: pulumi.ComponentResourceOptions(providers: [explicit], ));

    _outputProperties = [
      pulumi.OutputProperty('result', pulumi.output(withProviders.result).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
