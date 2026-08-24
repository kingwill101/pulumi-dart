import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_config/index.dart' as pulumi_config_index;
import 'package:pulumi_config/providers.dart' as pulumi_config_providers;
import 'package:pulumi_multi_argument_invoke/index.dart' as pulumi_multi_argument_invoke_index;

class InvokeComponent extends pulumi.ComponentResource {
  late final pulumi.Output<dynamic> result;

  InvokeComponent(String name, {pulumi.ComponentResourceOptions? options})
      : super('components:index:InvokeComponent', name, const {}, options) {
    final greeting = pulumi_multi_argument_invoke_index.multiArgumentInvokeOutput(('hello').input(), null, options: pulumi.InvokeOutputOptions(parent: this));
    final providerConfig = pulumi_config_index.getConfigOutput(pulumi_config_index.GetConfigArgs(text: (pulumi.output(greeting.apply<dynamic>((value) => value.result)).apply<String>((value) => value as String)).input()), options: pulumi.InvokeOutputOptions(parent: this));
    result = pulumi.output(providerConfig.apply<dynamic>((value) => value.text));
    registerOutputs({'result': result, });
  }
}

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final prov = pulumi_config_providers.ProviderProvider('prov', args: pulumi_config_providers.ProviderArgs(name: pulumi.Input.asInput('my config'), ));
    final myComponent = InvokeComponent('myComponent', options: pulumi.ComponentResourceOptions(providers: [prov], ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
