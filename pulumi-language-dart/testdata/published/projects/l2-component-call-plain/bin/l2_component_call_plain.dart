import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_configurer/index.dart' as configurer_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack();

  Future<void> initialize() async {
    final configurer = configurer_index.Configurer('configurer', args: configurer_index.ConfigurerArgs(providerConfig: ('propagated').input(), ));
    final customFromPlainProvider = configurer_index.Custom('customFromPlainProvider', args: configurer_index.CustomArgs(value: ('from-plain-provider').input(), ), options: pulumi.CustomResourceOptions(provider: (await configurer.plainProvider()), ));
    final customFromNestedPlainProvider = configurer_index.Custom('customFromNestedPlainProvider', args: configurer_index.CustomArgs(value: ('from-nested-plain-provider').input(), ), options: pulumi.CustomResourceOptions(provider: (await configurer.nestedPlainProvider()).provider, ));

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
