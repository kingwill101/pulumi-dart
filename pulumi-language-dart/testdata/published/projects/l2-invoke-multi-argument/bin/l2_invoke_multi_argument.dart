import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_multi_argument_invoke/index.dart' as pulumi_multi_argument_invoke_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    _outputProperties = [
      pulumi.OutputProperty('both', pulumi.output(pulumi_multi_argument_invoke_index.multiArgumentInvokeOutput(('hello').input(), ('world').input()).apply<dynamic>((value) => value.result)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('onlyRequired', pulumi.output(pulumi_multi_argument_invoke_index.multiArgumentInvokeOutput(('hello').input(), null).apply<dynamic>((value) => value.result)).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
