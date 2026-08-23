import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_nestedobject/index.dart' as pulumi_nestedobject_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final source = pulumi_nestedobject_index.Container('source', args: pulumi_nestedobject_index.ContainerArgs(inputs: pulumi.Input.asInput(<String>['a', 'b']), ));
    final sink = pulumi_nestedobject_index.Container('sink', args: pulumi_nestedobject_index.ContainerArgs(inputs: pulumi.Input.asInput(pulumi.output(pulumi.output(source.details).apply((items) => [for (final item in items) item.value])).apply<List<String>>((value) => (value as List).cast<String>())), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
