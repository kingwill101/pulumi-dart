import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple_invoke/index.dart' as simple_invoke_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final res = simple_invoke_index.StringResource('res', args: simple_invoke_index.StringResourceArgs(text: ('hello').input(), ));

    _outputProperties = [
      pulumi.OutputProperty('outputInput', pulumi.output(simple_invoke_index.myInvokeOutput(simple_invoke_index.MyInvokeArgs(value: (pulumi.output(res.text).apply<String>((value) => value as String)).input())).apply((value) => value.result)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('unit', pulumi.output(simple_invoke_index.unitOutput().apply((value) => value.result)).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
