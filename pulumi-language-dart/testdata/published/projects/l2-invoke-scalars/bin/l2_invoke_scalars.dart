import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_scalar_returns/index.dart' as pulumi_scalar_returns_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    _outputProperties = [
      pulumi.OutputProperty('secret', pulumi.output(pulumi_scalar_returns_index.invokeSecretOutput(pulumi_scalar_returns_index.InvokeSecretArgs(value: (pulumi.output('goodbye').apply<String>((value) => value as String)).input()))).apply<Object?>((value) => value)),
      pulumi.OutputProperty('array', pulumi.output(pulumi_scalar_returns_index.invokeArrayOutput(pulumi_scalar_returns_index.InvokeArrayArgs(value: (pulumi.output('the word').apply<String>((value) => value as String)).input()))).apply<Object?>((value) => value)),
      pulumi.OutputProperty('map', pulumi.output(pulumi_scalar_returns_index.invokeMapOutput(pulumi_scalar_returns_index.InvokeMapArgs(value: (pulumi.output('hello').apply<String>((value) => value as String)).input()))).apply<Object?>((value) => value)),
      pulumi.OutputProperty('secretMap', pulumi.output(pulumi_scalar_returns_index.invokeMapOutput(pulumi_scalar_returns_index.InvokeMapArgs(value: (pulumi.output('secret').apply<String>((value) => value as String)).input()))).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
