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
    pulumi.Output<String>? login,
    pulumi.Output<String>? objectId,
    pulumi.Output<String>? synapseWorkspaceId,
    pulumi.Output<String>? tenantId,
  }) :
      login = pulumi.Input.asOptionalInput<String>(login),
      objectId = pulumi.Input.asOptionalInput<String>(objectId),
      synapseWorkspaceId = pulumi.Input.asOptionalInput<String>(synapseWorkspaceId),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

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
      login: map['login'] == null ? null : pulumi.Output.create<String>(map['login'] as String),
      objectId: map['objectId'] == null ? null : pulumi.Output.create<String>(map['objectId'] as String),
      synapseWorkspaceId: map['synapseWorkspaceId'] == null ? null : pulumi.Output.create<String>(map['synapseWorkspaceId'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

