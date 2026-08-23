import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple_invoke_with_scalar_return/index.dart' as simple_invoke_with_scalar_return_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    _outputProperties = [
      pulumi.OutputProperty('scalar', pulumi.output(simple_invoke_with_scalar_return_index.myInvokeScalarOutput(simple_invoke_with_scalar_return_index.MyInvokeScalarArgs(value: ('goodbye').input()))).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
