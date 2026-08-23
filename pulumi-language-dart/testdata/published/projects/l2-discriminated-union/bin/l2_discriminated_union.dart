import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_discriminated_union/index.dart' as discriminated_union_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final example1 = discriminated_union_index.Example('example1', args: discriminated_union_index.ExampleArgs(unionOf: ((discriminated_union_index.VariantOne(discriminantKind: ('variant1').input(), field1: ('v1 union').input())).toMap()).input(), arrayOfUnionOf: (<dynamic>[(discriminated_union_index.VariantOne(discriminantKind: ('variant1').input(), field1: ('v1 array(union)').input())).toMap()]).input(), ));
    final example2 = discriminated_union_index.Example('example2', args: discriminated_union_index.ExampleArgs(unionOf: ((discriminated_union_index.VariantTwo(discriminantKind: ('variant2').input(), field2: ('v2 union').input())).toMap()).input(), arrayOfUnionOf: (<dynamic>[(discriminated_union_index.VariantTwo(discriminantKind: ('variant2').input(), field2: ('v2 array(union)').input())).toMap(), (discriminated_union_index.VariantOne(discriminantKind: ('variant1').input(), field1: ('v1 array(union)').input())).toMap()]).input(), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
