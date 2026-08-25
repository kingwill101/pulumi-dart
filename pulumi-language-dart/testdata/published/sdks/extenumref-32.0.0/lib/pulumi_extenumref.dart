// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_extenumref/index.dart' as module_index;
import 'package:pulumi_extenumref/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final Sink = module_index.Sink.new;
  final SinkArgs = module_index.SinkArgs.new;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final Extenumref = module_providers.ProviderProvider.new;
}
