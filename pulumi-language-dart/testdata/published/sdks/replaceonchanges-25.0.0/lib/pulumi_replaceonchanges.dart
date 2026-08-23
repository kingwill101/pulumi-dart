// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_replaceonchanges/index.dart' as module_index;
import 'package:pulumi_replaceonchanges/providers.dart' as module_providers;

final index = const _IndexModuleNamespace();
final providers = const _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  const _IndexModuleNamespace();
  final ResourceA = module_index.ResourceA.new;
  final ResourceAArgs = module_index.ResourceAArgs.new;
  final ResourceB = module_index.ResourceB.new;
  final ResourceBArgs = module_index.ResourceBArgs.new;
}

class _ProvidersModuleNamespace {
  const _ProvidersModuleNamespace();
  final Replaceonchanges = module_providers.ProviderProvider.new;
}
