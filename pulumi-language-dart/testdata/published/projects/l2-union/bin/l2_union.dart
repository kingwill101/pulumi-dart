import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_union/index.dart' as union_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final stringOrIntegerExample1 = union_index.Example('stringOrIntegerExample1', args: union_index.ExampleArgs(stringOrIntegerProperty: (42).input(), ));
    final stringOrIntegerExample2 = union_index.Example('stringOrIntegerExample2', args: union_index.ExampleArgs(stringOrIntegerProperty: ('forty two').input(), ));
    final mapMapUnionExample = union_index.Example('mapMapUnionExample', args: union_index.ExampleArgs(mapMapUnionProperty: (<String, Map<String, dynamic>>{'key1': <String, dynamic>{'key1a': 'value1a'}}).input(), ));
    final stringEnumUnionListExample = union_index.Example('stringEnumUnionListExample', args: union_index.ExampleArgs(stringEnumUnionListProperty: (<dynamic>['Listen', 'Send', 'NotAnEnumValue']).input(), ));
    final safeEnumExample = union_index.Example('safeEnumExample', args: union_index.ExampleArgs(typedEnumProperty: ('Block').input(), ));
    final enumOutputExample = union_index.EnumOutput('enumOutputExample', args: union_index.EnumOutputArgs(name: ('example').input(), ));
    final outputEnumExample = union_index.Example('outputEnumExample', args: union_index.ExampleArgs(typedEnumProperty: (pulumi.output(enumOutputExample.type).apply<String>((value) => value as String)).input(), ));

    _outputProperties = [
      pulumi.OutputProperty('mapMapUnionOutput', pulumi.output(mapMapUnionExample.mapMapUnionProperty).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
