import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_output/index.dart' as pulumi_output_index;
import 'package:pulumi_simple/index.dart' as pulumi_simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final replacementTrigger = pulumi_simple_index.ResourceType('replacementTrigger', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(replacementTrigger: 'test2', ));
    final unknown = pulumi_output_index.ResourceType('unknown', args: pulumi_output_index.ResourceArgs(value: pulumi.Input.asInput((2).toDouble()), ));
    final unknownReplacementTrigger = pulumi_simple_index.ResourceType('unknownReplacementTrigger', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(replacementTrigger: unknown.output, ));
    final notReplacementTrigger = pulumi_simple_index.ResourceType('notReplacementTrigger', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ));
    final secretReplacementTrigger = pulumi_simple_index.ResourceType('secretReplacementTrigger', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ), options: pulumi.CustomResourceOptions(replacementTrigger: pulumi.secret([3, 2, 1]), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
