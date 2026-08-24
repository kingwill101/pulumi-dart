// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_conformance_component/index.dart' as module_index;
import 'package:pulumi_conformance_component/providers.dart' as module_providers;

final index = const _IndexModuleNamespace();
final providers = const _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  const _IndexModuleNamespace();
  final Simple = module_index.Simple.new;
  final SimpleArgs = module_index.SimpleArgs.new;
}

class _ProvidersModuleNamespace {
  const _ProvidersModuleNamespace();
  final ConformanceComponent = module_providers.ProviderProvider.new;
}
