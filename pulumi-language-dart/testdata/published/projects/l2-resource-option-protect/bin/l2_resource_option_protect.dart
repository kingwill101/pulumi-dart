import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final protected = simple_index.ResourceType('protected', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(protect: true, ));
    final unprotected = simple_index.ResourceType('unprotected', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(protect: false, ));
    final defaulted = simple_index.ResourceType('defaulted', args: simple_index.ResourceArgs(value: (true).input(), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
