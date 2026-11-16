// ignore_for_file: unused_element, unnecessary_cast

import 'get_zero_trust_cws_deployment_filter.dart';

/// Result data returned by getZeroTrustCwsDeployment.
class GetZeroTrustCwsDeploymentResult {
  /// Cloudflare account ID (32-character hexadecimal string)
  final String? accountId;
  /// IDs of basic-auth credentials attached to this deployment
  final List<String>? basicAuthCredentialIds;
  final String? createdAt;
  /// Default traffic decision when no policy set matches
  /// Available values: "ALLOW", "BLOCK".
  final String? defaultMode;
  /// ID of the deployment to retrieve
  final String? deploymentId;
  /// Optional free-form description.
  final String? description;
  /// ID of the attached domain ACL. Omitted when none.
  final String? domainAclId;
  final GetZeroTrustCwsDeploymentFilter? filter;
  /// ID of the deployment to retrieve
  final String? id;
  /// Human-readable name; unique per account
  final String? name;
  /// Action applied when an enforcing policy has a runtime Rego error
  /// Available values: "BLOCK", "SKIP".
  final String? onErrorAction;
  /// IDs of policy sets attached to this deployment
  final List<String>? policySetIds;
  /// Whether OPA builtin failures are raised as runtime evaluation errors
  final bool? regoRaiseError;
  /// Tags attached to this deployment
  final Map<String, String>? tags;
  final String? updatedAt;

  /// Creates a new [GetZeroTrustCwsDeploymentResult].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [basicAuthCredentialIds] IDs of basic-auth credentials attached to this deployment
  /// [createdAt] Optional.
  /// [defaultMode] Default traffic decision when no policy set matches
  /// [deploymentId] ID of the deployment to retrieve
  /// [description] Optional free-form description.
  /// [domainAclId] ID of the attached domain ACL. Omitted when none.
  /// [filter] Optional.
  /// [id] ID of the deployment to retrieve
  /// [name] Human-readable name; unique per account
  /// [onErrorAction] Action applied when an enforcing policy has a runtime Rego error
  /// [policySetIds] IDs of policy sets attached to this deployment
  /// [regoRaiseError] Whether OPA builtin failures are raised as runtime evaluation errors
  /// [tags] Tags attached to this deployment
  /// [updatedAt] Optional.
  const GetZeroTrustCwsDeploymentResult({
    this.accountId,
    this.basicAuthCredentialIds,
    this.createdAt,
    this.defaultMode,
    this.deploymentId,
    this.description,
    this.domainAclId,
    this.filter,
    this.id,
    this.name,
    this.onErrorAction,
    this.policySetIds,
    this.regoRaiseError,
    this.tags,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'basicAuthCredentialIds': ?basicAuthCredentialIds,
      'createdAt': ?createdAt,
      'defaultMode': ?defaultMode,
      'deploymentId': ?deploymentId,
      'description': ?description,
      'domainAclId': ?domainAclId,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'name': ?name,
      'onErrorAction': ?onErrorAction,
      'policySetIds': ?policySetIds,
      'regoRaiseError': ?regoRaiseError,
      'tags': ?tags,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetZeroTrustCwsDeploymentResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsDeploymentResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      basicAuthCredentialIds: (() { final guardedValue = map['basicAuthCredentialIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultMode: (() { final guardedValue = map['defaultMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deploymentId: (() { final guardedValue = map['deploymentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainAclId: (() { final guardedValue = map['domainAclId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetZeroTrustCwsDeploymentFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      onErrorAction: (() { final guardedValue = map['onErrorAction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policySetIds: (() { final guardedValue = map['policySetIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      regoRaiseError: (() { final guardedValue = map['regoRaiseError']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
