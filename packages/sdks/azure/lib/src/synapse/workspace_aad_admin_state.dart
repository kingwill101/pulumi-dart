// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkspaceAadAdmin resources.
class WorkspaceAadAdminState {
  /// The login name of the Azure AD Administrator of this Synapse Workspace.
  final pulumi.Input<String>? login;
  /// The object id of the Azure AD Administrator of this Synapse Workspace.
  final pulumi.Input<String>? objectId;
  /// The ID of the Synapse Workspace where the Azure AD Administrator should be configured.
  final pulumi.Input<String>? synapseWorkspaceId;
  /// The tenant id of the Azure AD Administrator of this Synapse Workspace.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [WorkspaceAadAdminState].
  /// [login] The login name of the Azure AD Administrator of this Synapse Workspace.
  /// [objectId] The object id of the Azure AD Administrator of this Synapse Workspace.
  /// [synapseWorkspaceId] The ID of the Synapse Workspace where the Azure AD Administrator should be configured.
  /// [tenantId] The tenant id of the Azure AD Administrator of this Synapse Workspace.
  WorkspaceAadAdminState({
    this.login,
    this.objectId,
    this.synapseWorkspaceId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'login': ?login,
      'objectId': ?objectId,
      'synapseWorkspaceId': ?synapseWorkspaceId,
      'tenantId': ?tenantId,
    };
  }

  factory WorkspaceAadAdminState.fromMap(Map<String, dynamic> map) {
    return WorkspaceAadAdminState(
      login: map['login'] == null ? null : (map['login']! as String).input(),
      objectId: map['objectId'] == null ? null : (map['objectId']! as String).input(),
      synapseWorkspaceId: map['synapseWorkspaceId'] == null ? null : (map['synapseWorkspaceId']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
    );
  }
}

