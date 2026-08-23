// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_output_only_invoke/index.dart' as module_index;
import 'package:pulumi_output_only_invoke/providers.dart' as module_providers;

final index = const _IndexModuleNamespace();
final providers = const _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  const _IndexModuleNamespace();
  final MyInvokeArgs = module_index.MyInvokeArgs.new;
  final MyInvokeResult = module_index.MyInvokeResult.new;
  final MyInvokeResultArgs = module_index.MyInvokeResult.new;
  final SecretInvokeArgs = module_index.SecretInvokeArgs.new;
  final SecretInvokeResult = module_index.SecretInvokeResult.new;
  final SecretInvokeResultArgs = module_index.SecretInvokeResult.new;
  final StringResource = module_index.StringResource.new;
  final StringResourceArgs = module_index.StringResourceArgs.new;
  final UnitResult = module_index.UnitResult.new;
  final UnitResultArgs = module_index.UnitResult.new;
  final myInvoke = module_index.myInvoke;
  final secretInvoke = module_index.secretInvoke;
  final unit = module_index.unit;
}

class _ProvidersModuleNamespace {
  const _ProvidersModuleNamespace();
  final OutputOnlyInvoke = module_providers.ProviderProvider.new;
}
