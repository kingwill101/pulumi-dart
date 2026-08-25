// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_simple/index.dart' as module_index;
import 'package:pulumi_simple/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final ResourceArgs = module_index.ResourceArgs.new;
  final ResourceType = module_index.ResourceType.new;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final Simple = module_providers.ProviderProvider.new;
}
