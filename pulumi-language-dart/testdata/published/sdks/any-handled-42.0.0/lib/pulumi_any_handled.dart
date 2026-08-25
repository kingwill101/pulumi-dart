// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_any_handled/index.dart' as module_index;
import 'package:pulumi_any_handled/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final ResourceArgs = module_index.ResourceArgs.new;
  final ResourceType = module_index.ResourceType.new;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final AnyHandled = module_providers.ProviderProvider.new;
}
