// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_index_mod/index_mine.dart' as module_index_mine;
import 'package:pulumi_index_mod/providers.dart' as module_providers;

final index_mine = _IndexMineModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexMineModuleNamespace {
  _IndexMineModuleNamespace();
  final CallArgs = module_index_mine.CallArgs.new;
  final CallResult = module_index_mine.CallIndexMineResult.new;
  final CallResultArgs = module_index_mine.CallIndexMineResult.new;
  final ConcatWorldArgs = module_index_mine.ConcatWorldArgs.new;
  final ConcatWorldResult = module_index_mine.ConcatWorldIndexMineResult.new;
  final ConcatWorldResultArgs = module_index_mine.ConcatWorldIndexMineResult.new;
  final ResourceArgs = module_index_mine.ResourceArgs.new;
  final ResourceCallArgs = module_index_mine.ResourceCallArgs.new;
  final ResourceCallResult = module_index_mine.ResourceCallIndexMineResult.new;
  final ResourceCallResultArgs = module_index_mine.ResourceCallIndexMineResult.new;
  final ResourceType = module_index_mine.ResourceType.new;
  final call = module_index_mine.call;
  final callOutput = module_index_mine.callOutput;
  final concatWorld = module_index_mine.concatWorld;
  final concatWorldOutput = module_index_mine.concatWorldOutput;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final IndexMod = module_providers.ProviderProvider.new;
}
