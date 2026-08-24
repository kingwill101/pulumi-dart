import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_module_format/index_concat_world.dart' as pulumi_module_format_index_concat_world;
import 'package:pulumi_module_format/index_resource.dart' as pulumi_module_format_index_resource;
import 'package:pulumi_module_format/mod.dart' as pulumi_module_format_mod;
import 'package:pulumi_module_format/mod_concat_world.dart' as pulumi_module_format_mod_concat_world;
import 'package:pulumi_module_format/mod_resource.dart' as pulumi_module_format_mod_resource;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final res1 = pulumi_module_format_mod_resource.ResourceType('res1', args: pulumi_module_format_mod_resource.ResourceArgs(text: pulumi.Input.asInput(pulumi.output(pulumi_module_format_mod_concat_world.concatWorldOutput(pulumi_module_format_mod_concat_world.ConcatWorldArgs(value: ('hello').input())).apply<dynamic>((value) => value.result)).apply<String>((value) => (value).toString())), ));
    final res2 = pulumi_module_format_mod_resource.ResourceType('res2', args: pulumi_module_format_mod_resource.ResourceArgs(text: pulumi.Input.asInput(pulumi.output(pulumi_module_format_mod_concat_world.concatWorldOutput(pulumi_module_format_mod_concat_world.ConcatWorldArgs(value: ('goodbye').input())).apply<dynamic>((value) => value.result)).apply<String>((value) => (value).toString())), ));
    final res3 = pulumi_module_format_mod.ResourceType('res3', args: pulumi_module_format_mod.ResourceArgs(text: pulumi.Input.asInput(pulumi.output(pulumi_module_format_mod.concatWorldOutput(pulumi_module_format_mod.ConcatWorldArgs(value: ('hello').input())).apply<dynamic>((value) => value.result)).apply<String>((value) => (value).toString())), ));
    final res4 = pulumi_module_format_mod.ResourceType('res4', args: pulumi_module_format_mod.ResourceArgs(text: pulumi.Input.asInput(pulumi.output(pulumi_module_format_mod.concatWorldOutput(pulumi_module_format_mod.ConcatWorldArgs(value: ('goodbye').input())).apply<dynamic>((value) => value.result)).apply<String>((value) => (value).toString())), ));
    final res5 = pulumi_module_format_index_resource.ResourceType('res5', args: pulumi_module_format_index_resource.ResourceArgs(text: pulumi.Input.asInput(pulumi.output(pulumi_module_format_index_concat_world.concatWorldOutput(pulumi_module_format_index_concat_world.ConcatWorldArgs(value: ('bonjour').input())).apply<dynamic>((value) => value.result)).apply<String>((value) => (value).toString())), ));
    final res6 = pulumi_module_format_index_resource.ResourceType('res6', args: pulumi_module_format_index_resource.ResourceArgs(text: pulumi.Input.asInput(pulumi.output(pulumi_module_format_index_concat_world.concatWorldOutput(pulumi_module_format_index_concat_world.ConcatWorldArgs(value: ('youkoso').input())).apply<dynamic>((value) => value.result)).apply<String>((value) => (value).toString())), ));
    final res7 = pulumi_module_format_index_resource.ResourceType('res7', args: pulumi_module_format_index_resource.ResourceArgs(text: pulumi.Input.asInput(pulumi.output(pulumi_module_format_index_concat_world.concatWorldOutput(pulumi_module_format_index_concat_world.ConcatWorldArgs(value: ('guten tag').input())).apply<dynamic>((value) => value.result)).apply<String>((value) => (value).toString())), ));

    _outputProperties = [
      pulumi.OutputProperty('out1', pulumi.output(pulumi.output(res1.call(args: pulumi_module_format_mod_resource.ResourceCallArgs(input: ('x').input()))).apply<dynamic>((value) => value.output)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('out2', pulumi.output(pulumi.output(res2.call(args: pulumi_module_format_mod_resource.ResourceCallArgs(input: ('xx').input()))).apply<dynamic>((value) => value.output)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('out3', pulumi.output(pulumi.output(res3.call(args: pulumi_module_format_mod.ResourceCallArgs(input: ('x').input()))).apply<dynamic>((value) => value.output)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('out4', pulumi.output(pulumi.output(res4.call(args: pulumi_module_format_mod.ResourceCallArgs(input: ('xx').input()))).apply<dynamic>((value) => value.output)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('out5', pulumi.output(pulumi.output(res5.call(args: pulumi_module_format_index_resource.ResourceCallArgs(input: ('x').input()))).apply<dynamic>((value) => value.output)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('out6', pulumi.output(pulumi.output(res6.call(args: pulumi_module_format_index_resource.ResourceCallArgs(input: ('xx').input()))).apply<dynamic>((value) => value.output)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('out7', pulumi.output(pulumi.output(res7.call(args: pulumi_module_format_index_resource.ResourceCallArgs(input: ('xxx').input()))).apply<dynamic>((value) => value.output)).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
