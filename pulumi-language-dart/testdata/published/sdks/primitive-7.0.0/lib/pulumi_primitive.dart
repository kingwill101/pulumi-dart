// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_primitive/index.dart' as module_index;
import 'package:pulumi_primitive/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final InvokeArgs = module_index.InvokeArgs.new;
  final InvokeResult = module_index.InvokeResult.new;
  final InvokeResultArgs = module_index.InvokeResult.new;
  final ResourceArgs = module_index.ResourceArgs.new;
  final ResourceType = module_index.ResourceType.new;
  final invoke = module_index.invoke;
  final invokeOutput = module_index.invokeOutput;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final Primitive = module_providers.ProviderProvider.new;
}
