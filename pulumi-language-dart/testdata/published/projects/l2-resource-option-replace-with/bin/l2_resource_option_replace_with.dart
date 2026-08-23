import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final target = simple_index.ResourceType('target', args: simple_index.ResourceArgs(value: (true).input(), ));
    final replaceWith = simple_index.ResourceType('replaceWith', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(replaceWith: [target], ));
    final notReplaceWith = simple_index.ResourceType('notReplaceWith', args: simple_index.ResourceArgs(value: (true).input(), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
