import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_sync/index.dart' as pulumi_sync_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final block1 = pulumi_sync_index.Block('block-1');
    final block2 = pulumi_sync_index.Block('block-2');
    final block3 = pulumi_sync_index.Block('block-3');

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
