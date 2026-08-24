import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple_invoke/index.dart' as pulumi_simple_invoke_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final res = pulumi_simple_invoke_index.StringResource('res', args: pulumi_simple_invoke_index.StringResourceArgs(text: pulumi.Input.asInput('hello'), ));

    _outputProperties = [
      pulumi.OutputProperty('outputInput', pulumi.output(pulumi_simple_invoke_index.myInvokeOutput(pulumi_simple_invoke_index.MyInvokeArgs(value: (pulumi.output(res.text).apply<String>((value) => (value).toString())).input())).apply<dynamic>((value) => value.result)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('unit', pulumi.output(pulumi_simple_invoke_index.unitOutput().apply<dynamic>((value) => value.result)).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
