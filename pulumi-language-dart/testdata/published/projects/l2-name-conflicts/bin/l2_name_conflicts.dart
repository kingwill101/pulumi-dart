import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_module_format/mod_resource.dart' as pulumi_module_format_mod_resource;
import 'package:pulumi_names/mod.dart' as pulumi_names_mod;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final config = pulumi.Config();
    final names = config.getBoolean('names') ?? true;
    final names2 = config.getBoolean('Names') ?? true;
    final mod = config.get('mod') ?? 'module';
    final mod2 = config.get('Mod') ?? 'format';
    final namesResource = pulumi_names_mod.ResMod('namesResource', args: pulumi_names_mod.ResModArgs(value: pulumi.Input.asInput(names), ));
    final modResource = pulumi_module_format_mod_resource.ResourceType('modResource', args: pulumi_module_format_mod_resource.ResourceArgs(text: pulumi.Input.asInput((mod).toString() + '-' + (mod2).toString()), ));

    _outputProperties = [
      pulumi.OutputProperty('namesResourceVal', pulumi.output(namesResource.value).apply<Object?>((value) => value)),
      pulumi.OutputProperty('modResourceText', pulumi.output(modResource.text).apply<Object?>((value) => value)),
      pulumi.OutputProperty('nameVariables', pulumi.output((names && names2)).apply<Object?>((value) => value)),
      pulumi.OutputProperty('modVariables', pulumi.output((mod).toString() + '-' + (mod2).toString()).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
