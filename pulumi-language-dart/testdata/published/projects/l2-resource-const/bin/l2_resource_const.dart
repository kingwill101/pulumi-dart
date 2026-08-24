import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_constant/index.dart' as pulumi_constant_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final first = pulumi_constant_index.ResourceType('first', args: pulumi_constant_index.ResourceArgs(kind: pulumi.Input.asInput('Constant'), ));

    _outputProperties = [
      pulumi.OutputProperty('kind', pulumi.output(first.kind).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
