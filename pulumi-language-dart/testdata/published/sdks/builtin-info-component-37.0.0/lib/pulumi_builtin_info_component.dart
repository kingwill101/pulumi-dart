// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_builtin_info_component/index.dart' as module_index;
import 'package:pulumi_builtin_info_component/providers.dart' as module_providers;

final index = const _IndexModuleNamespace();
final providers = const _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  const _IndexModuleNamespace();
  final BuiltinInfo = module_index.BuiltinInfo.new;
}

class _ProvidersModuleNamespace {
  const _ProvidersModuleNamespace();
  final BuiltinInfoComponent = module_providers.ProviderProvider.new;
}
