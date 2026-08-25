// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_camelnames/cool_module.dart' as module_cool_module;
import 'package:pulumi_camelnames/providers.dart' as module_providers;

final cool_module = _CoolModuleModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _CoolModuleModuleNamespace {
  _CoolModuleModuleNamespace();
  final SomeResource = module_cool_module.SomeResource.new;
  final SomeResourceArgs = module_cool_module.SomeResourceArgs.new;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final CamelNames = module_providers.ProviderProvider.new;
}
