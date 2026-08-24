// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_flaky/index.dart' as module_index;
import 'package:pulumi_flaky/providers.dart' as module_providers;

final index = const _IndexModuleNamespace();
final providers = const _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  const _IndexModuleNamespace();
  final FlakyCreate = module_index.FlakyCreate.new;
}

class _ProvidersModuleNamespace {
  const _ProvidersModuleNamespace();
  final Flaky = module_providers.ProviderProvider.new;
}
