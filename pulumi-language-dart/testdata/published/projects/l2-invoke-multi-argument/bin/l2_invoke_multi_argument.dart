import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_multi_argument_invoke/index.dart' as multi_argument_invoke_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    _outputProperties = [
      pulumi.OutputProperty('both', pulumi.output(multi_argument_invoke_index.multiArgumentInvokeOutput(('hello').input(), ('world').input()).apply((value) => value.result)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('onlyRequired', pulumi.output(multi_argument_invoke_index.multiArgumentInvokeOutput(('hello').input(), null).apply((value) => value.result)).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
