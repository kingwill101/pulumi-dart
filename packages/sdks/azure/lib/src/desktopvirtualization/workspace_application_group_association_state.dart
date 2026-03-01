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
    pulumi.Output<String>? applicationGroupId,
    pulumi.Output<String>? workspaceId,
  }) :
      applicationGroupId = pulumi.Input.asOptionalInput<String>(applicationGroupId),
      workspaceId = pulumi.Input.asOptionalInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGroupId': ?applicationGroupId,
      'workspaceId': ?workspaceId,
    };
  }

  factory WorkspaceApplicationGroupAssociationState.fromMap(Map<String, dynamic> map) {
    return WorkspaceApplicationGroupAssociationState(
      applicationGroupId: map['applicationGroupId'] == null ? null : pulumi.Output.create<String>(map['applicationGroupId'] as String),
      workspaceId: map['workspaceId'] == null ? null : pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

