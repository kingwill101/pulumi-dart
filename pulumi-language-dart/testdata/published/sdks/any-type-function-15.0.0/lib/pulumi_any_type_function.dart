// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_any_type_function/index.dart' as module_index;
import 'package:pulumi_any_type_function/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final DynListToDynArgs = module_index.DynListToDynArgs.new;
  final DynListToDynResult = module_index.DynListToDynResult.new;
  final DynListToDynResultArgs = module_index.DynListToDynResult.new;
  final dynListToDyn = module_index.dynListToDyn;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final AnyTypeFunction = module_providers.ProviderProvider.new;
}
