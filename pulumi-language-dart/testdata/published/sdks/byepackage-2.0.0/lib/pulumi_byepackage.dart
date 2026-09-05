// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_byepackage/index.dart' as module_index;
import 'package:pulumi_byepackage/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final DoGoodbyeWorldArgs = module_index.DoGoodbyeWorldArgs.new;
  final DoGoodbyeWorldResult = module_index.DoGoodbyeWorldResult.new;
  final DoGoodbyeWorldResultArgs = module_index.DoGoodbyeWorldResult.new;
  final GoodbyeWorld = module_index.GoodbyeWorld.new;
  final GoodbyeWorldComponent = module_index.GoodbyeWorldComponent.new;
  final doGoodbyeWorld = module_index.doGoodbyeWorld;
  final doGoodbyeWorldOutput = module_index.doGoodbyeWorldOutput;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final Byepackage = module_providers.ProviderProvider.new;
  final ByepackageArgs = module_providers.ProviderArgs.new;
  final ProviderArgs = module_providers.ProviderArgs.new;
}
