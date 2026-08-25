// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_flaky/index.dart' as module_index;
import 'package:pulumi_flaky/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final FlakyCreate = module_index.FlakyCreate.new;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final Flaky = module_providers.ProviderProvider.new;
}
