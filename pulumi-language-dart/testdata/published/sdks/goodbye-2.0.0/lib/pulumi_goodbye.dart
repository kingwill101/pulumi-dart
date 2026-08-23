// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_goodbye/index.dart' as module_index;
import 'package:pulumi_goodbye/providers.dart' as module_providers;

final index = const _IndexModuleNamespace();
final providers = const _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  const _IndexModuleNamespace();
  final DoGoodbyeArgs = module_index.DoGoodbyeArgs.new;
  final DoGoodbyeResult = module_index.DoGoodbyeResult.new;
  final DoGoodbyeResultArgs = module_index.DoGoodbyeResult.new;
  final Goodbye = module_index.Goodbye.new;
  final GoodbyeComponent = module_index.GoodbyeComponent.new;
  final doGoodbye = module_index.doGoodbye;
}

class _ProvidersModuleNamespace {
  const _ProvidersModuleNamespace();
  final Goodbye = module_providers.ProviderProvider.new;
  final GoodbyeArgs = module_providers.ProviderArgs.new;
  final ProviderArgs = module_providers.ProviderArgs.new;
}
