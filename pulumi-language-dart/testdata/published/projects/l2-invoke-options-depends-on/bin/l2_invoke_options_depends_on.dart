import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple_invoke/index.dart' as pulumi_simple_invoke_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final first = pulumi_simple_invoke_index.StringResource('first', args: pulumi_simple_invoke_index.StringResourceArgs(text: pulumi.Input.asInput('first hello'), ));
    final data = pulumi_simple_invoke_index.myInvokeOutput(pulumi_simple_invoke_index.MyInvokeArgs(value: ('hello').input()), options: pulumi.InvokeOutputOptions(dependsOn: [first]));
    final second = pulumi_simple_invoke_index.StringResource('second', args: pulumi_simple_invoke_index.StringResourceArgs(text: pulumi.Input.asInput(pulumi.output(data.apply<dynamic>((value) => value.result)).apply<String>((value) => (value).toString())), ));

    _outputProperties = [
      pulumi.OutputProperty('hello', pulumi.output(data.apply<dynamic>((value) => value.result)).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
