// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkspaceSqlAadAdmin resources.
class WorkspaceSqlAadAdminState {
  /// The login name of the Azure AD SQL Administrator of this Synapse Workspace.
  final pulumi.Input<String?>? login;
  /// The object id of the Azure AD SQL Administrator of this Synapse Workspace.
  final pulumi.Input<String?>? objectId;
  /// The ID of the Synapse Workspace where the Azure AD SQL Administrator should be configured.
  final pulumi.Input<String?>? synapseWorkspaceId;
  /// The tenant id of the Azure AD SQL Administrator of this Synapse Workspace.
  final pulumi.Input<String?>? tenantId;

  /// Creates a new [WorkspaceSqlAadAdminState].
  /// [login] The login name of the Azure AD SQL Administrator of this Synapse Workspace.
  /// [objectId] The object id of the Azure AD SQL Administrator of this Synapse Workspace.
  /// [synapseWorkspaceId] The ID of the Synapse Workspace where the Azure AD SQL Administrator should be configured.
  /// [tenantId] The tenant id of the Azure AD SQL Administrator of this Synapse Workspace.
  const WorkspaceSqlAadAdminState({
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

  factory WorkspaceSqlAadAdminState.fromMap(Map<String, dynamic> map) {
    return WorkspaceSqlAadAdminState(
      login: (() { final guardedValue = map['login']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      synapseWorkspaceId: (() { final guardedValue = map['synapseWorkspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
