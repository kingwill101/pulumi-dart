import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final noDependsOn = simple_index.ResourceType('noDependsOn', args: simple_index.ResourceArgs(value: (true).input(), ));
    final withDependsOn = simple_index.ResourceType('withDependsOn', args: simple_index.ResourceArgs(value: (false).input(), ), options: pulumi.CustomResourceOptions(dependsOn: [noDependsOn], ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
