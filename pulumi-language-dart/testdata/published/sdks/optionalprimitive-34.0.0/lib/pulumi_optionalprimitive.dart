// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_optionalprimitive/index.dart' as module_index;
import 'package:pulumi_optionalprimitive/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final ResourceArgs = module_index.ResourceArgs.new;
  final ResourceType = module_index.ResourceType.new;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final Optionalprimitive = module_providers.ProviderProvider.new;
}
