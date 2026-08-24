import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_call/index.dart' as pulumi_call_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final defaultRes = pulumi_call_index.Custom('defaultRes', args: pulumi_call_index.CustomArgs(value: pulumi.Input.asInput('defaultValue'), ));

    _outputProperties = [
      pulumi.OutputProperty('defaultProviderValue', pulumi.output(pulumi.output(defaultRes.providerValue()).apply<dynamic>((value) => value.result)).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
