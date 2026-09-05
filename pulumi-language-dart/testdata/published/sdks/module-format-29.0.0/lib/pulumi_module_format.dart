// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_module_format/index_concat_world.dart' as module_index_concat_world;
import 'package:pulumi_module_format/index_resource.dart' as module_index_resource;
import 'package:pulumi_module_format/mod.dart' as module_mod;
import 'package:pulumi_module_format/mod_concat_world.dart' as module_mod_concat_world;
import 'package:pulumi_module_format/mod_resource.dart' as module_mod_resource;
import 'package:pulumi_module_format/providers.dart' as module_providers;

final index_concat_world = _IndexConcatWorldModuleNamespace();
final index_resource = _IndexResourceModuleNamespace();
final mod = _ModModuleNamespace();
final mod_concat_world = _ModConcatWorldModuleNamespace();
final mod_resource = _ModResourceModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexConcatWorldModuleNamespace {
  _IndexConcatWorldModuleNamespace();
  final ConcatWorldArgs = module_index_concat_world.ConcatWorldArgs.new;
  final ConcatWorldResult = module_index_concat_world.ConcatWorldResult.new;
  final ConcatWorldResultArgs = module_index_concat_world.ConcatWorldResult.new;
  final concatWorld = module_index_concat_world.concatWorld;
  final concatWorldOutput = module_index_concat_world.concatWorldOutput;
}

class _IndexResourceModuleNamespace {
  _IndexResourceModuleNamespace();
  final CallArgs = module_index_resource.CallArgs.new;
  final CallResult = module_index_resource.CallResult.new;
  final CallResultArgs = module_index_resource.CallResult.new;
  final ResourceArgs = module_index_resource.ResourceArgs.new;
  final ResourceCallArgs = module_index_resource.ResourceCallArgs.new;
  final ResourceCallResult = module_index_resource.ResourceCallResult.new;
  final ResourceCallResultArgs = module_index_resource.ResourceCallResult.new;
  final ResourceType = module_index_resource.ResourceType.new;
  final call = module_index_resource.call;
  final callOutput = module_index_resource.callOutput;
}

class _ModModuleNamespace {
  _ModModuleNamespace();
  final CallArgs = module_mod.CallArgs.new;
  final CallResult = module_mod.CallResult.new;
  final CallResultArgs = module_mod.CallResult.new;
  final ConcatWorldArgs = module_mod.ConcatWorldArgs.new;
  final ConcatWorldResult = module_mod.ConcatWorldResult.new;
  final ConcatWorldResultArgs = module_mod.ConcatWorldResult.new;
  final ResourceArgs = module_mod.ResourceArgs.new;
  final ResourceCallArgs = module_mod.ResourceCallArgs.new;
  final ResourceCallResult = module_mod.ResourceCallResult.new;
  final ResourceCallResultArgs = module_mod.ResourceCallResult.new;
  final ResourceType = module_mod.ResourceType.new;
  final call = module_mod.call;
  final callOutput = module_mod.callOutput;
  final concatWorld = module_mod.concatWorld;
  final concatWorldOutput = module_mod.concatWorldOutput;
}

class _ModConcatWorldModuleNamespace {
  _ModConcatWorldModuleNamespace();
  final ConcatWorldArgs = module_mod_concat_world.ConcatWorldArgs.new;
  final ConcatWorldResult = module_mod_concat_world.ConcatWorldResult.new;
  final ConcatWorldResultArgs = module_mod_concat_world.ConcatWorldResult.new;
  final concatWorld = module_mod_concat_world.concatWorld;
  final concatWorldOutput = module_mod_concat_world.concatWorldOutput;
}

class _ModResourceModuleNamespace {
  _ModResourceModuleNamespace();
  final CallArgs = module_mod_resource.CallArgs.new;
  final CallResult = module_mod_resource.CallResult.new;
  final CallResultArgs = module_mod_resource.CallResult.new;
  final ResourceArgs = module_mod_resource.ResourceArgs.new;
  final ResourceCallArgs = module_mod_resource.ResourceCallArgs.new;
  final ResourceCallResult = module_mod_resource.ResourceCallResult.new;
  final ResourceCallResultArgs = module_mod_resource.ResourceCallResult.new;
  final ResourceType = module_mod_resource.ResourceType.new;
  final call = module_mod_resource.call;
  final callOutput = module_mod_resource.callOutput;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final ModuleFormat = module_providers.ProviderProvider.new;
}
