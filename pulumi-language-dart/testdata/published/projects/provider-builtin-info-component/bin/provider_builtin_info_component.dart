import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_builtin_info_component/index.dart' as pulumi_builtin_info_component_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final res = pulumi_builtin_info_component_index.BuiltinInfo('res');

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
