import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_nestedobject/index.dart' as pulumi_nestedobject_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final receiverIgnore = pulumi_nestedobject_index.Receiver('receiverIgnore', args: pulumi_nestedobject_index.ReceiverArgs(details: pulumi.Input.asInput(<pulumi_nestedobject_index.Detail>[pulumi_nestedobject_index.Detail(key: ('a').input(), value: ('b').input())]), ), options: pulumi.CustomResourceOptions(ignoreChanges: ['details[0].key'], ));
    final mapIgnore = pulumi_nestedobject_index.MapContainer('mapIgnore', args: pulumi_nestedobject_index.MapContainerArgs(tags: pulumi.Input.asInput(<String, String>{'env': 'prod'}), ), options: pulumi.CustomResourceOptions(ignoreChanges: ['tags["env"]', 'tags["with.dot"]', 'tags["with escaped \\""]'], ));
    final noIgnore = pulumi_nestedobject_index.Target('noIgnore', args: pulumi_nestedobject_index.TargetArgs(name: pulumi.Input.asInput('nothing'), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
