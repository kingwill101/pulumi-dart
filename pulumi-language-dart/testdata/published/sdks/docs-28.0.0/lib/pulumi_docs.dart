// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_docs/index.dart' as module_index;
import 'package:pulumi_docs/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final FunArgs = module_index.FunArgs.new;
  final FunResult = module_index.FunResult.new;
  final FunResultArgs = module_index.FunResult.new;
  final ResourceArgs = module_index.ResourceArgs.new;
  final ResourceData = module_index.ResourceData.new;
  final ResourceDataArgs = module_index.ResourceData.new;
  final ResourceType = module_index.ResourceType.new;
  final fun = module_index.fun;
  final funOutput = module_index.funOutput;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final Docs = module_providers.ProviderProvider.new;
}
