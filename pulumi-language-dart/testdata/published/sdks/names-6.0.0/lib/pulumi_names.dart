// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_names/index.dart' as module_index;
import 'package:pulumi_names/mod.dart' as module_mod;
import 'package:pulumi_names/providers.dart' as module_providers;

final index = const _IndexModuleNamespace();
final mod = const _ModModuleNamespace();
final providers = const _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  const _IndexModuleNamespace();
  final ResArray = module_index.ResArray.new;
  final ResArrayArgs = module_index.ResArrayArgs.new;
  final ResList = module_index.ResList.new;
  final ResListArgs = module_index.ResListArgs.new;
  final ResMap = module_index.ResMap.new;
  final ResMapArgs = module_index.ResMapArgs.new;
  final ResResource = module_index.ResResource.new;
  final ResResourceArgs = module_index.ResResourceArgs.new;
}

class _ModModuleNamespace {
  const _ModModuleNamespace();
  final Res = module_mod.Res.new;
  final ResArgs = module_mod.ResArgs.new;
}

class _ProvidersModuleNamespace {
  const _ProvidersModuleNamespace();
  final Names = module_providers.ProviderProvider.new;
}
