// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_discriminated_union_many/index.dart' as module_index;
import 'package:pulumi_discriminated_union_many/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final Example = module_index.Example.new;
  final ExampleArgs = module_index.ExampleArgs.new;
  final SubsetExample = module_index.SubsetExample.new;
  final SubsetExampleArgs = module_index.SubsetExampleArgs.new;
  final Variant1 = module_index.Variant1.new;
  final Variant10 = module_index.Variant10.new;
  final Variant10Args = module_index.Variant10.new;
  final Variant1Args = module_index.Variant1.new;
  final Variant2 = module_index.Variant2.new;
  final Variant2Args = module_index.Variant2.new;
  final Variant3 = module_index.Variant3.new;
  final Variant3Args = module_index.Variant3.new;
  final Variant4 = module_index.Variant4.new;
  final Variant4Args = module_index.Variant4.new;
  final Variant5 = module_index.Variant5.new;
  final Variant5Args = module_index.Variant5.new;
  final Variant6 = module_index.Variant6.new;
  final Variant6Args = module_index.Variant6.new;
  final Variant7 = module_index.Variant7.new;
  final Variant7Args = module_index.Variant7.new;
  final Variant8 = module_index.Variant8.new;
  final Variant8Args = module_index.Variant8.new;
  final Variant9 = module_index.Variant9.new;
  final Variant9Args = module_index.Variant9.new;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final DiscriminatedUnionMany = module_providers.ProviderProvider.new;
}
