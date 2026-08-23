import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as simple_index;
import 'package:pulumi_simple_invoke/index.dart' as simple_invoke_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final res = simple_index.ResourceType('res', args: simple_index.ResourceArgs(value: (true).input(), ));

    _outputProperties = [
      pulumi.OutputProperty('nonSecret', pulumi.output(simple_invoke_index.secretInvokeOutput(simple_invoke_index.SecretInvokeArgs(value: ('hello').input(), secretResponse: (false).input())).apply((value) => value.response)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('firstSecret', pulumi.output(simple_invoke_index.secretInvokeOutput(simple_invoke_index.SecretInvokeArgs(value: ('hello').input(), secretResponse: (pulumi.output(res.value).apply<bool>((value) => value as bool)).input())).apply((value) => value.response)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('secondSecret', pulumi.output(simple_invoke_index.secretInvokeOutput(simple_invoke_index.SecretInvokeArgs(value: (pulumi.output(pulumi.secret('goodbye')).apply<String>((value) => value as String)).input(), secretResponse: (false).input())).apply((value) => value.response)).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
