import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_fail_on_create/index.dart' as fail_on_create_index;
import 'package:pulumi_simple/index.dart' as simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final failing = fail_on_create_index.ResourceType('failing', args: fail_on_create_index.ResourceArgs(value: (false).input(), ));
    final recoveredValue = simple_index.ResourceType('recovered_value', args: simple_index.ResourceArgs(value: (pulumi.output(pulumi.output(failing.value).recover((caught, _) { final error = caught.toString(); return pulumi.input((error != '')); })).apply<bool>((value) => value is String ? bool.parse((value).toString()) : value as bool)).input(), ));
    final independent = simple_index.ResourceType('independent', args: simple_index.ResourceArgs(value: (true).input(), ));

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
