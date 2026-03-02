// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Workspace resources.
class WorkspaceState {
  /// The scope of VMs to send their security data to the desired workspace, unless overridden by a setting with more specific scope.
  final pulumi.Input<String>? scope;
  /// The ID of the Log Analytics Workspace to save the data in.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [WorkspaceState].
  /// [scope] The scope of VMs to send their security data to the desired workspace, unless overridden by a setting with more specific scope.
  /// [workspaceId] The ID of the Log Analytics Workspace to save the data in.
  WorkspaceState({
    this.scope,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': ?scope,
      'workspaceId': ?workspaceId,
    };
  }

  factory WorkspaceState.fromMap(Map<String, dynamic> map) {
    return WorkspaceState(
      scope: map['scope'] == null ? null : (map['scope']! as String).input(),
      workspaceId: map['workspaceId'] == null ? null : (map['workspaceId']! as String).input(),
    );
  }
}

