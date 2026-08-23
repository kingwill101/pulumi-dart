// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_primitive/index.dart' as module_index;
import 'package:pulumi_primitive/providers.dart' as module_providers;

final index = const _IndexModuleNamespace();
final providers = const _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  const _IndexModuleNamespace();
  final InvokeArgs = module_index.InvokeArgs.new;
  final InvokeResult = module_index.InvokeResult.new;
  final InvokeResultArgs = module_index.InvokeResult.new;
  final ResourceArgs = module_index.ResourceArgs.new;
  final ResourceType = module_index.ResourceType.new;
  final invoke = module_index.invoke;
}

class _ProvidersModuleNamespace {
  const _ProvidersModuleNamespace();
  final Primitive = module_providers.ProviderProvider.new;
}
