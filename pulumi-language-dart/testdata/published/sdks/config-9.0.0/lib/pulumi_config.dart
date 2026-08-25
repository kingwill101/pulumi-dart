// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_config/index.dart' as module_index;
import 'package:pulumi_config/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final GetConfigArgs = module_index.GetConfigArgs.new;
  final GetConfigResult = module_index.GetConfigResult.new;
  final GetConfigResultArgs = module_index.GetConfigResult.new;
  final ResourceArgs = module_index.ResourceArgs.new;
  final ResourceType = module_index.ResourceType.new;
  final getConfig = module_index.getConfig;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final Config = module_providers.ProviderProvider.new;
  final ConfigArgs = module_providers.ProviderArgs.new;
  final ProviderArgs = module_providers.ProviderArgs.new;
}
