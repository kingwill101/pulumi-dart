// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_call/index.dart' as module_index;
import 'package:pulumi_call/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final Custom = module_index.Custom.new;
  final CustomArgs = module_index.CustomArgs.new;
  final CustomProviderValueResult = module_index.CustomProviderValueResult.new;
  final CustomProviderValueResultArgs = module_index.CustomProviderValueResult.new;
  final ProviderValueArgs = module_index.ProviderValueArgs.new;
  final ProviderValueResult = module_index.ProviderValueResult.new;
  final ProviderValueResultArgs = module_index.ProviderValueResult.new;
  final providerValue = module_index.providerValue;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final Call = module_providers.ProviderProvider.new;
  final CallArgs = module_providers.ProviderArgs.new;
  final IdentityArgs = module_providers.IdentityArgs.new;
  final IdentityResult = module_providers.IdentityResult.new;
  final IdentityResultArgs = module_providers.IdentityResult.new;
  final PrefixedArgs = module_providers.PrefixedArgs.new;
  final PrefixedResult = module_providers.PrefixedResult.new;
  final PrefixedResultArgs = module_providers.PrefixedResult.new;
  final ProviderArgs = module_providers.ProviderArgs.new;
  final ProviderIdentityResult = module_providers.ProviderIdentityResult.new;
  final ProviderIdentityResultArgs = module_providers.ProviderIdentityResult.new;
  final ProviderPrefixedArgs = module_providers.ProviderPrefixedArgs.new;
  final ProviderPrefixedResult = module_providers.ProviderPrefixedResult.new;
  final ProviderPrefixedResultArgs = module_providers.ProviderPrefixedResult.new;
  final identity = module_providers.identity;
  final prefixed = module_providers.prefixed;
}
