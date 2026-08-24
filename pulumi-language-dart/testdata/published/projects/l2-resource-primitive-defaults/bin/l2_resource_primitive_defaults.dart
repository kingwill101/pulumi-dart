import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_primitive_defaults/index.dart' as pulumi_primitive_defaults_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final resExplicit = pulumi_primitive_defaults_index.ResourceType('resExplicit', args: pulumi_primitive_defaults_index.ResourceArgs(boolean: pulumi.Input.asInput(true), float: pulumi.Input.asInput((3.14).toDouble()), integer: pulumi.Input.asInput(42), string_: pulumi.Input.asInput('hello'), ));
    final resDefaulted = pulumi_primitive_defaults_index.ResourceType('resDefaulted');

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
