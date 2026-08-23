import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_plain/index.dart' as plain_index;
import 'package:pulumi_primitive/index.dart' as primitive_index;
import 'package:pulumi_primitive_ref/index.dart' as primitive_ref_index;
import 'package:pulumi_ref_ref/index.dart' as ref_ref_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final prim = primitive_index.ResourceType('prim', args: primitive_index.ResourceArgs(boolean: (false).input(), float: ((2.17).toDouble()).input(), integer: (-12).input(), string_: ('Goodbye').input(), numberArray: (<double>[(0).toDouble(), (1).toDouble()]).input(), booleanMap: (<String, bool>{'my key': false, 'my.key': true, 'my-key': false, 'my_key': true, 'MY_KEY': false, 'myKey': true}).input(), ));
    final ref = primitive_ref_index.ResourceType('ref', args: primitive_ref_index.ResourceArgs(data: (primitive_ref_index.Data(boolean: (false).input(), float: ((2.17).toDouble()).input(), integer: (-12).input(), string_: ('Goodbye').input(), boolArray: (<bool>[false, true]).input(), stringMap: (<String, String>{'my key': 'one', 'my.key': 'two', 'my-key': 'three', 'my_key': 'four', 'MY_KEY': 'five', 'myKey': 'six'}).input())).input(), ));
    final rref = ref_ref_index.ResourceType('rref', args: ref_ref_index.ResourceArgs(data: (ref_ref_index.Data(innerData: (ref_ref_index.InnerData(boolean: (false).input(), float: ((-2.17).toDouble()).input(), integer: (123).input(), string_: ('Goodbye').input(), boolArray: (<bool>[]).input(), stringMap: (<String, String>{'my key': 'one', 'my.key': 'two', 'my-key': 'three', 'my_key': 'four', 'MY_KEY': 'five', 'myKey': 'six'}).input())).input(), boolean: (true).input(), float: ((4.5).toDouble()).input(), integer: (1024).input(), string_: ('Hello').input(), boolArray: (<bool>[]).input(), stringMap: (<String, String>{'my key': 'one', 'my.key': 'two', 'my-key': 'three', 'my_key': 'four', 'MY_KEY': 'five', 'myKey': 'six'}).input())).input(), ));
    final plains = plain_index.ResourceType('plains', args: plain_index.ResourceArgs(data: (plain_index.Data(innerData: (plain_index.InnerData(boolean: (false).input(), float: ((2.17).toDouble()).input(), integer: (-12).input(), string_: ('Goodbye').input(), boolArray: (<bool>[false, true]).input(), stringMap: (<String, String>{'my key': 'one', 'my.key': 'two', 'my-key': 'three', 'my_key': 'four', 'MY_KEY': 'five', 'myKey': 'six'}).input())).input(), boolean: (true).input(), float: ((4.5).toDouble()).input(), integer: (1024).input(), string_: ('Hello').input(), boolArray: (<bool>[true, false]).input(), stringMap: (<String, String>{'my key': 'one', 'my.key': 'two', 'my-key': 'three', 'my_key': 'four', 'MY_KEY': 'five', 'myKey': 'six'}).input())).input(), nonPlainData: (plain_index.Data(innerData: (plain_index.InnerData(boolean: (false).input(), float: ((2.17).toDouble()).input(), integer: (-12).input(), string_: ('Goodbye').input(), boolArray: (<bool>[false, true]).input(), stringMap: (<String, String>{'my key': 'one', 'my.key': 'two', 'my-key': 'three', 'my_key': 'four', 'MY_KEY': 'five', 'myKey': 'six'}).input())).input(), boolean: (true).input(), float: ((4.5).toDouble()).input(), integer: (1024).input(), string_: ('Hello').input(), boolArray: (<bool>[true, false]).input(), stringMap: (<String, String>{'my key': 'one', 'my.key': 'two', 'my-key': 'three', 'my_key': 'four', 'MY_KEY': 'five', 'myKey': 'six'}).input())).input(), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
