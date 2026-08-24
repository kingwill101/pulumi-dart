import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_ref_ref/index.dart' as pulumi_ref_ref_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final res = pulumi_ref_ref_index.ResourceType('res', args: pulumi_ref_ref_index.ResourceArgs(data: pulumi.Input.asInput(pulumi_ref_ref_index.Data(innerData: (pulumi_ref_ref_index.InnerData(boolean: (false).input(), float: ((2.17).toDouble()).input(), integer: (-12).input(), string_: ('Goodbye').input(), boolArray: (<bool>[false, true]).input(), stringMap: (<String, String>{'two': 'turtle doves', 'three': 'french hens'}).input())).input(), boolean: (true).input(), float: ((4.5).toDouble()).input(), integer: (1024).input(), string_: ('Hello').input(), boolArray: (<bool>[]).input(), stringMap: (<String, String>{'x': '100', 'y': '200'}).input())), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
