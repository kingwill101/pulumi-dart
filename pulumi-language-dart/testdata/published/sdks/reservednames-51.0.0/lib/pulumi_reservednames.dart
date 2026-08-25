// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_reservednames/index.dart' as module_index;
import 'package:pulumi_reservednames/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final ElementType = module_index.ElementType.new;
  final ElementTypeArgs = module_index.ElementType.new;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final Reservednames = module_providers.ProviderProvider.new;
}
