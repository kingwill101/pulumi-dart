import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as pulumi_simple_index;
import 'package:pulumi_simple_invoke/index.dart' as pulumi_simple_invoke_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final res = pulumi_simple_index.ResourceType('res', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ));

    _outputProperties = [
      pulumi.OutputProperty('nonSecret', pulumi.output(pulumi_simple_invoke_index.secretInvokeOutput(pulumi_simple_invoke_index.SecretInvokeArgs(value: ('hello').input(), secretResponse: (false).input())).apply<dynamic>((value) => value.response)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('firstSecret', pulumi.output(pulumi_simple_invoke_index.secretInvokeOutput(pulumi_simple_invoke_index.SecretInvokeArgs(value: ('hello').input(), secretResponse: (pulumi.output(res.value).apply<bool>((value) => value is String ? bool.parse((value).toString()) : value as bool)).input())).apply<dynamic>((value) => value.response)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('secondSecret', pulumi.output(pulumi_simple_invoke_index.secretInvokeOutput(pulumi_simple_invoke_index.SecretInvokeArgs(value: (pulumi.output(pulumi.secret('goodbye')).apply<String>((value) => (value).toString())).input(), secretResponse: (false).input())).apply<dynamic>((value) => value.response)).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
