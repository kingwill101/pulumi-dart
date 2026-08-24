import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_scalar_returns/index.dart' as pulumi_scalar_returns_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    _outputProperties = [
      pulumi.OutputProperty('secret', pulumi.output(pulumi_scalar_returns_index.invokeSecretOutput(pulumi_scalar_returns_index.InvokeSecretArgs(value: ('goodbye').input()))).apply<Object?>((value) => value)),
      pulumi.OutputProperty('array', pulumi.output(pulumi_scalar_returns_index.invokeArrayOutput(pulumi_scalar_returns_index.InvokeArrayArgs(value: ('the word').input()))).apply<Object?>((value) => value)),
      pulumi.OutputProperty('map', pulumi.output(pulumi_scalar_returns_index.invokeMapOutput(pulumi_scalar_returns_index.InvokeMapArgs(value: ('hello').input()))).apply<Object?>((value) => value)),
      pulumi.OutputProperty('secretMap', pulumi.output(pulumi_scalar_returns_index.invokeMapOutput(pulumi_scalar_returns_index.InvokeMapArgs(value: ('secret').input()))).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
