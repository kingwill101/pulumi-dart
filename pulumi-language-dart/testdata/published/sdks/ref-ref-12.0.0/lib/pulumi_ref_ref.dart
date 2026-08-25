// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_ref_ref/index.dart' as module_index;
import 'package:pulumi_ref_ref/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final Data = module_index.Data.new;
  final DataArgs = module_index.Data.new;
  final InnerData = module_index.InnerData.new;
  final InnerDataArgs = module_index.InnerData.new;
  final ResourceArgs = module_index.ResourceArgs.new;
  final ResourceType = module_index.ResourceType.new;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final RefRef = module_providers.ProviderProvider.new;
}
