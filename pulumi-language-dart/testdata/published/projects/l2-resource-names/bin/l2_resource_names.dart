import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_names/index.dart' as pulumi_names_index;
import 'package:pulumi_names/mod.dart' as pulumi_names_mod;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final res1 = pulumi_names_index.ResMap('res1', args: pulumi_names_index.ResMapArgs(value: pulumi.Input.asInput(true), ));
    final res2 = pulumi_names_index.ResArray('res2', args: pulumi_names_index.ResArrayArgs(value: pulumi.Input.asInput(true), ));
    final res3 = pulumi_names_index.ResList('res3', args: pulumi_names_index.ResListArgs(value: pulumi.Input.asInput(true), ));
    final res4 = pulumi_names_index.ResResource('res4', args: pulumi_names_index.ResResourceArgs(value: pulumi.Input.asInput(true), ));
    final res5 = pulumi_names_mod.ResMod('res5', args: pulumi_names_mod.ResModArgs(value: pulumi.Input.asInput(true), ));
    final res6 = pulumi_names_mod.Res('res6', args: pulumi_names_mod.ResArgs(value: pulumi.Input.asInput(true), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
