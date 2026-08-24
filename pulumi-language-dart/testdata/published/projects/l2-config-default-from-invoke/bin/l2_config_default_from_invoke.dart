import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple_invoke/index.dart' as pulumi_simple_invoke_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final config = pulumi.Config();
    final myInvokeResult = pulumi_simple_invoke_index.myInvokeOutput(pulumi_simple_invoke_index.MyInvokeArgs(value: ('hello').input()));
    final defaultFromInvoke = config.get('defaultFromInvoke') ?? myInvokeResult.apply<dynamic>((value) => value.result);

    _outputProperties = [
      pulumi.OutputProperty('result', pulumi.output(defaultFromInvoke).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
