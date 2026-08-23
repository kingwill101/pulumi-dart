import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as pulumi_simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final resY = pulumi_simple_index.ResourceType('resY', args: pulumi_simple_index.ResourceArgs(value: (true).input(), ));
    final resN = pulumi_simple_index.ResourceType('resN', args: pulumi_simple_index.ResourceArgs(value: (false).input(), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
