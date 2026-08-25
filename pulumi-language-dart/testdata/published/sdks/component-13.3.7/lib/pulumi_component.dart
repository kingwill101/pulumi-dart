// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_component/index.dart' as module_index;
import 'package:pulumi_component/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final ComponentCallable = module_index.ComponentCallable.new;
  final ComponentCallableArgs = module_index.ComponentCallableArgs.new;
  final ComponentCallableIdentityResult = module_index.ComponentCallableIdentityResult.new;
  final ComponentCallableIdentityResultArgs = module_index.ComponentCallableIdentityResult.new;
  final ComponentCallablePrefixedArgs = module_index.ComponentCallablePrefixedArgs.new;
  final ComponentCallablePrefixedResult = module_index.ComponentCallablePrefixedResult.new;
  final ComponentCallablePrefixedResultArgs = module_index.ComponentCallablePrefixedResult.new;
  final ComponentCustomRefInputOutput = module_index.ComponentCustomRefInputOutput.new;
  final ComponentCustomRefInputOutputArgs = module_index.ComponentCustomRefInputOutputArgs.new;
  final ComponentCustomRefOutput = module_index.ComponentCustomRefOutput.new;
  final ComponentCustomRefOutputArgs = module_index.ComponentCustomRefOutputArgs.new;
  final ComponentForeignChild = module_index.ComponentForeignChild.new;
  final ComponentForeignChildArgs = module_index.ComponentForeignChildArgs.new;
  final Custom = module_index.Custom.new;
  final CustomArgs = module_index.CustomArgs.new;
  final IdentityArgs = module_index.IdentityArgs.new;
  final IdentityResult = module_index.IdentityInvokeResult.new;
  final IdentityResultArgs = module_index.IdentityInvokeResult.new;
  final PrefixedArgs = module_index.PrefixedArgs.new;
  final PrefixedResult = module_index.PrefixedResult.new;
  final PrefixedResultArgs = module_index.PrefixedResult.new;
  final identity = module_index.identity;
  final prefixed = module_index.prefixed;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final Component = module_providers.ProviderProvider.new;
}
