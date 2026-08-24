import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_primitive/index.dart' as pulumi_primitive_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final res = pulumi_primitive_index.ResourceType('res', args: pulumi_primitive_index.ResourceArgs(boolean: pulumi.Input.asInput(true), float: pulumi.Input.asInput((3.14).toDouble()), integer: pulumi.Input.asInput(42), string_: pulumi.Input.asInput('hello'), numberArray: pulumi.Input.asInput(<double>[(-1).toDouble(), (0).toDouble(), (1).toDouble()]), booleanMap: pulumi.Input.asInput(<String, bool>{'t': true, 'f': false}), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
