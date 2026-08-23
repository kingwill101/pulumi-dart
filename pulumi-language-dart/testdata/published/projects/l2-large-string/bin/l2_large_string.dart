import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_large/index.dart' as large_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final res = large_index.StringType('res', args: large_index.StringArgs(value: ('hello world').input(), ));

    _outputProperties = [
      pulumi.OutputProperty('output', pulumi.output(res.value).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
