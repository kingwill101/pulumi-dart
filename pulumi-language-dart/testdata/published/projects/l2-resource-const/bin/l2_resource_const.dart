import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_constant/pulumi_constant.dart' as constant;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final first = constant.index.ResourceType('first', args: constant.index.ResourceArgs(kind: ('Constant').input(), ));

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
