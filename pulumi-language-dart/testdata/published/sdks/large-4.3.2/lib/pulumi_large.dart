// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_large/index.dart' as module_index;
import 'package:pulumi_large/providers.dart' as module_providers;

final index = const _IndexModuleNamespace();
final providers = const _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  const _IndexModuleNamespace();
  final StringArgs = module_index.StringArgs.new;
  final StringType = module_index.StringType.new;
}

class _ProvidersModuleNamespace {
  const _ProvidersModuleNamespace();
  final Large = module_providers.ProviderProvider.new;
}
