import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple_invoke/index.dart' as simple_invoke_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final first = simple_invoke_index.StringResource('first', args: simple_invoke_index.StringResourceArgs(text: ('first hello').input(), ));
    final data = simple_invoke_index.myInvokeOutput(simple_invoke_index.MyInvokeArgs(value: ('hello').input()), options: pulumi.InvokeOutputOptions(dependsOn: [first]));
    final second = simple_invoke_index.StringResource('second', args: simple_invoke_index.StringResourceArgs(text: (pulumi.output(data.apply((value) => value.result)).apply<String>((value) => value as String)).input(), ));

    _outputProperties = [
      pulumi.OutputProperty('hello', pulumi.output(data.apply((value) => value.result)).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
