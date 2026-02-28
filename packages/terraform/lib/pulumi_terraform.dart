// ignore_for_file: non_constant_identifier_names

library pulumi_terraform;

import 'package:pulumi_terraform/state.dart' as _state;

final state = _StateModuleNamespace();

class _StateModuleNamespace {
  _StateModuleNamespace();
  final GetLocalReferenceArgs = _state.GetLocalReferenceArgs.new;
  final GetLocalReferenceResult = _state.GetLocalReferenceResult.new;
  final GetLocalReferenceResultArgs = _state.GetLocalReferenceResult.new;
  final GetRemoteReferenceArgs = _state.GetRemoteReferenceArgs.new;
  final GetRemoteReferenceResult = _state.GetRemoteReferenceResult.new;
  final GetRemoteReferenceResultArgs = _state.GetRemoteReferenceResult.new;
  final Workspaces = _state.Workspaces.new;
  final WorkspacesArgs = _state.Workspaces.new;
  final getLocalReference = _state.getLocalReference;
  final getRemoteReference = _state.getRemoteReference;
}
