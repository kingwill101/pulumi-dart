// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_simple_invoke_with_scalar_return/index.dart' as module_index;
import 'package:pulumi_simple_invoke_with_scalar_return/providers.dart' as module_providers;

final index = const _IndexModuleNamespace();
final providers = const _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  const _IndexModuleNamespace();
  final MyInvokeScalarArgs = module_index.MyInvokeScalarArgs.new;
  final StringResource = module_index.StringResource.new;
  final StringResourceArgs = module_index.StringResourceArgs.new;
  final myInvokeScalar = module_index.myInvokeScalar;
}

class _ProvidersModuleNamespace {
  const _ProvidersModuleNamespace();
  final SimpleInvokeWithScalarReturn = module_providers.ProviderProvider.new;
}
