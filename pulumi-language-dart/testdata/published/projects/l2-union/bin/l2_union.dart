import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_union/index.dart' as pulumi_union_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final stringOrIntegerExample1 = pulumi_union_index.Example('stringOrIntegerExample1', args: pulumi_union_index.ExampleArgs(stringOrIntegerProperty: pulumi.Input.asInput(42), ));
    final stringOrIntegerExample2 = pulumi_union_index.Example('stringOrIntegerExample2', args: pulumi_union_index.ExampleArgs(stringOrIntegerProperty: pulumi.Input.asInput('forty two'), ));
    final mapMapUnionExample = pulumi_union_index.Example('mapMapUnionExample', args: pulumi_union_index.ExampleArgs(mapMapUnionProperty: pulumi.Input.asInput(<String, Map<String, dynamic>>{'key1': <String, dynamic>{'key1a': 'value1a'}}), ));
    final stringEnumUnionListExample = pulumi_union_index.Example('stringEnumUnionListExample', args: pulumi_union_index.ExampleArgs(stringEnumUnionListProperty: pulumi.Input.asInput(<dynamic>['Listen', 'Send', 'NotAnEnumValue']), ));
    final safeEnumExample = pulumi_union_index.Example('safeEnumExample', args: pulumi_union_index.ExampleArgs(typedEnumProperty: pulumi.Input.asInput('Block'), ));
    final enumOutputExample = pulumi_union_index.EnumOutput('enumOutputExample', args: pulumi_union_index.EnumOutputArgs(name: pulumi.Input.asInput('example'), ));
    final outputEnumExample = pulumi_union_index.Example('outputEnumExample', args: pulumi_union_index.ExampleArgs(typedEnumProperty: pulumi.Input.asInput(pulumi.output(enumOutputExample.type).apply<String>((value) => (value).toString())), ));

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
