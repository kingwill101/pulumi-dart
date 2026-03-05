// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkspaceApplicationGroupAssociation resources.
class WorkspaceApplicationGroupAssociationState {
  /// The resource ID for the Virtual Desktop Application Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? applicationGroupId;
  /// The resource ID for the Virtual Desktop Workspace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [WorkspaceApplicationGroupAssociationState].
  /// [applicationGroupId] The resource ID for the Virtual Desktop Application Group. Changing this forces a new resource to be created.
  /// [workspaceId] The resource ID for the Virtual Desktop Workspace. Changing this forces a new resource to be created.
  WorkspaceApplicationGroupAssociationState({
    this.applicationGroupId,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGroupId': ?applicationGroupId,
      'workspaceId': ?workspaceId,
    };
  }

  factory WorkspaceApplicationGroupAssociationState.fromMap(Map<String, dynamic> map) {
    return WorkspaceApplicationGroupAssociationState(
      applicationGroupId: (() { final guardedValue = map['applicationGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

