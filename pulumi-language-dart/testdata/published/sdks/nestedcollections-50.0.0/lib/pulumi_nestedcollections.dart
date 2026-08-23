// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_nestedcollections/index.dart' as module_index;
import 'package:pulumi_nestedcollections/providers.dart' as module_providers;

final index = const _IndexModuleNamespace();
final providers = const _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  const _IndexModuleNamespace();
  final Bar = module_index.Bar.new;
  final BarArgs = module_index.Bar.new;
  final Foo = module_index.Foo.new;
  final FooArgs = module_index.FooArgs.new;
}

class _ProvidersModuleNamespace {
  const _ProvidersModuleNamespace();
  final Nestedcollections = module_providers.ProviderProvider.new;
}
