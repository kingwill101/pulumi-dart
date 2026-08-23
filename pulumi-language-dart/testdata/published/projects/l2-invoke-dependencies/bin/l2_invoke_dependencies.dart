import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as simple_index;
import 'package:pulumi_simple_invoke/index.dart' as simple_invoke_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final first = simple_index.ResourceType('first', args: simple_index.ResourceArgs(value: (false).input(), ));
    final second = simple_index.ResourceType('second', args: simple_index.ResourceArgs(value: (pulumi.output(simple_invoke_index.secretInvokeOutput(simple_invoke_index.SecretInvokeArgs(value: ('hello').input(), secretResponse: (pulumi.output(first.value).apply<bool>((value) => value as bool)).input())).apply((value) => value.secret)).apply<bool>((value) => value as bool)).input(), ));
    final third = simple_invoke_index.StringResource('third', args: simple_invoke_index.StringResourceArgs(text: ('third').input(), ));
    final data = simple_invoke_index.getTextOutput(simple_invoke_index.GetTextArgs(text: (pulumi.output(third.text).apply<String>((value) => value as String)).input()));
    final fourth = simple_invoke_index.StringResource('fourth', args: simple_invoke_index.StringResourceArgs(text: (pulumi.output(data.apply((value) => value.result)).apply<String>((value) => value as String)).input(), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
