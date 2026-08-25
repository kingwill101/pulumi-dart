// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_bytesource/index.dart' as module_index;
import 'package:pulumi_bytesource/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final ResourceArgs = module_index.ResourceArgs.new;
  final ResourceType = module_index.ResourceType.new;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final Bytesource = module_providers.ProviderProvider.new;
}
