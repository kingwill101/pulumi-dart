import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as pulumi_simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final withSecret = pulumi_simple_index.ResourceType('withSecret', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(additionalSecretOutputs: ['value'], ));
    final withoutSecret = pulumi_simple_index.ResourceType('withoutSecret', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
