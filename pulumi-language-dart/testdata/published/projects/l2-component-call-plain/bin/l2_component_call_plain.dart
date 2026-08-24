import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_configurer/index.dart' as pulumi_configurer_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack();

  Future<void> initialize() async {
    final configurer = pulumi_configurer_index.Configurer('configurer', args: pulumi_configurer_index.ConfigurerArgs(providerConfig: pulumi.Input.asInput('propagated'), ));
    final customFromPlainProvider = pulumi_configurer_index.Custom('customFromPlainProvider', args: pulumi_configurer_index.CustomArgs(value: pulumi.Input.asInput('from-plain-provider'), ), options: pulumi.CustomResourceOptions(provider: (await configurer.plainProvider()), ));
    final customFromNestedPlainProvider = pulumi_configurer_index.Custom('customFromNestedPlainProvider', args: pulumi_configurer_index.CustomArgs(value: pulumi.Input.asInput('from-nested-plain-provider'), ), options: pulumi.CustomResourceOptions(provider: (await configurer.nestedPlainProvider()).provider, ));

    _outputProperties = [
      pulumi.OutputProperty('plainValue', pulumi.output((await configurer.plainValue())).apply<Object?>((value) => value)),
      pulumi.OutputProperty('nestedPlainValue', pulumi.output((await configurer.nestedPlainProvider()).value).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() async {
    final stack = GeneratedStack();
    await stack.initialize();
  });
}
