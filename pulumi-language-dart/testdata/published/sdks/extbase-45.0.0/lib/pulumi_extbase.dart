// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_extbase/index.dart' as module_index;
import 'package:pulumi_extbase/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final Base = module_index.Base.new;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final Extbase = module_providers.ProviderProvider.new;
}
