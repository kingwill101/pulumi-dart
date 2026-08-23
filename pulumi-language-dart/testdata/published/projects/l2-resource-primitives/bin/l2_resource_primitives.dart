import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_primitive/pulumi_primitive.dart' as primitive;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final res = primitive.index.ResourceType('res', args: primitive.index.ResourceArgs(boolean: (true).input(), float: (3.14).input(), integer: (42).input(), string_: ('hello').input(), numberArray: ([(-1).toDouble(), (0).toDouble(), (1).toDouble()]).input(), booleanMap: ({'t': true, 'f': false}).input(), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
