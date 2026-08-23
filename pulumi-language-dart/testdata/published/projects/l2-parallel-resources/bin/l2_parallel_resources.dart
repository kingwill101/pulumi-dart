import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_sync/index.dart' as sync_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final block1 = sync_index.Block('block-1');
    final block2 = sync_index.Block('block-2');
    final block3 = sync_index.Block('block-3');

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
