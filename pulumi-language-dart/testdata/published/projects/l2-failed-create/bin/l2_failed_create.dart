import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_fail_on_create/index.dart' as pulumi_fail_on_create_index;
import 'package:pulumi_simple/index.dart' as pulumi_simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final failing = pulumi_fail_on_create_index.ResourceType('failing', args: pulumi_fail_on_create_index.ResourceArgs(value: (false).input(), ));
    final dependent = pulumi_simple_index.ResourceType('dependent', args: pulumi_simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(dependsOn: [failing], ));
    final dependentOnOutput = pulumi_simple_index.ResourceType('dependent_on_output', args: pulumi_simple_index.ResourceArgs(value: (pulumi.output(failing.value).apply<bool>((value) => value is String ? bool.parse((value).toString()) : value as bool)).input(), ));
    final independent = pulumi_simple_index.ResourceType('independent', args: pulumi_simple_index.ResourceArgs(value: (true).input(), ));
    final doubleDependency = pulumi_simple_index.ResourceType('double_dependency', args: pulumi_simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(dependsOn: [independent, dependentOnOutput], ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
