import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple_invoke/index.dart' as pulumi_simple_invoke_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    _outputProperties = [
      pulumi.OutputProperty('hello', pulumi.output(pulumi_simple_invoke_index.myInvokeOutput(pulumi_simple_invoke_index.MyInvokeArgs(value: (pulumi.output('hello').apply<String>((value) => value as String)).input())).apply<dynamic>((value) => value.result)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('goodbye', pulumi.output(pulumi_simple_invoke_index.myInvokeOutput(pulumi_simple_invoke_index.MyInvokeArgs(value: (pulumi.output('goodbye').apply<String>((value) => value as String)).input())).apply<dynamic>((value) => value.result)).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
