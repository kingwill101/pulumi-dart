// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_discriminated_union/index.dart' as module_index;
import 'package:pulumi_discriminated_union/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final Example = module_index.Example.new;
  final ExampleArgs = module_index.ExampleArgs.new;
  final VariantOne = module_index.VariantOne.new;
  final VariantOneArgs = module_index.VariantOne.new;
  final VariantTwo = module_index.VariantTwo.new;
  final VariantTwoArgs = module_index.VariantTwo.new;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final DiscriminatedUnion = module_providers.ProviderProvider.new;
}
