import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final res1 = simple_index.ResourceType('res1', args: simple_index.ResourceArgs(value: (true).input(), ));

    _outputProperties = [
      pulumi.OutputProperty('name', pulumi.output(res1.getResourceName()).apply<Object?>((value) => value)),
      pulumi.OutputProperty('type', pulumi.output(res1.getResourceType()).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
