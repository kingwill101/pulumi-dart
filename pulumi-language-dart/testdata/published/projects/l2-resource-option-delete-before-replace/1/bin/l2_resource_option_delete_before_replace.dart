import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final withOption = simple_index.ResourceType('withOption', args: simple_index.ResourceArgs(value: (false).input(), ), options: pulumi.CustomResourceOptions(deleteBeforeReplace: true, replaceOnChanges: ['value'], ));
    final withoutOption = simple_index.ResourceType('withoutOption', args: simple_index.ResourceArgs(value: (false).input(), ), options: pulumi.CustomResourceOptions(replaceOnChanges: ['value'], ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
