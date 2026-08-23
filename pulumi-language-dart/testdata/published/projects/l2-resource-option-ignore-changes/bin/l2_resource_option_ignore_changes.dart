import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_nestedobject/index.dart' as nestedobject_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final receiverIgnore = nestedobject_index.Receiver('receiverIgnore', args: nestedobject_index.ReceiverArgs(details: ([nestedobject_index.Detail(key: ('a').input(), value: ('b').input())]).input(), ), options: pulumi.CustomResourceOptions(ignoreChanges: ['details[0].key'], ));
    final mapIgnore = nestedobject_index.MapContainer('mapIgnore', args: nestedobject_index.MapContainerArgs(tags: ({'env': 'prod'}).input(), ), options: pulumi.CustomResourceOptions(ignoreChanges: ['tags["env"]', 'tags["with.dot"]', 'tags["with escaped \\""]'], ));
    final noIgnore = nestedobject_index.Target('noIgnore', args: nestedobject_index.TargetArgs(name: ('nothing').input(), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
