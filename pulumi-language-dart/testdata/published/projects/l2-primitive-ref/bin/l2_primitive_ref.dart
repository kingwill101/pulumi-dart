import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_primitive_ref/index.dart' as pulumi_primitive_ref_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final res = pulumi_primitive_ref_index.ResourceType('res', args: pulumi_primitive_ref_index.ResourceArgs(data: pulumi.Input.asInput(pulumi_primitive_ref_index.Data(boolean: (false).input(), float: ((2.17).toDouble()).input(), integer: (-12).input(), string_: ('Goodbye').input(), boolArray: (<bool>[false, true]).input(), stringMap: (<String, String>{'two': 'turtle doves', 'three': 'french hens'}).input())), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
