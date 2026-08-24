// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_extenumref/index.dart' as module_index;
import 'package:pulumi_extenumref/providers.dart' as module_providers;

final index = const _IndexModuleNamespace();
final providers = const _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  const _IndexModuleNamespace();
  final Sink = module_index.Sink.new;
  final SinkArgs = module_index.SinkArgs.new;
}

class _ProvidersModuleNamespace {
  const _ProvidersModuleNamespace();
  final Extenumref = module_providers.ProviderProvider.new;
}
