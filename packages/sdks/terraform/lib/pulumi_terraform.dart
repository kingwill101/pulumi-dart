// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_terraform/providers.dart' as module_providers;
import 'package:pulumi_terraform/state.dart' as module_state;

final providers = _ProvidersModuleNamespace();
final state = _StateModuleNamespace();

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final Terraform = module_providers.ProviderProvider.new;
}

class _StateModuleNamespace {
  _StateModuleNamespace();
  final GetLocalReferenceArgs = module_state.GetLocalReferenceArgs.new;
  final GetLocalReferenceResult = module_state.GetLocalReferenceResult.new;
  final GetLocalReferenceResultArgs = module_state.GetLocalReferenceResult.new;
  final GetRemoteReferenceArgs = module_state.GetRemoteReferenceArgs.new;
  final GetRemoteReferenceResult = module_state.GetRemoteReferenceResult.new;
  final GetRemoteReferenceResultArgs =
      module_state.GetRemoteReferenceResult.new;
  final Workspaces = module_state.Workspaces.new;
  final WorkspacesArgs = module_state.Workspaces.new;
  final getLocalReference = module_state.getLocalReference;
  final getRemoteReference = module_state.getRemoteReference;
}
