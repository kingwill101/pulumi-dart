import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_discriminated_union/index.dart' as pulumi_discriminated_union_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final example1 = pulumi_discriminated_union_index.Example('example1', args: pulumi_discriminated_union_index.ExampleArgs(unionOf: pulumi.Input.asInput((pulumi_discriminated_union_index.VariantOne(discriminantKind: ('variant1').input(), field1: ('v1 union').input())).toMap()), arrayOfUnionOf: pulumi.Input.asInput(<dynamic>[(pulumi_discriminated_union_index.VariantOne(discriminantKind: ('variant1').input(), field1: ('v1 array(union)').input())).toMap()]), ));
    final example2 = pulumi_discriminated_union_index.Example('example2', args: pulumi_discriminated_union_index.ExampleArgs(unionOf: pulumi.Input.asInput((pulumi_discriminated_union_index.VariantTwo(discriminantKind: ('variant2').input(), field2: ('v2 union').input())).toMap()), arrayOfUnionOf: pulumi.Input.asInput(<dynamic>[(pulumi_discriminated_union_index.VariantTwo(discriminantKind: ('variant2').input(), field2: ('v2 array(union)').input())).toMap(), (pulumi_discriminated_union_index.VariantOne(discriminantKind: ('variant1').input(), field1: ('v1 array(union)').input())).toMap()]), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
