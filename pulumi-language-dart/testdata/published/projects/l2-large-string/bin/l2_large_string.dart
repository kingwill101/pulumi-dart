import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_large/index.dart' as pulumi_large_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final res = pulumi_large_index.StringType('res', args: pulumi_large_index.StringArgs(value: pulumi.Input.asInput('hello world'), ));

    _outputProperties = [
      pulumi.OutputProperty('output', pulumi.output(res.value).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
