// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_extbase/index.dart' as module_index;
import 'package:pulumi_extbase/providers.dart' as module_providers;

final index = const _IndexModuleNamespace();
final providers = const _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  const _IndexModuleNamespace();
  final Base = module_index.Base.new;
}

class _ProvidersModuleNamespace {
  const _ProvidersModuleNamespace();
  final Extbase = module_providers.ProviderProvider.new;
}
