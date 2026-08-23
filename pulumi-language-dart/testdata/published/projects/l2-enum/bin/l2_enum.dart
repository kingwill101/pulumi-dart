import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_enum/index.dart' as enum__index;
import 'package:pulumi_enum/mod.dart' as enum__mod;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final sink1 = enum__index.Res('sink1', args: enum__index.ResArgs(intEnum: (enum__index.IntEnum.fromValue(1)).input(), stringEnum: (enum__index.StringEnum.fromValue('two')).input(), ));
    final sink2 = enum__mod.ResMod('sink2', args: enum__mod.ResModArgs(intEnum: (enum__mod.IntEnumMod.fromValue(1)).input(), stringEnum: (enum__mod.StringEnumMod.fromValue('two')).input(), ));
    final sink3 = enum__mod.Res('sink3', args: enum__mod.ResArgs(intEnum: (enum__mod.IntEnum.fromValue(1)).input(), stringEnum: (enum__mod.StringEnum.fromValue('two')).input(), ));
    final sink4 = enum__index.Deluxe('sink4', args: enum__index.DeluxeArgs(numberEnum: (enum__index.NumberEnum.fromValue(0.1)).input(), wordyEnum: (enum__index.WordyEnum.fromValue('It\'s got apostrophes')).input(), arrayOfEnum: (<enum__index.StringEnum>[enum__index.StringEnum.fromValue('one'), enum__index.StringEnum.fromValue('two')]).input(), mapOfEnum: (<String, enum__index.IntEnum>{'small': enum__index.IntEnum.fromValue(1), 'large': enum__index.IntEnum.fromValue(2)}).input(), holder: (enum__index.Holder(size: (enum__index.IntEnum.fromValue(2)).input(), color: (enum__index.StringEnum.fromValue('one')).input())).input(), unionEnum: (enum__index.WordyEnum.fromValue('A Value With Spaces.')).input(), ));

    _outputProperties = [
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
