import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_discriminated_union_many/index.dart' as pulumi_discriminated_union_many_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final example1 = pulumi_discriminated_union_many_index.Example('example1', args: pulumi_discriminated_union_many_index.ExampleArgs(unionOf: pulumi.Input.asInput((pulumi_discriminated_union_many_index.Variant1(discriminantKind: ('variant1').input(), payload: ('p1').input(), extra: ('e1').input())).toMap()), ));
    final example2 = pulumi_discriminated_union_many_index.Example('example2', args: pulumi_discriminated_union_many_index.ExampleArgs(unionOf: pulumi.Input.asInput((pulumi_discriminated_union_many_index.Variant2(discriminantKind: ('variant2').input(), payload: ('p2').input(), extra: ('e2').input())).toMap()), ));
    final example3 = pulumi_discriminated_union_many_index.Example('example3', args: pulumi_discriminated_union_many_index.ExampleArgs(unionOf: pulumi.Input.asInput((pulumi_discriminated_union_many_index.Variant3(discriminantKind: ('variant3').input(), payload: ('p3').input(), count: (3).input())).toMap()), ));
    final example4 = pulumi_discriminated_union_many_index.Example('example4', args: pulumi_discriminated_union_many_index.ExampleArgs(unionOf: pulumi.Input.asInput((pulumi_discriminated_union_many_index.Variant4(discriminantKind: ('variant4').input(), payload: ('p4').input(), enabled: (true).input())).toMap()), ));
    final example5 = pulumi_discriminated_union_many_index.Example('example5', args: pulumi_discriminated_union_many_index.ExampleArgs(unionOf: pulumi.Input.asInput((pulumi_discriminated_union_many_index.Variant5(discriminantKind: ('variant5').input(), payload: ('p5').input(), label: ('l5').input())).toMap()), ));
    final example6 = pulumi_discriminated_union_many_index.Example('example6', args: pulumi_discriminated_union_many_index.ExampleArgs(unionOf: pulumi.Input.asInput((pulumi_discriminated_union_many_index.Variant6(discriminantKind: ('variant6').input(), payload: ('p6').input(), code: (6).input())).toMap()), ));
    final example7 = pulumi_discriminated_union_many_index.Example('example7', args: pulumi_discriminated_union_many_index.ExampleArgs(unionOf: pulumi.Input.asInput((pulumi_discriminated_union_many_index.Variant7(discriminantKind: ('variant7').input(), payload: ('p7').input(), message: ('m7').input())).toMap()), ));
    final example8 = pulumi_discriminated_union_many_index.Example('example8', args: pulumi_discriminated_union_many_index.ExampleArgs(unionOf: pulumi.Input.asInput((pulumi_discriminated_union_many_index.Variant8(discriminantKind: ('variant8').input(), payload: ('p8').input(), size: (8).input())).toMap()), ));
    final example9 = pulumi_discriminated_union_many_index.Example('example9', args: pulumi_discriminated_union_many_index.ExampleArgs(unionOf: pulumi.Input.asInput((pulumi_discriminated_union_many_index.Variant9(discriminantKind: ('variant9').input(), payload: ('p9').input(), flag: (false).input())).toMap()), ));
    final example10 = pulumi_discriminated_union_many_index.Example('example10', args: pulumi_discriminated_union_many_index.ExampleArgs(unionOf: pulumi.Input.asInput((pulumi_discriminated_union_many_index.Variant10(discriminantKind: ('variant10').input(), payload: ('p10').input(), note: ('n10').input())).toMap()), ));
    final subset1 = pulumi_discriminated_union_many_index.SubsetExample('subset1', args: pulumi_discriminated_union_many_index.SubsetExampleArgs(unionOf: pulumi.Input.asInput((pulumi_discriminated_union_many_index.Variant3(discriminantKind: ('variant3').input(), payload: ('sp').input(), count: (33).input())).toMap()), ));
    final example11 = pulumi_discriminated_union_many_index.Example('example11', args: pulumi_discriminated_union_many_index.ExampleArgs(unionOf: pulumi.Input.asInput(subset1.unionOf), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
