import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_reservednames/index.dart' as pulumi_reservednames_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final elem = pulumi_reservednames_index.ElementTypeResource('elem', args: pulumi_reservednames_index.ElementTypeArgs(elementType: (pulumi_reservednames_index.ElementType(elementType: ('nested').input())).input(), ));

    _outputProperties = [
      pulumi.OutputProperty('elementType', pulumi.output(elem.elementType.apply<dynamic>((value) => value?.elementType)).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
