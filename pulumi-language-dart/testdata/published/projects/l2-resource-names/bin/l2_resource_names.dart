import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_names/index.dart' as names_index;
import 'package:pulumi_names/mod.dart' as names_mod;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final res1 = names_index.ResMap('res1', args: names_index.ResMapArgs(value: (true).input(), ));
    final res2 = names_index.ResArray('res2', args: names_index.ResArrayArgs(value: (true).input(), ));
    final res3 = names_index.ResList('res3', args: names_index.ResListArgs(value: (true).input(), ));
    final res4 = names_index.ResResource('res4', args: names_index.ResResourceArgs(value: (true).input(), ));
    final res5 = names_mod.ResMod('res5', args: names_mod.ResModArgs(value: (true).input(), ));
    final res6 = names_mod.Res('res6', args: names_mod.ResArgs(value: (true).input(), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
