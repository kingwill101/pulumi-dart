// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_builtin_info_component/index.dart' as module_index;
import 'package:pulumi_builtin_info_component/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final BuiltinInfo = module_index.BuiltinInfo.new;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final BuiltinInfoComponent = module_providers.ProviderProvider.new;
}
