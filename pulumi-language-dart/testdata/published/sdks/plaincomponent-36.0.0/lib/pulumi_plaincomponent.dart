// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_plaincomponent/index.dart' as module_index;
import 'package:pulumi_plaincomponent/providers.dart' as module_providers;

final index = const _IndexModuleNamespace();
final providers = const _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  const _IndexModuleNamespace();
  final Component = module_index.Component.new;
  final ComponentArgs = module_index.ComponentArgs.new;
  final Custom = module_index.Custom.new;
  final CustomArgs = module_index.CustomArgs.new;
  final Settings = module_index.Settings.new;
  final SettingsArgs = module_index.Settings.new;
}

class _ProvidersModuleNamespace {
  const _ProvidersModuleNamespace();
  final Plaincomponent = module_providers.ProviderProvider.new;
}
