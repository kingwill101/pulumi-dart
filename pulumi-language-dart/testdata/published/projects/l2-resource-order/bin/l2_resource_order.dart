import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final res1 = simple_index.ResourceType('res1', args: simple_index.ResourceArgs(value: (true).input(), ));
    final localVar = res1.value;
    final res2 = simple_index.ResourceType('res2', args: simple_index.ResourceArgs(value: (pulumi.output(localVar).apply<bool>((value) => value as bool)).input(), ));

    _outputProperties = [
      pulumi.OutputProperty('out', pulumi.output(res2.value).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
