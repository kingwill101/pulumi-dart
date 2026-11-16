// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustCwsDeploymentsResult {
  /// IDs of basic-auth credentials attached to this deployment
  final pulumi.Input<List<String>> basicAuthCredentialIds;
  final pulumi.Input<String> createdAt;
  /// Default traffic decision when no policy set matches
  /// Available values: "ALLOW", "BLOCK".
  final pulumi.Input<String> defaultMode;
  /// Optional free-form description.
  final pulumi.Input<String> description;
  /// ID of the attached domain ACL. Omitted when none.
  final pulumi.Input<String> domainAclId;
  /// Server-assigned UUID
  final pulumi.Input<String> id;
  /// Human-readable name; unique per account
  final pulumi.Input<String> name;
  /// Action applied when an enforcing policy has a runtime Rego error
  /// Available values: "BLOCK", "SKIP".
  final pulumi.Input<String> onErrorAction;
  /// IDs of policy sets attached to this deployment
  final pulumi.Input<List<String>> policySetIds;
  /// Whether OPA builtin failures are raised as runtime evaluation errors
  final pulumi.Input<bool> regoRaiseError;
  /// Tags attached to this deployment
  final pulumi.Input<Map<String, String>> tags;
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetZeroTrustCwsDeploymentsResult].
  /// [basicAuthCredentialIds] IDs of basic-auth credentials attached to this deployment
  /// [createdAt] Required.
  /// [defaultMode] Default traffic decision when no policy set matches
  /// [description] Optional free-form description.
  /// [domainAclId] ID of the attached domain ACL. Omitted when none.
  /// [id] Server-assigned UUID
  /// [name] Human-readable name; unique per account
  /// [onErrorAction] Action applied when an enforcing policy has a runtime Rego error
  /// [policySetIds] IDs of policy sets attached to this deployment
  /// [regoRaiseError] Whether OPA builtin failures are raised as runtime evaluation errors
  /// [tags] Tags attached to this deployment
  /// [updatedAt] Required.
  const GetZeroTrustCwsDeploymentsResult({
    required this.basicAuthCredentialIds,
    required this.createdAt,
    required this.defaultMode,
    required this.description,
    required this.domainAclId,
    required this.id,
    required this.name,
    required this.onErrorAction,
    required this.policySetIds,
    required this.regoRaiseError,
    required this.tags,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicAuthCredentialIds': basicAuthCredentialIds,
      'createdAt': createdAt,
      'defaultMode': defaultMode,
      'description': description,
      'domainAclId': domainAclId,
      'id': id,
      'name': name,
      'onErrorAction': onErrorAction,
      'policySetIds': policySetIds,
      'regoRaiseError': regoRaiseError,
      'tags': tags,
      'updatedAt': updatedAt,
    };
  }

  factory GetZeroTrustCwsDeploymentsResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsDeploymentsResult(
      basicAuthCredentialIds: pulumi.Input.fromValue((map['basicAuthCredentialIds'] as List).cast<String>()),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      defaultMode: pulumi.Input.fromValue(map['defaultMode'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      domainAclId: pulumi.Input.fromValue(map['domainAclId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      onErrorAction: pulumi.Input.fromValue(map['onErrorAction'] as String),
      policySetIds: pulumi.Input.fromValue((map['policySetIds'] as List).cast<String>()),
      regoRaiseError: pulumi.Input.fromValue(map['regoRaiseError'] as bool),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}
