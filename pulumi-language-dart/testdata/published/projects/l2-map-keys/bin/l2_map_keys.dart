import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_plain/index.dart' as pulumi_plain_index;
import 'package:pulumi_primitive/index.dart' as pulumi_primitive_index;
import 'package:pulumi_primitive_ref/index.dart' as pulumi_primitive_ref_index;
import 'package:pulumi_ref_ref/index.dart' as pulumi_ref_ref_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final prim = pulumi_primitive_index.ResourceType('prim', args: pulumi_primitive_index.ResourceArgs(boolean: pulumi.Input.asInput(false), float: pulumi.Input.asInput((2.17).toDouble()), integer: pulumi.Input.asInput(-12), string_: pulumi.Input.asInput('Goodbye'), numberArray: pulumi.Input.asInput(<double>[(0).toDouble(), (1).toDouble()]), booleanMap: pulumi.Input.asInput(<String, bool>{'my key': false, 'my.key': true, 'my-key': false, 'my_key': true, 'MY_KEY': false, 'myKey': true}), ));
    final ref = pulumi_primitive_ref_index.ResourceType('ref', args: pulumi_primitive_ref_index.ResourceArgs(data: pulumi.Input.asInput(pulumi_primitive_ref_index.Data(boolean: (false).input(), float: ((2.17).toDouble()).input(), integer: (-12).input(), string_: ('Goodbye').input(), boolArray: (<bool>[false, true]).input(), stringMap: (<String, String>{'my key': 'one', 'my.key': 'two', 'my-key': 'three', 'my_key': 'four', 'MY_KEY': 'five', 'myKey': 'six'}).input())), ));
    final rref = pulumi_ref_ref_index.ResourceType('rref', args: pulumi_ref_ref_index.ResourceArgs(data: pulumi.Input.asInput(pulumi_ref_ref_index.Data(innerData: (pulumi_ref_ref_index.InnerData(boolean: (false).input(), float: ((-2.17).toDouble()).input(), integer: (123).input(), string_: ('Goodbye').input(), boolArray: (<bool>[]).input(), stringMap: (<String, String>{'my key': 'one', 'my.key': 'two', 'my-key': 'three', 'my_key': 'four', 'MY_KEY': 'five', 'myKey': 'six'}).input())).input(), boolean: (true).input(), float: ((4.5).toDouble()).input(), integer: (1024).input(), string_: ('Hello').input(), boolArray: (<bool>[]).input(), stringMap: (<String, String>{'my key': 'one', 'my.key': 'two', 'my-key': 'three', 'my_key': 'four', 'MY_KEY': 'five', 'myKey': 'six'}).input())), ));
    final plains = pulumi_plain_index.ResourceType('plains', args: pulumi_plain_index.ResourceArgs(data: pulumi.Input.asInput(pulumi_plain_index.Data(innerData: (pulumi_plain_index.InnerData(boolean: (false).input(), float: ((2.17).toDouble()).input(), integer: (-12).input(), string_: ('Goodbye').input(), boolArray: (<bool>[false, true]).input(), stringMap: (<String, String>{'my key': 'one', 'my.key': 'two', 'my-key': 'three', 'my_key': 'four', 'MY_KEY': 'five', 'myKey': 'six'}).input())).input(), boolean: (true).input(), float: ((4.5).toDouble()).input(), integer: (1024).input(), string_: ('Hello').input(), boolArray: (<bool>[true, false]).input(), stringMap: (<String, String>{'my key': 'one', 'my.key': 'two', 'my-key': 'three', 'my_key': 'four', 'MY_KEY': 'five', 'myKey': 'six'}).input())), nonPlainData: pulumi.Input.asInput(pulumi_plain_index.Data(innerData: (pulumi_plain_index.InnerData(boolean: (false).input(), float: ((2.17).toDouble()).input(), integer: (-12).input(), string_: ('Goodbye').input(), boolArray: (<bool>[false, true]).input(), stringMap: (<String, String>{'my key': 'one', 'my.key': 'two', 'my-key': 'three', 'my_key': 'four', 'MY_KEY': 'five', 'myKey': 'six'}).input())).input(), boolean: (true).input(), float: ((4.5).toDouble()).input(), integer: (1024).input(), string_: ('Hello').input(), boolArray: (<bool>[true, false]).input(), stringMap: (<String, String>{'my key': 'one', 'my.key': 'two', 'my-key': 'three', 'my_key': 'four', 'MY_KEY': 'five', 'myKey': 'six'}).input())), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
