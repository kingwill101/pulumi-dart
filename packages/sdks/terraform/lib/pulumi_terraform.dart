// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_terraform/providers.dart' as module_providers;
import 'package:pulumi_terraform/state.dart' as module_state;

final providers = const _ProvidersModuleNamespace();
final state = const _StateModuleNamespace();

class _ProvidersModuleNamespace {
  const _ProvidersModuleNamespace();
  final Terraform = module_providers.ProviderProvider.new;
}

class _StateModuleNamespace {
  const _StateModuleNamespace();
  final GetAzureRMReferenceArgs = module_state.GetAzureRMReferenceArgs.new;
  final GetAzureRMReferenceResult = module_state.GetAzureRMReferenceResult.new;
  final GetAzureRMReferenceResultArgs = module_state.GetAzureRMReferenceResult.new;
  final GetLocalReferenceArgs = module_state.GetLocalReferenceArgs.new;
  final GetLocalReferenceResult = module_state.GetLocalReferenceResult.new;
  final GetLocalReferenceResultArgs = module_state.GetLocalReferenceResult.new;
  final GetRemoteReferenceArgs = module_state.GetRemoteReferenceArgs.new;
  final GetRemoteReferenceResult = module_state.GetRemoteReferenceResult.new;
  final GetRemoteReferenceResultArgs = module_state.GetRemoteReferenceResult.new;
  final GetS3ReferenceArgs = module_state.GetS3ReferenceArgs.new;
  final GetS3ReferenceResult = module_state.GetS3ReferenceResult.new;
  final GetS3ReferenceResultArgs = module_state.GetS3ReferenceResult.new;
  final Workspaces = module_state.Workspaces.new;
  final WorkspacesArgs = module_state.Workspaces.new;
  final getAzureRMReference = module_state.getAzureRMReference;
  final getLocalReference = module_state.getLocalReference;
  final getRemoteReference = module_state.getRemoteReference;
  final getS3Reference = module_state.getS3Reference;
}
