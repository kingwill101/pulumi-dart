import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_alpha/index.dart' as pulumi_alpha_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final res = pulumi_alpha_index.ResourceType('res', args: pulumi_alpha_index.ResourceArgs(value: pulumi.Input.asInput(true), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
