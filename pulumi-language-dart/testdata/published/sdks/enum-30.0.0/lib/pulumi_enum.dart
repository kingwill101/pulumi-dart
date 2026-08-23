// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_enum/index.dart' as module_index;
import 'package:pulumi_enum/mod.dart' as module_mod;
import 'package:pulumi_enum/providers.dart' as module_providers;

final index = const _IndexModuleNamespace();
final mod = const _ModModuleNamespace();
final providers = const _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  const _IndexModuleNamespace();
  final Deluxe = module_index.Deluxe.new;
  final DeluxeArgs = module_index.DeluxeArgs.new;
  final Holder = module_index.Holder.new;
  final HolderArgs = module_index.Holder.new;
  final IntEnum = module_index.IntEnum.values;
  final NumberEnum = module_index.NumberEnum.values;
  final Res = module_index.Res.new;
  final ResArgs = module_index.ResArgs.new;
  final StringEnum = module_index.StringEnum.values;
  final WordyEnum = module_index.WordyEnum.values;
}

class _ModModuleNamespace {
  const _ModModuleNamespace();
  final IntEnum = module_mod.IntEnum.values;
  final Res = module_mod.Res.new;
  final ResArgs = module_mod.ResArgs.new;
  final StringEnum = module_mod.StringEnum.values;
}

class _ProvidersModuleNamespace {
  const _ProvidersModuleNamespace();
  final Enum = module_providers.ProviderProvider.new;
}
