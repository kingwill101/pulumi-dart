// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_conformance_component/index.dart' as module_index;
import 'package:pulumi_conformance_component/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final Simple = module_index.Simple.new;
  final SimpleArgs = module_index.SimpleArgs.new;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final ConformanceComponent = module_providers.ProviderProvider.new;
}
