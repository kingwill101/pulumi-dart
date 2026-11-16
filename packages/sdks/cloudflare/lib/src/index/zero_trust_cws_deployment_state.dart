// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZeroTrustCwsDeployment resources.
class ZeroTrustCwsDeploymentState {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String?>? accountId;
  /// IDs of basic-auth credentials to attach
  final pulumi.Input<List<String>?>? basicAuthCredentialIds;
  final pulumi.Input<String?>? createdAt;
  /// Default traffic mode: ALLOW or BLOCK
  /// Available values: "ALLOW", "BLOCK".
  final pulumi.Input<String?>? defaultMode;
  /// Optional free-form description.
  final pulumi.Input<String?>? description;
  /// ID of the domain ACL to attach (omit or null for none)
  final pulumi.Input<String?>? domainAclId;
  /// Name of the deployment
  final pulumi.Input<String?>? name;
  /// Action for runtime Rego errors. Omit to use BLOCK.
  /// Available values: "BLOCK", "SKIP".
  final pulumi.Input<String?>? onErrorAction;
  /// IDs of policy sets to attach
  final pulumi.Input<List<String>?>? policySetIds;
  /// Whether OPA builtin failures are raised as runtime evaluation errors. Omit to use the default true value.
  final pulumi.Input<bool?>? regoRaiseError;
  /// Tags to attach. Keys are limited to 256 UTF-8 bytes and values to 1024 UTF-8 bytes.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [ZeroTrustCwsDeploymentState].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [basicAuthCredentialIds] IDs of basic-auth credentials to attach
  /// [createdAt] Optional.
  /// [defaultMode] Default traffic mode: ALLOW or BLOCK
  /// [description] Optional free-form description.
  /// [domainAclId] ID of the domain ACL to attach (omit or null for none)
  /// [name] Name of the deployment
  /// [onErrorAction] Action for runtime Rego errors. Omit to use BLOCK.
  /// [policySetIds] IDs of policy sets to attach
  /// [regoRaiseError] Whether OPA builtin failures are raised as runtime evaluation errors. Omit to use the default true value.
  /// [tags] Tags to attach. Keys are limited to 256 UTF-8 bytes and values to 1024 UTF-8 bytes.
  /// [updatedAt] Optional.
  const ZeroTrustCwsDeploymentState({
    this.accountId,
    this.basicAuthCredentialIds,
    this.createdAt,
    this.defaultMode,
    this.description,
    this.domainAclId,
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
      'description': ?description,
      'domainAclId': ?domainAclId,
      'name': ?name,
      'onErrorAction': ?onErrorAction,
      'policySetIds': ?policySetIds,
      'regoRaiseError': ?regoRaiseError,
      'tags': ?tags,
      'updatedAt': ?updatedAt,
    };
  }

  factory ZeroTrustCwsDeploymentState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCwsDeploymentState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      basicAuthCredentialIds: (() { final guardedValue = map['basicAuthCredentialIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultMode: (() { final guardedValue = map['defaultMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainAclId: (() { final guardedValue = map['domainAclId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onErrorAction: (() { final guardedValue = map['onErrorAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policySetIds: (() { final guardedValue = map['policySetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      regoRaiseError: (() { final guardedValue = map['regoRaiseError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
