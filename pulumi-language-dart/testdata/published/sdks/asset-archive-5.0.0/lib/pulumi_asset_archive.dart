// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_asset_archive/index.dart' as module_index;
import 'package:pulumi_asset_archive/providers.dart' as module_providers;

final index = const _IndexModuleNamespace();
final providers = const _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  const _IndexModuleNamespace();
  final ArchiveResource = module_index.ArchiveResource.new;
  final ArchiveResourceArgs = module_index.ArchiveResourceArgs.new;
  final AssetResource = module_index.AssetResource.new;
  final AssetResourceArgs = module_index.AssetResourceArgs.new;
}

class _ProvidersModuleNamespace {
  const _ProvidersModuleNamespace();
  final AssetArchive = module_providers.ProviderProvider.new;
}
