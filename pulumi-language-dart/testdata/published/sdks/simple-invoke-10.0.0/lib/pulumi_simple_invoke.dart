// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_simple_invoke/index.dart' as module_index;
import 'package:pulumi_simple_invoke/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final GetTextArgs = module_index.GetTextArgs.new;
  final GetTextResult = module_index.GetTextResult.new;
  final GetTextResultArgs = module_index.GetTextResult.new;
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
  final getText = module_index.getText;
  final getTextOutput = module_index.getTextOutput;
  final myInvoke = module_index.myInvoke;
  final myInvokeOutput = module_index.myInvokeOutput;
  final secretInvoke = module_index.secretInvoke;
  final secretInvokeOutput = module_index.secretInvokeOutput;
  final unit = module_index.unit;
  final unitOutput = module_index.unitOutput;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final SimpleInvoke = module_providers.ProviderProvider.new;
}
