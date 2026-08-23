import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_output/index.dart' as output_index;
import 'package:pulumi_simple/index.dart' as simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final replacementTrigger = simple_index.ResourceType('replacementTrigger', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(replacementTrigger: 'test2', ));
    final unknown = output_index.ResourceType('unknown', args: output_index.ResourceArgs(value: ((2).toDouble()).input(), ));
    final unknownReplacementTrigger = simple_index.ResourceType('unknownReplacementTrigger', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(replacementTrigger: unknown.output, ));
    final notReplacementTrigger = simple_index.ResourceType('notReplacementTrigger', args: simple_index.ResourceArgs(value: (true).input(), ));
    final secretReplacementTrigger = simple_index.ResourceType('secretReplacementTrigger', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(replacementTrigger: pulumi.secret([3, 2, 1]), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
