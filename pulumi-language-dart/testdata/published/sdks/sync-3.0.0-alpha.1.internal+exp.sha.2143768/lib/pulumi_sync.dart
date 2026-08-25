// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_sync/index.dart' as module_index;
import 'package:pulumi_sync/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final Block = module_index.Block.new;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final Sync = module_providers.ProviderProvider.new;
}
