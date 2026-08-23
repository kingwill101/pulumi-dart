import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_constant/index.dart' as constant_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final first = constant_index.ResourceType('first', args: constant_index.ResourceArgs(kind: ('Constant').input(), ));

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
