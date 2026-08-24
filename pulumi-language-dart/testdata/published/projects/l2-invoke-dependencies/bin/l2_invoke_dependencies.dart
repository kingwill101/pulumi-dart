import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as pulumi_simple_index;
import 'package:pulumi_simple_invoke/index.dart' as pulumi_simple_invoke_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final first = pulumi_simple_index.ResourceType('first', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(false), ));
    final second = pulumi_simple_index.ResourceType('second', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(pulumi.output(pulumi_simple_invoke_index.secretInvokeOutput(pulumi_simple_invoke_index.SecretInvokeArgs(value: ('hello').input(), secretResponse: (pulumi.output(first.value).apply<bool>((value) => value is String ? bool.parse((value).toString()) : value as bool)).input())).apply<dynamic>((value) => value.secret)).apply<bool>((value) => value is String ? bool.parse((value).toString()) : value as bool)), ));
    final third = pulumi_simple_invoke_index.StringResource('third', args: pulumi_simple_invoke_index.StringResourceArgs(text: pulumi.Input.asInput('third'), ));
    final data = pulumi_simple_invoke_index.getTextOutput(pulumi_simple_invoke_index.GetTextArgs(text: (pulumi.output(third.text).apply<String>((value) => (value).toString())).input()));
    final fourth = pulumi_simple_invoke_index.StringResource('fourth', args: pulumi_simple_invoke_index.StringResourceArgs(text: pulumi.Input.asInput(pulumi.output(data.apply<dynamic>((value) => value.result)).apply<String>((value) => (value).toString())), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
