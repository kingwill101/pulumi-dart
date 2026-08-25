// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_config_enum/index.dart' as module_index;
import 'package:pulumi_config_enum/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final MyEnum = module_index.MyEnum.values;
  final ResourceArgs = module_index.ResourceArgs.new;
  final ResourceType = module_index.ResourceType.new;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final ConfigEnum = module_providers.ProviderProvider.new;
  final ConfigEnumArgs = module_providers.ProviderArgs.new;
  final ProviderArgs = module_providers.ProviderArgs.new;
}
