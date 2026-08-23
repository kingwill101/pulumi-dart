import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_nestedobject/index.dart' as nestedobject_index;
import 'package:pulumi_simple/index.dart' as simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final target = simple_index.ResourceType('target', args: simple_index.ResourceArgs(value: (true).input(), ));
    final other = nestedobject_index.Container('other', args: nestedobject_index.ContainerArgs(inputs: (<String>['a']).input(), ));
    final skipped = nestedobject_index.Container('skipped', args: nestedobject_index.ContainerArgs(inputs: (<String>['b']).input(), ));

    _outputProperties = [
      pulumi.OutputProperty('skippedOutput', pulumi.output(pulumi.output(['skipped-', skipped.details.apply<dynamic>((value) => pulumi.indexValue(value, 0)?.key)]).apply<String>((values) => values.map((value) => value.toString()).join())).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
