import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_enum/index.dart' as pulumi_enum_index;
import 'package:pulumi_enum/mod.dart' as pulumi_enum_mod;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final sink1 = pulumi_enum_index.Res('sink1', args: pulumi_enum_index.ResArgs(intEnum: pulumi.Input.asInput(pulumi_enum_index.IntEnum.fromValue(1)), stringEnum: pulumi.Input.asInput(pulumi_enum_index.StringEnum.fromValue('two')), ));
    final sink2 = pulumi_enum_mod.ResMod('sink2', args: pulumi_enum_mod.ResModArgs(intEnum: pulumi.Input.asInput(pulumi_enum_mod.IntEnumMod.fromValue(1)), stringEnum: pulumi.Input.asInput(pulumi_enum_mod.StringEnumMod.fromValue('two')), ));
    final sink3 = pulumi_enum_mod.Res('sink3', args: pulumi_enum_mod.ResArgs(intEnum: pulumi.Input.asInput(pulumi_enum_mod.IntEnum.fromValue(1)), stringEnum: pulumi.Input.asInput(pulumi_enum_mod.StringEnum.fromValue('two')), ));
    final sink4 = pulumi_enum_index.Deluxe('sink4', args: pulumi_enum_index.DeluxeArgs(numberEnum: pulumi.Input.asInput(pulumi_enum_index.NumberEnum.fromValue(0.1)), wordyEnum: pulumi.Input.asInput(pulumi_enum_index.WordyEnum.fromValue('It\'s got apostrophes')), arrayOfEnum: pulumi.Input.asInput(<pulumi_enum_index.StringEnum>[pulumi_enum_index.StringEnum.fromValue('one'), pulumi_enum_index.StringEnum.fromValue('two')]), mapOfEnum: pulumi.Input.asInput(<String, pulumi_enum_index.IntEnum>{'small': pulumi_enum_index.IntEnum.fromValue(1), 'large': pulumi_enum_index.IntEnum.fromValue(2)}), holder: pulumi.Input.asInput(pulumi_enum_index.Holder(size: (pulumi_enum_index.IntEnum.fromValue(2)).input(), color: (pulumi_enum_index.StringEnum.fromValue('one')).input())), unionEnum: pulumi.Input.asInput(pulumi_enum_index.WordyEnum.fromValue('A Value With Spaces.')), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
