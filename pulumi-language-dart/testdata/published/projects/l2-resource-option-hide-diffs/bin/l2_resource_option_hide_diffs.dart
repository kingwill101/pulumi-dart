import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final hideDiffs = simple_index.ResourceType('hideDiffs', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(hideDiffs: ['value'], ));
    final notHideDiffs = simple_index.ResourceType('notHideDiffs', args: simple_index.ResourceArgs(value: (true).input(), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
