// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_plaincomponent/index.dart' as module_index;
import 'package:pulumi_plaincomponent/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final Component = module_index.Component.new;
  final ComponentArgs = module_index.ComponentArgs.new;
  final Custom = module_index.Custom.new;
  final CustomArgs = module_index.CustomArgs.new;
  final Settings = module_index.Settings.new;
  final SettingsArgs = module_index.Settings.new;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final Plaincomponent = module_providers.ProviderProvider.new;
}
