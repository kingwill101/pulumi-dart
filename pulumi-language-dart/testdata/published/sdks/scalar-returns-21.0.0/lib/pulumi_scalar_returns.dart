// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_scalar_returns/index.dart' as module_index;
import 'package:pulumi_scalar_returns/providers.dart' as module_providers;

final index = const _IndexModuleNamespace();
final providers = const _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  const _IndexModuleNamespace();
  final InvokeArrayArgs = module_index.InvokeArrayArgs.new;
  final InvokeMapArgs = module_index.InvokeMapArgs.new;
  final InvokeSecretArgs = module_index.InvokeSecretArgs.new;
  final invokeArray = module_index.invokeArray;
  final invokeMap = module_index.invokeMap;
  final invokeSecret = module_index.invokeSecret;
}

class _ProvidersModuleNamespace {
  const _ProvidersModuleNamespace();
  final ScalarReturns = module_providers.ProviderProvider.new;
}
