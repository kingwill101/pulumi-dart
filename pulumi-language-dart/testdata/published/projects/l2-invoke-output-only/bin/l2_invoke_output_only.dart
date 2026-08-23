import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_output_only_invoke/index.dart' as output_only_invoke_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    _outputProperties = [
      pulumi.OutputProperty('hello', pulumi.output(output_only_invoke_index.myInvokeOutput(output_only_invoke_index.MyInvokeArgs(value: ('hello').input())).apply((value) => value.result)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('goodbye', pulumi.output(output_only_invoke_index.myInvokeOutput(output_only_invoke_index.MyInvokeArgs(value: ('goodbye').input())).apply((value) => value.result)).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
