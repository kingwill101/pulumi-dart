import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_output/index.dart' as pulumi_output_index;
import 'package:pulumi_output/providers.dart' as pulumi_output_providers;
import 'package:pulumi_simple/index.dart' as pulumi_simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final prov = pulumi_output_providers.ProviderProvider('prov', args: pulumi_output_providers.ProviderArgs(elideUnknowns: pulumi.Input.asInput(true), ));
    final unknown = pulumi_output_index.ResourceType('unknown', args: pulumi_output_index.ResourceArgs(value: pulumi.Input.asInput((1).toDouble()), ), options: pulumi.CustomResourceOptions(provider: prov, ));
    final complex = pulumi_output_index.ComplexResource('complex', args: pulumi_output_index.ComplexResourceArgs(value: pulumi.Input.asInput((1).toDouble()), ), options: pulumi.CustomResourceOptions(provider: prov, ));
    final res = pulumi_simple_index.ResourceType('res', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(pulumi.output(pulumi.output([unknown.output, 'hello']).apply<dynamic>((values) => (values[0] == values[1]))).apply<bool>((value) => value is String ? bool.parse((value).toString()) : value as bool)), ));
    final resArray = pulumi_simple_index.ResourceType('resArray', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(pulumi.output(pulumi.output([complex.outputArray.apply<dynamic>((value) => pulumi.indexValue(value, 0)), 'hello']).apply<dynamic>((values) => (values[0] == values[1]))).apply<bool>((value) => value is String ? bool.parse((value).toString()) : value as bool)), ));
    final resMap = pulumi_simple_index.ResourceType('resMap', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(pulumi.output(pulumi.output([complex.outputMap.apply<dynamic>((value) => pulumi.indexValue(value, 'x')), 'hello']).apply<dynamic>((values) => (values[0] == values[1]))).apply<bool>((value) => value is String ? bool.parse((value).toString()) : value as bool)), ));
    final resObject = pulumi_simple_index.ResourceType('resObject', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(pulumi.output(pulumi.output([complex.outputObject.apply<dynamic>((value) => value?.output), 'hello']).apply<dynamic>((values) => (values[0] == values[1]))).apply<bool>((value) => value is String ? bool.parse((value).toString()) : value as bool)), ));

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
