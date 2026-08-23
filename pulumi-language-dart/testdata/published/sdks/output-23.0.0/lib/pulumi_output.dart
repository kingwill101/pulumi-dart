// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_output/index.dart' as module_index;
import 'package:pulumi_output/providers.dart' as module_providers;

final index = const _IndexModuleNamespace();
final providers = const _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  const _IndexModuleNamespace();
  final ComplexResource = module_index.ComplexResource.new;
  final ComplexResourceArgs = module_index.ComplexResourceArgs.new;
  final Data = module_index.Data.new;
  final DataArgs = module_index.Data.new;
  final ResourceArgs = module_index.ResourceArgs.new;
  final ResourceType = module_index.ResourceType.new;
}

class _ProvidersModuleNamespace {
  const _ProvidersModuleNamespace();
  final OutputArgs = module_providers.ProviderArgs.new;
  final OutputType = module_providers.ProviderProvider.new;
  final ProviderArgs = module_providers.ProviderArgs.new;
}
