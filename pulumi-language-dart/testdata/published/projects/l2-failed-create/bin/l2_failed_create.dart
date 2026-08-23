import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_fail_on_create/index.dart' as fail_on_create_index;
import 'package:pulumi_simple/index.dart' as simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final failing = fail_on_create_index.ResourceType('failing', args: fail_on_create_index.ResourceArgs(value: (false).input(), ));
    final dependent = simple_index.ResourceType('dependent', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(dependsOn: [failing], ));
    final dependentOnOutput = simple_index.ResourceType('dependent_on_output', args: simple_index.ResourceArgs(value: (pulumi.output(failing.value).apply<bool>((value) => value is String ? bool.parse((value).toString()) : value as bool)).input(), ));
    final independent = simple_index.ResourceType('independent', args: simple_index.ResourceArgs(value: (true).input(), ));
    final doubleDependency = simple_index.ResourceType('double_dependency', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(dependsOn: [independent, dependentOnOutput], ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
