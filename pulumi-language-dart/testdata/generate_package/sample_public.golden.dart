// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_sample/index.dart' as module_index;
import 'package:pulumi_sample/providers.dart' as module_providers;

final index = const _IndexModuleNamespace();
final providers = const _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  const _IndexModuleNamespace();
  final GetWidgetDetailsArgs = module_index.GetWidgetDetailsArgs.new;
  final GetWidgetDetailsResult = module_index.GetWidgetDetailsResult.new;
  final GetWidgetDetailsResultArgs = module_index.GetWidgetDetailsResult.new;
  final Widget = module_index.Widget.new;
  final WidgetArgs = module_index.WidgetArgs.new;
  final WidgetMetadata = module_index.WidgetMetadata.new;
  final WidgetMetadataArgs = module_index.WidgetMetadata.new;
  final WidgetMode = module_index.WidgetMode.values;
  final getWidgetDetails = module_index.getWidgetDetails;
}

class _ProvidersModuleNamespace {
  const _ProvidersModuleNamespace();
  final Sample = module_providers.ProviderProvider.new;
}
