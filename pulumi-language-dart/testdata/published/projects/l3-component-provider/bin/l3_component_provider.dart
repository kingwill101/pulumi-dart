import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_config/index.dart' as pulumi_config_index;
import 'package:pulumi_config/providers.dart' as pulumi_config_providers;

class ProviderComponentArgs {
  final pulumi.Input<String> text;

  const ProviderComponentArgs({required this.text, });

  Map<String, dynamic> toMap() => {'text': text, };
}

class ProviderComponent extends pulumi.ComponentResource {
  late final pulumi.Output<dynamic> result;

  ProviderComponent(String name, {required ProviderComponentArgs args, pulumi.ComponentResourceOptions? options})
      : super('components:index:ProviderComponent', name, pulumi.Input.mapToInputs(args.toMap()), options) {
    final prov = pulumi_config_providers.ProviderProvider(name + '-prov', args: pulumi_config_providers.ProviderArgs(name: ('my config').input(), ), options: pulumi.CustomResourceOptions(parent: this, ));
    final res = pulumi_config_index.ResourceType(name + '-res', args: pulumi_config_index.ResourceArgs(text: (pulumi.output(args.text).apply<String>((value) => (value).toString())).input(), ), options: pulumi.CustomResourceOptions(provider: prov, parent: this, ));
    result = pulumi.output(res.text);
    registerOutputs({'result': result, });
  }
}

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final myComponent = ProviderComponent('myComponent', args: ProviderComponentArgs(text: (pulumi.output('hello').apply<String>((value) => value as String)).input(), ));

    _outputProperties = [
      pulumi.OutputProperty('result', pulumi.output(myComponent.result).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
