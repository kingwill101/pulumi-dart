import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_plain/index.dart' as pulumi_plain_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final res = pulumi_plain_index.ResourceType('res', args: pulumi_plain_index.ResourceArgs(data: pulumi.Input.asInput(pulumi_plain_index.Data(innerData: (pulumi_plain_index.InnerData(boolean: (false).input(), float: ((2.17).toDouble()).input(), integer: (-12).input(), string_: ('Goodbye').input(), boolArray: (<bool>[false, true]).input(), stringMap: (<String, String>{'two': 'turtle doves', 'three': 'french hens'}).input())).input(), boolean: (true).input(), float: ((4.5).toDouble()).input(), integer: (1024).input(), string_: ('Hello').input(), boolArray: (<bool>[true, false]).input(), stringMap: (<String, String>{'x': '100', 'y': '200'}).input())), dataList: pulumi.Input.asInput(<pulumi_plain_index.InnerData>[pulumi_plain_index.InnerData(boolean: (true).input(), float: ((3.14).toDouble()).input(), integer: (42).input(), string_: ('Plain').input(), boolArray: (<bool>[true]).input(), stringMap: (<String, String>{'one': 'partridge'}).input())]), ));
    final emptyListRes = pulumi_plain_index.ResourceType('emptyListRes', args: pulumi_plain_index.ResourceArgs(data: pulumi.Input.asInput(pulumi_plain_index.Data(innerData: (pulumi_plain_index.InnerData(boolean: (false).input(), float: ((0).toDouble()).input(), integer: (0).input(), string_: ('').input(), boolArray: (<bool>[]).input(), stringMap: (<String, String>{}).input())).input(), boolean: (false).input(), float: ((0).toDouble()).input(), integer: (0).input(), string_: ('').input(), boolArray: (<bool>[]).input(), stringMap: (<String, String>{}).input())), dataList: pulumi.Input.asInput(<pulumi_plain_index.InnerData>[]), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
