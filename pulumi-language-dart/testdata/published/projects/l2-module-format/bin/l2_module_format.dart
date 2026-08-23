import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_module_format/index_concat_world.dart' as pulumi_module_format_index_concat_world;
import 'package:pulumi_module_format/index_resource.dart' as pulumi_module_format_index_resource;
import 'package:pulumi_module_format/mod.dart' as pulumi_module_format_mod;
import 'package:pulumi_module_format/mod_concat_world.dart' as pulumi_module_format_mod_concat_world;
import 'package:pulumi_module_format/mod_resource.dart' as pulumi_module_format_mod_resource;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final res1 = pulumi_module_format_mod_resource.ResourceType('res1', args: pulumi_module_format_mod_resource.ResourceArgs(text: (pulumi.output(pulumi_module_format_mod_concat_world.concatWorldOutput(pulumi_module_format_mod_concat_world.ConcatWorldArgs(value: ('hello').input())).apply((value) => value.result)).apply<String>((value) => value as String)).input(), ));
    final res2 = pulumi_module_format_mod_resource.ResourceType('res2', args: pulumi_module_format_mod_resource.ResourceArgs(text: (pulumi.output(pulumi_module_format_mod_concat_world.concatWorldOutput(pulumi_module_format_mod_concat_world.ConcatWorldArgs(value: ('goodbye').input())).apply((value) => value.result)).apply<String>((value) => value as String)).input(), ));
    final res3 = pulumi_module_format_mod.ResourceType('res3', args: pulumi_module_format_mod.ResourceArgs(text: (pulumi.output(pulumi_module_format_mod.concatWorldOutput(pulumi_module_format_mod.ConcatWorldArgs(value: ('hello').input())).apply((value) => value.result)).apply<String>((value) => value as String)).input(), ));
    final res4 = pulumi_module_format_mod.ResourceType('res4', args: pulumi_module_format_mod.ResourceArgs(text: (pulumi.output(pulumi_module_format_mod.concatWorldOutput(pulumi_module_format_mod.ConcatWorldArgs(value: ('goodbye').input())).apply((value) => value.result)).apply<String>((value) => value as String)).input(), ));
    final res5 = pulumi_module_format_index_resource.ResourceType('res5', args: pulumi_module_format_index_resource.ResourceArgs(text: (pulumi.output(pulumi_module_format_index_concat_world.concatWorldOutput(pulumi_module_format_index_concat_world.ConcatWorldArgs(value: ('bonjour').input())).apply((value) => value.result)).apply<String>((value) => value as String)).input(), ));
    final res6 = pulumi_module_format_index_resource.ResourceType('res6', args: pulumi_module_format_index_resource.ResourceArgs(text: (pulumi.output(pulumi_module_format_index_concat_world.concatWorldOutput(pulumi_module_format_index_concat_world.ConcatWorldArgs(value: ('youkoso').input())).apply((value) => value.result)).apply<String>((value) => value as String)).input(), ));
    final res7 = pulumi_module_format_index_resource.ResourceType('res7', args: pulumi_module_format_index_resource.ResourceArgs(text: (pulumi.output(pulumi_module_format_index_concat_world.concatWorldOutput(pulumi_module_format_index_concat_world.ConcatWorldArgs(value: ('guten tag').input())).apply((value) => value.result)).apply<String>((value) => value as String)).input(), ));

    _outputProperties = [
      pulumi.OutputProperty('out1', pulumi.output(pulumi.output(res1.call(args: pulumi_module_format_mod_resource.ResourceCallArgs(input: ('x').input()))).apply((value) => value.output)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('out2', pulumi.output(pulumi.output(res2.call(args: pulumi_module_format_mod_resource.ResourceCallArgs(input: ('xx').input()))).apply((value) => value.output)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('out3', pulumi.output(pulumi.output(res3.call(args: pulumi_module_format_mod.ResourceCallArgs(input: ('x').input()))).apply((value) => value.output)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('out4', pulumi.output(pulumi.output(res4.call(args: pulumi_module_format_mod.ResourceCallArgs(input: ('xx').input()))).apply((value) => value.output)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('out5', pulumi.output(pulumi.output(res5.call(args: pulumi_module_format_index_resource.ResourceCallArgs(input: ('x').input()))).apply((value) => value.output)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('out6', pulumi.output(pulumi.output(res6.call(args: pulumi_module_format_index_resource.ResourceCallArgs(input: ('xx').input()))).apply((value) => value.output)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('out7', pulumi.output(pulumi.output(res7.call(args: pulumi_module_format_index_resource.ResourceCallArgs(input: ('xxx').input()))).apply((value) => value.output)).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
