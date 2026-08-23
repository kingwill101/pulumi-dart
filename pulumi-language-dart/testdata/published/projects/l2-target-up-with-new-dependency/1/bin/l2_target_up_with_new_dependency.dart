import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final targetOnly = simple_index.ResourceType('targetOnly', args: simple_index.ResourceArgs(value: (true).input(), ));
    final dep = simple_index.ResourceType('dep', args: simple_index.ResourceArgs(value: (true).input(), ));
    final unrelated = simple_index.ResourceType('unrelated', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(dependsOn: [dep], ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
