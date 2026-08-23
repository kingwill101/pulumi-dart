import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_output/pulumi_output.dart' as output;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final provElided = output.providers.OutputType('provElided', args: output.providers.OutputArgs(elideUnknowns: (true).input(), ));
    final provNotElided = output.providers.OutputType('provNotElided');
    final topLevelElided = output.index.ResourceType('topLevelElided', args: output.index.ResourceArgs(value: ((1).toDouble()).input(), ));
    final topLevelNotElided = output.index.ResourceType('topLevelNotElided', args: output.index.ResourceArgs(value: ((1).toDouble()).input(), ));

    _outputProperties = [
      pulumi.OutputProperty('topLevelElided', pulumi.output(topLevelElided.secretOutput).apply<Object?>((value) => value)),
      pulumi.OutputProperty('topLevelNotElided', pulumi.output(topLevelNotElided.secretOutput).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
