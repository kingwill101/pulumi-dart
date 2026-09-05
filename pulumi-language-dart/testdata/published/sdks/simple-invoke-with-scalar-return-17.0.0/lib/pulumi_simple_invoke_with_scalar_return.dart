// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_simple_invoke_with_scalar_return/index.dart' as module_index;
import 'package:pulumi_simple_invoke_with_scalar_return/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final MyInvokeScalarArgs = module_index.MyInvokeScalarArgs.new;
  final StringResource = module_index.StringResource.new;
  final StringResourceArgs = module_index.StringResourceArgs.new;
  final myInvokeScalar = module_index.myInvokeScalar;
  final myInvokeScalarOutput = module_index.myInvokeScalarOutput;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final SimpleInvokeWithScalarReturn = module_providers.ProviderProvider.new;
}
