// ignore_for_file: non_constant_identifier_names

library pulumi_sample;

import 'package:pulumi_sample/index.dart' as _index;
import 'package:pulumi_sample/providers.dart' as _providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final GetWidgetDetailsArgs = _index.GetWidgetDetailsArgs.new;
  final GetWidgetDetailsResult = _index.GetWidgetDetailsResult.new;
  final GetWidgetDetailsResultArgs = _index.GetWidgetDetailsResult.new;
  final Widget = _index.Widget.new;
  final WidgetArgs = _index.WidgetArgs.new;
  final WidgetMetadata = _index.WidgetMetadata.new;
  final WidgetMetadataArgs = _index.WidgetMetadata.new;
  final WidgetMode = _index.WidgetMode.values;
  final getWidgetDetails = _index.getWidgetDetails;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final Sample = _providers.ProviderProvider.new;
}

