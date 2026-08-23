import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_output/index.dart' as output_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final res = output_index.ComplexResource('res', args: output_index.ComplexResourceArgs(value: ((1).toDouble()).input(), ));

    _outputProperties = [
      pulumi.OutputProperty('entriesOutput', pulumi.output(pulumi.output(res.outputMap).apply<dynamic>((value) => pulumi.mapEntries(value))).apply<Object?>((value) => value)),
      pulumi.OutputProperty('lookupOutput', pulumi.output(pulumi.output(res.outputMap).apply<dynamic>((value) => pulumi.mapLookup(value, 'x', 'default'))).apply<Object?>((value) => value)),
      pulumi.OutputProperty('lookupOutputDefault', pulumi.output(pulumi.output(res.outputMap).apply<dynamic>((value) => pulumi.mapLookup(value, 'y', 'default'))).apply<Object?>((value) => value)),
      pulumi.OutputProperty('entriesObjectOutput', pulumi.output(pulumi.output(res.outputObject).apply<dynamic>((value) => pulumi.mapEntries(value.toMap()))).apply<Object?>((value) => value)),
      pulumi.OutputProperty('lookupObjectOutput', pulumi.output(pulumi.output(res.outputObject).apply<dynamic>((value) => pulumi.mapLookup(value.toMap(), 'output', 'default'))).apply<Object?>((value) => value)),
      pulumi.OutputProperty('lookupObjectOutputDefault', pulumi.output(pulumi.output(res.outputObject).apply<dynamic>((value) => pulumi.mapLookup(value.toMap(), 'missing', 'default'))).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
