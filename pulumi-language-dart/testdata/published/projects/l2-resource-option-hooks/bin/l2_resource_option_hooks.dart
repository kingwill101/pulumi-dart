import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_simple/index.dart' as simple_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final config = pulumi.Config();
    final hookTestFile = config.require('hookTestFile');
    final hookPreviewFile = config.require('hookPreviewFile');
    final createHook = pulumi.ResourceHook('createHook', (args) => pulumi.runResourceHookCommand(<String>['touch', hookTestFile]));
    final previewHook = pulumi.ResourceHook('previewHook', (args) => pulumi.runResourceHookCommand(<String>['touch', (hookPreviewFile).toString() + '_' + (args.name).toString()]), onDryRun: true);
    final res = simple_index.ResourceType('res', args: simple_index.ResourceArgs(value: (true).input(), ), options: pulumi.CustomResourceOptions(hooks: pulumi.ResourceHookBinding(beforeCreate: [createHook, previewHook]), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
