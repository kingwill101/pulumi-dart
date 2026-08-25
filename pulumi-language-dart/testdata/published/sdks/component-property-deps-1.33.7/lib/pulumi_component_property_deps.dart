// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_component_property_deps/index.dart' as module_index;
import 'package:pulumi_component_property_deps/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final Component = module_index.Component.new;
  final ComponentArgs = module_index.ComponentArgs.new;
  final ComponentRefsArgs = module_index.ComponentRefsArgs.new;
  final ComponentRefsResult = module_index.ComponentRefsResult.new;
  final ComponentRefsResultArgs = module_index.ComponentRefsResult.new;
  final Custom = module_index.Custom.new;
  final CustomArgs = module_index.CustomArgs.new;
  final RefsArgs = module_index.RefsArgs.new;
  final RefsResult = module_index.RefsResult.new;
  final RefsResultArgs = module_index.RefsResult.new;
  final refs = module_index.refs;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final ComponentPropertyDeps = module_providers.ProviderProvider.new;
}
