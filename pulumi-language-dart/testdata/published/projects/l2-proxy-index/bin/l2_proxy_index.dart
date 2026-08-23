import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_ref_ref/index.dart' as ref_ref_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final res = ref_ref_index.ResourceType('res', args: ref_ref_index.ResourceArgs(data: (ref_ref_index.Data(innerData: (ref_ref_index.InnerData(boolean: (false).input(), float: ((2.17).toDouble()).input(), integer: (-12).input(), string_: ('Goodbye').input(), boolArray: (<bool>[false, true]).input(), stringMap: (<String, String>{'two': 'turtle doves', 'three': 'french hens'}).input())).input(), boolean: (true).input(), float: ((4.5).toDouble()).input(), integer: (1024).input(), string_: ('Hello').input(), boolArray: (<bool>[true]).input(), stringMap: (<String, String>{'x': '100', 'y': '200'}).input(), innerDataList: (<ref_ref_index.InnerData>[ref_ref_index.InnerData(boolean: (false).input(), float: ((3.14).toDouble()).input(), integer: (42).input(), string_: ('Partridge').input(), boolArray: (<bool>[true]).input(), stringMap: (<String, String>{'one': 'in a pear tree'}).input())]).input())).input(), ));

    _outputProperties = [
      pulumi.OutputProperty('bool', pulumi.output(res.data.apply<dynamic>((value) => value?.boolean)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('array', pulumi.output(res.data.apply<dynamic>((value) => pulumi.output(value?.boolArray).apply<dynamic>((nested0) => pulumi.indexValue(nested0, 0)))).apply<Object?>((value) => value)),
      pulumi.OutputProperty('map', pulumi.output(res.data.apply<dynamic>((value) => pulumi.output(value?.stringMap).apply<dynamic>((nested0) => pulumi.indexValue(nested0, 'x')))).apply<Object?>((value) => value)),
      pulumi.OutputProperty('nested', pulumi.output(res.data.apply<dynamic>((value) => pulumi.output(value?.innerData).apply<dynamic>((nested0) => pulumi.output(nested0?.stringMap).apply<dynamic>((nested1) => pulumi.indexValue(nested1, 'three'))))).apply<Object?>((value) => value)),
      pulumi.OutputProperty('listIndex', pulumi.output(res.data.apply<dynamic>((value) => pulumi.output(value?.innerDataList).apply<dynamic>((nested0) => pulumi.indexValue(nested0, 0)?.string_))).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
