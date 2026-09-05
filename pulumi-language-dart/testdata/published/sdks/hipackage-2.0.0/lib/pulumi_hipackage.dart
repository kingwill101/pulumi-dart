// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_hipackage/index.dart' as module_index;
import 'package:pulumi_hipackage/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final DoHelloWorldArgs = module_index.DoHelloWorldArgs.new;
  final DoHelloWorldResult = module_index.DoHelloWorldResult.new;
  final DoHelloWorldResultArgs = module_index.DoHelloWorldResult.new;
  final HelloWorld = module_index.HelloWorld.new;
  final HelloWorldComponent = module_index.HelloWorldComponent.new;
  final doHelloWorld = module_index.doHelloWorld;
  final doHelloWorldOutput = module_index.doHelloWorldOutput;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final Hipackage = module_providers.ProviderProvider.new;
  final HipackageArgs = module_providers.ProviderArgs.new;
  final ProviderArgs = module_providers.ProviderArgs.new;
}
