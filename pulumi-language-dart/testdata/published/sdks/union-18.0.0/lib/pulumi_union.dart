// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_union/index.dart' as module_index;
import 'package:pulumi_union/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final AccessRights = module_index.AccessRights.values;
  final BlobType = module_index.BlobType.values;
  final EnumOutput = module_index.EnumOutput.new;
  final EnumOutputArgs = module_index.EnumOutputArgs.new;
  final Example = module_index.Example.new;
  final ExampleArgs = module_index.ExampleArgs.new;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final Union = module_providers.ProviderProvider.new;
}
