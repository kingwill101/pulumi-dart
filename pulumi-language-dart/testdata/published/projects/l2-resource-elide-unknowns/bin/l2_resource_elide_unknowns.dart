import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_output/index.dart' as output_index;
import 'package:pulumi_output/providers.dart' as output_providers;
import 'package:pulumi_simple/index.dart' as simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final prov = output_providers.ProviderProvider('prov', args: output_providers.ProviderArgs(elideUnknowns: (true).input(), ));
    final unknown = output_index.ResourceType('unknown', args: output_index.ResourceArgs(value: ((1).toDouble()).input(), ), options: pulumi.CustomResourceOptions(provider: prov, ));
    final complex = output_index.ComplexResource('complex', args: output_index.ComplexResourceArgs(value: ((1).toDouble()).input(), ), options: pulumi.CustomResourceOptions(provider: prov, ));
    final res = simple_index.ResourceType('res', args: simple_index.ResourceArgs(value: (pulumi.output(pulumi.output([unknown.output, 'hello']).apply<dynamic>((values) => (values[0] == values[1]))).apply<bool>((value) => value is String ? bool.parse((value).toString()) : value as bool)).input(), ));
    final resArray = simple_index.ResourceType('resArray', args: simple_index.ResourceArgs(value: (pulumi.output(pulumi.output([complex.outputArray.apply<dynamic>((value) => pulumi.indexValue(value, 0)), 'hello']).apply<dynamic>((values) => (values[0] == values[1]))).apply<bool>((value) => value is String ? bool.parse((value).toString()) : value as bool)).input(), ));
    final resMap = simple_index.ResourceType('resMap', args: simple_index.ResourceArgs(value: (pulumi.output(pulumi.output([complex.outputMap.apply<dynamic>((value) => pulumi.indexValue(value, 'x')), 'hello']).apply<dynamic>((values) => (values[0] == values[1]))).apply<bool>((value) => value is String ? bool.parse((value).toString()) : value as bool)).input(), ));
    final resObject = simple_index.ResourceType('resObject', args: simple_index.ResourceArgs(value: (pulumi.output(pulumi.output([complex.outputObject.apply<dynamic>((value) => value?.output), 'hello']).apply<dynamic>((values) => (values[0] == values[1]))).apply<bool>((value) => value is String ? bool.parse((value).toString()) : value as bool)).input(), ));

    _outputProperties = [
      pulumi.OutputProperty('out', pulumi.output(unknown.output).apply<Object?>((value) => value)),
      pulumi.OutputProperty('outArray', pulumi.output(complex.outputArray.apply<dynamic>((value) => pulumi.indexValue(value, 0))).apply<Object?>((value) => value)),
      pulumi.OutputProperty('outMap', pulumi.output(complex.outputMap.apply<dynamic>((value) => pulumi.indexValue(value, 'x'))).apply<Object?>((value) => value)),
      pulumi.OutputProperty('outObject', pulumi.output(complex.outputObject.apply<dynamic>((value) => value?.output)).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
