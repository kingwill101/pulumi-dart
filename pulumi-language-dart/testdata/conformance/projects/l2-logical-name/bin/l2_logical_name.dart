import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/pulumi_simple.dart' as simple;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final config = pulumi.Config();
    final configLexicalName = config.requireBoolean('cC-Charlie_charlie.😃⁉️');

    final resourceLexicalName = simple.index.ResourceType('aA-Alpha_alpha.🤯⁉️', args: simple.index.ResourceArgs(value: (configLexicalName).input(), ));

    _outputProperties = [
      pulumi.OutputProperty('bB-Beta_beta.💜⁉', pulumi.output(resourceLexicalName.value).apply<Object?>((value) => value)),
      pulumi.OutputProperty('dD-Delta_delta.🔥⁉', pulumi.output(resourceLexicalName.value).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
