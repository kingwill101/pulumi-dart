// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_configurer/index.dart' as module_index;
import 'package:pulumi_configurer/providers.dart' as module_providers;

final index = const _IndexModuleNamespace();
final providers = const _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  const _IndexModuleNamespace();
  final Configurer = module_index.Configurer.new;
  final ConfigurerArgs = module_index.ConfigurerArgs.new;
  final ConfigurerNestedPlainProviderResult = module_index.ConfigurerNestedPlainProviderResult.new;
  final ConfigurerNestedPlainProviderResultArgs = module_index.ConfigurerNestedPlainProviderResult.new;
  final Custom = module_index.Custom.new;
  final CustomArgs = module_index.CustomArgs.new;
  final NestedPlainProviderArgs = module_index.NestedPlainProviderArgs.new;
  final NestedPlainProviderResult = module_index.NestedPlainProviderResult.new;
  final NestedPlainProviderResultArgs = module_index.NestedPlainProviderResult.new;
  final PlainProviderArgs = module_index.PlainProviderArgs.new;
  final PlainValueArgs = module_index.PlainValueArgs.new;
  final nestedPlainProvider = module_index.nestedPlainProvider;
  final plainProvider = module_index.plainProvider;
  final plainValue = module_index.plainValue;
}

class _ProvidersModuleNamespace {
  const _ProvidersModuleNamespace();
  final Configurer = module_providers.ProviderProvider.new;
  final ConfigurerArgs = module_providers.ProviderArgs.new;
  final ProviderArgs = module_providers.ProviderArgs.new;
}
