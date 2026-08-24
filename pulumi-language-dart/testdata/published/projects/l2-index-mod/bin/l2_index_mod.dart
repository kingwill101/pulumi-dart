import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_index_mod/index_mine.dart' as pulumi_index_mod_index_mine;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final res1 = pulumi_index_mod_index_mine.ResourceIndexMine('res1', args: pulumi_index_mod_index_mine.ResourceIndexMineArgs(text: pulumi.Input.asInput(pulumi.output(pulumi_index_mod_index_mine.concatWorldIndexMineOutput(pulumi_index_mod_index_mine.ConcatWorldIndexMineArgs(value: ('hello').input())).apply<dynamic>((value) => value.result)).apply<String>((value) => (value).toString())), ));
    final res2 = pulumi_index_mod_index_mine.ResourceType('res2', args: pulumi_index_mod_index_mine.ResourceArgs(text: pulumi.Input.asInput(pulumi.output(pulumi_index_mod_index_mine.concatWorldOutput(pulumi_index_mod_index_mine.ConcatWorldArgs(value: ('goodbye').input())).apply<dynamic>((value) => value.result)).apply<String>((value) => (value).toString())), ));

    _outputProperties = [
      pulumi.OutputProperty('out1', pulumi.output(pulumi.output(res1.call(args: pulumi_index_mod_index_mine.ResourceCallIndexMineArgs(input: ('x').input()))).apply<dynamic>((value) => value.output)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('out2', pulumi.output(pulumi.output(res2.call(args: pulumi_index_mod_index_mine.ResourceCallArgs(input: ('xx').input()))).apply<dynamic>((value) => value.output)).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
