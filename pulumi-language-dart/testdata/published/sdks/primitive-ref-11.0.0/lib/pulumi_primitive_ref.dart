// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_primitive_ref/index.dart' as module_index;
import 'package:pulumi_primitive_ref/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final Data = module_index.Data.new;
  final DataArgs = module_index.Data.new;
  final ResourceArgs = module_index.ResourceArgs.new;
  final ResourceType = module_index.ResourceType.new;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final PrimitiveRef = module_providers.ProviderProvider.new;
}
