import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_flaky/index.dart' as flaky_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final config = pulumi.Config();
    final hookTestFile = config.require('hookTestFile');
    final retryHook = pulumi.ErrorHook('retryHook', (args) => pulumi.runErrorHookCommand(<String>['touch', hookTestFile]));
    final res = flaky_index.FlakyCreate('res', options: pulumi.CustomResourceOptions(hooks: pulumi.ResourceHookBinding(onError: [retryHook]), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
