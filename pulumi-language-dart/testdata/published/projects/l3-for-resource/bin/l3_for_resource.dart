import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_nestedobject/index.dart' as pulumi_nestedobject_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final source = pulumi_nestedobject_index.Container('source', args: pulumi_nestedobject_index.ContainerArgs(inputs: pulumi.Input.asInput(<String>['a', 'b', 'c']), ));
    final receiver = pulumi_nestedobject_index.Receiver('receiver', args: pulumi_nestedobject_index.ReceiverArgs(details: pulumi.Input.asInput(pulumi.output(source.details).apply<List<pulumi_nestedobject_index.Detail>>((collection) => pulumi.inputList<pulumi_nestedobject_index.Detail>(<pulumi.Input<pulumi_nestedobject_index.Detail>>[for (final (resource, detail) in (collection as Iterable).cast<pulumi_nestedobject_index.Detail>().indexed) (pulumi_nestedobject_index.Detail(key: (detail.key).input(), value: (detail.value).input())).input()]) as pulumi.Input<List<pulumi_nestedobject_index.Detail>>)), ));
    final fromSimple = pulumi_nestedobject_index.Container('fromSimple', args: pulumi_nestedobject_index.ContainerArgs(inputs: pulumi.Input.asInput(pulumi.output(source.details).apply<List<String>>((collection) => pulumi.inputList<String>(<pulumi.Input<String>>[for (final (resource2, detail2) in (collection as Iterable).cast<pulumi_nestedobject_index.Detail>().indexed) (detail2.value).input()]) as pulumi.Input<List<String>>)), ));
    final mapped = pulumi_nestedobject_index.MapContainer('mapped', args: pulumi_nestedobject_index.MapContainerArgs(tags: pulumi.Input.asInput(pulumi.output(pulumi.output(source.details).apply<dynamic>((collection) => {for (final (resource3, detail3) in (collection as Iterable).indexed) detail3.key: detail3.value})).apply<Map<String, String>>((value) => (value as Map).cast<String, String>())), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
