import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_primitive_defaults/index.dart' as primitive_defaults_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final resExplicit = primitive_defaults_index.ResourceType('resExplicit', args: primitive_defaults_index.ResourceArgs(boolean: (true).input(), float: ((3.14).toDouble()).input(), integer: (42).input(), string_: ('hello').input(), ));
    final resDefaulted = primitive_defaults_index.ResourceType('resDefaulted');

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
