// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_multi_argument_invoke/index.dart' as module_index;
import 'package:pulumi_multi_argument_invoke/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final MultiArgumentInvokeArgs = module_index.MultiArgumentInvokeArgs.new;
  final MultiArgumentInvokeResult = module_index.MultiArgumentInvokeResult.new;
  final MultiArgumentInvokeResultArgs = module_index.MultiArgumentInvokeResult.new;
  final StringResource = module_index.StringResource.new;
  final StringResourceArgs = module_index.StringResourceArgs.new;
  final multiArgumentInvoke = module_index.multiArgumentInvoke;
  final multiArgumentInvokeOutput = module_index.multiArgumentInvokeOutput;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final MultiArgumentInvoke = module_providers.ProviderProvider.new;
}
