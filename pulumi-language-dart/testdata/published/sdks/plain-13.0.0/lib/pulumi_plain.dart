// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_plain/index.dart' as module_index;
import 'package:pulumi_plain/providers.dart' as module_providers;

final index = const _IndexModuleNamespace();
final providers = const _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  const _IndexModuleNamespace();
  final Data = module_index.Data.new;
  final DataArgs = module_index.Data.new;
  final InnerData = module_index.InnerData.new;
  final InnerDataArgs = module_index.InnerData.new;
  final ResourceArgs = module_index.ResourceArgs.new;
  final ResourceType = module_index.ResourceType.new;
}

class _ProvidersModuleNamespace {
  const _ProvidersModuleNamespace();
  final Plain = module_providers.ProviderProvider.new;
}
