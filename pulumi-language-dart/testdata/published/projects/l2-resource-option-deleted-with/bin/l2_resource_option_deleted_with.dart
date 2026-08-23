import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final target = simple_index.ResourceType('target', args: simple_index.ResourceArgs(value: (true).input(), ));
    final deletedWith = simple_index.ResourceType('deletedWith', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(deletedWith: target, ));
    final notDeletedWith = simple_index.ResourceType('notDeletedWith', args: simple_index.ResourceArgs(value: (true).input(), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
