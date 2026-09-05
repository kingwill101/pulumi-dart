// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_scalar_returns/index.dart' as module_index;
import 'package:pulumi_scalar_returns/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final InvokeArrayArgs = module_index.InvokeArrayArgs.new;
  final InvokeMapArgs = module_index.InvokeMapArgs.new;
  final InvokeSecretArgs = module_index.InvokeSecretArgs.new;
  final invokeArray = module_index.invokeArray;
  final invokeArrayOutput = module_index.invokeArrayOutput;
  final invokeMap = module_index.invokeMap;
  final invokeMapOutput = module_index.invokeMapOutput;
  final invokeSecret = module_index.invokeSecret;
  final invokeSecretOutput = module_index.invokeSecretOutput;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final ScalarReturns = module_providers.ProviderProvider.new;
}
