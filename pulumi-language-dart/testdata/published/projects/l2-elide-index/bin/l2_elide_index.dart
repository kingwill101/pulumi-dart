import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as simple_index;
import 'package:pulumi_simple_invoke/index.dart' as simple_invoke_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final res = simple_index.ResourceType('res', args: simple_index.ResourceArgs(value: (true).input(), ));

    _outputProperties = [
      pulumi.OutputProperty('inv', pulumi.output(simple_invoke_index.myInvokeOutput(simple_invoke_index.MyInvokeArgs(value: ('test').input())).apply((value) => value.result)).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
