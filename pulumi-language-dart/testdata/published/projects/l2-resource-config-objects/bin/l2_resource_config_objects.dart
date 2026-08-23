import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_primitive/index.dart' as primitive_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final config = pulumi.Config();
    final plainNumberArray = config.requireObject<List<dynamic>>('plainNumberArray');
    final plainBooleanMap = config.requireObject<Map<String, dynamic>>('plainBooleanMap');
    final secretNumberArray = pulumi.secret(config.requireObject<List<dynamic>>('secretNumberArray')).apply<List<dynamic>>((value) => value as List<dynamic>);
    final secretBooleanMap = pulumi.secret(config.requireObject<Map<String, dynamic>>('secretBooleanMap')).apply<Map<String, dynamic>>((value) => value as Map<String, dynamic>);
    final plain = primitive_index.ResourceType('plain', args: primitive_index.ResourceArgs(boolean: (true).input(), float: ((3.5).toDouble()).input(), integer: (3).input(), string_: ('plain').input(), numberArray: ((plainNumberArray as List).map<double>((value) => (value as num).toDouble()).toList()).input(), booleanMap: (Map<String, bool>.from(plainBooleanMap as Map)).input(), ));
    final secret = primitive_index.ResourceType('secret', args: primitive_index.ResourceArgs(boolean: (true).input(), float: ((3.5).toDouble()).input(), integer: (3).input(), string_: ('secret').input(), numberArray: (pulumi.output(secretNumberArray).apply<List<double>>((value) => (value as List).map<double>((item) => (item as num).toDouble()).toList())).input(), booleanMap: (pulumi.output(secretBooleanMap).apply<Map<String, bool>>((value) => (value as Map).cast<String, bool>())).input(), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
