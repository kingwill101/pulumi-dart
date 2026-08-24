import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_primitive/index.dart' as pulumi_primitive_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final config = pulumi.Config();
    final plainNumberArray = config.requireObject<List<dynamic>>('plainNumberArray');
    final plainBooleanMap = config.requireObject<Map<String, dynamic>>('plainBooleanMap');
    final secretNumberArray = pulumi.secret(config.requireObject<List<dynamic>>('secretNumberArray')).apply<List<dynamic>>((value) => value as List<dynamic>);
    final secretBooleanMap = pulumi.secret(config.requireObject<Map<String, dynamic>>('secretBooleanMap')).apply<Map<String, dynamic>>((value) => value as Map<String, dynamic>);
    final plain = pulumi_primitive_index.ResourceType('plain', args: pulumi_primitive_index.ResourceArgs(boolean: pulumi.Input.asInput(true), float: pulumi.Input.asInput((3.5).toDouble()), integer: pulumi.Input.asInput(3), string_: pulumi.Input.asInput('plain'), numberArray: pulumi.Input.asInput((plainNumberArray as List).map<double>((value) => (value as num).toDouble()).toList()), booleanMap: pulumi.Input.asInput(Map<String, bool>.from(plainBooleanMap as Map)), ));
    final secret = pulumi_primitive_index.ResourceType('secret', args: pulumi_primitive_index.ResourceArgs(boolean: pulumi.Input.asInput(true), float: pulumi.Input.asInput((3.5).toDouble()), integer: pulumi.Input.asInput(3), string_: pulumi.Input.asInput('secret'), numberArray: pulumi.Input.asInput(pulumi.output(secretNumberArray).apply<List<double>>((value) => (value as List).map<double>((item) => (item as num).toDouble()).toList())), booleanMap: pulumi.Input.asInput(pulumi.output(secretBooleanMap).apply<Map<String, bool>>((value) => (value as Map).cast<String, bool>())), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
