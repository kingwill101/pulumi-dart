import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_fail_on_create/index.dart' as pulumi_fail_on_create_index;
import 'package:pulumi_simple/index.dart' as pulumi_simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final failing = pulumi_fail_on_create_index.ResourceType('failing', args: pulumi_fail_on_create_index.ResourceArgs(value: pulumi.Input.asInput(false), ));
    final recoveredValue = pulumi_simple_index.ResourceType('recovered_value', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(pulumi.output(pulumi.output(failing.value).recover((caught, _) { final error = caught.toString(); return pulumi.input((error != '')); })).apply<bool>((value) => value is String ? bool.parse((value).toString()) : value as bool)), ));
    final independent = pulumi_simple_index.ResourceType('independent', args: pulumi_simple_index.ResourceArgs(value: pulumi.Input.asInput(true), ));

    _outputProperties = [
      pulumi.OutputProperty('recovered', pulumi.output(pulumi.output(failing.urn).recover((caught, _) { final error = caught.toString(); return pulumi.input('recovered: ' + (error).toString()); })).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
