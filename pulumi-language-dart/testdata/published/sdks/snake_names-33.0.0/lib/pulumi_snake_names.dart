// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_snake_names/cool_module.dart' as module_cool_module;
import 'package:pulumi_snake_names/providers.dart' as module_providers;

final cool_module = _CoolModuleModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _CoolModuleModuleNamespace {
  _CoolModuleModuleNamespace();
  final AnotherResource = module_cool_module.AnotherResource.new;
  final AnotherResourceArgs = module_cool_module.AnotherResourceArgs.new;
  final Entry = module_cool_module.Entry.new;
  final EntryArgs = module_cool_module.Entry.new;
  final NestedInput = module_cool_module.NestedInput.new;
  final NestedInputArgs = module_cool_module.NestedInput.new;
  final OutputItem = module_cool_module.OutputItem.new;
  final OutputItemArgs = module_cool_module.OutputItem.new;
  final SomeDataArgs = module_cool_module.SomeDataArgs.new;
  final SomeDataResult = module_cool_module.SomeDataResult.new;
  final SomeDataResultArgs = module_cool_module.SomeDataResult.new;
  final SomeResource = module_cool_module.SomeResource.new;
  final SomeResourceArgs = module_cool_module.SomeResourceArgs.new;
  final someData = module_cool_module.someData;
  final someDataOutput = module_cool_module.someDataOutput;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final SnakeNames = module_providers.ProviderProvider.new;
}
