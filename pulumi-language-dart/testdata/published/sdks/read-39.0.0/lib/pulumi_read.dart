// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_read/index.dart' as module_index;
import 'package:pulumi_read/providers.dart' as module_providers;

final index = const _IndexModuleNamespace();
final providers = const _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  const _IndexModuleNamespace();
  final ResourceArgs = module_index.ResourceArgs.new;
  final ResourceState = module_index.ResourceState.new;
  final ResourceStateArgs = module_index.ResourceState.new;
  final ResourceType = module_index.ResourceType.new;
}

class _ProvidersModuleNamespace {
  const _ProvidersModuleNamespace();
  final Read = module_providers.ProviderProvider.new;
}
