// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_secret/index.dart' as module_index;
import 'package:pulumi_secret/providers.dart' as module_providers;

final index = const _IndexModuleNamespace();
final providers = const _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  const _IndexModuleNamespace();
  final Data = module_index.Data.new;
  final DataArgs = module_index.Data.new;
  final ResourceArgs = module_index.ResourceArgs.new;
  final ResourceType = module_index.ResourceType.new;
}

class _ProvidersModuleNamespace {
  const _ProvidersModuleNamespace();
  final Secret = module_providers.ProviderProvider.new;
}
