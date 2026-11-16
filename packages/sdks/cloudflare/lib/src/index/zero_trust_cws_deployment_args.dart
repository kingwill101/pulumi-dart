// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_cws_deployment_zero_trust_cws_deployment_args_doc}
/// The set of arguments for ZeroTrustCwsDeployment.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_cws_deployment_zero_trust_cws_deployment_args_doc}
class ZeroTrustCwsDeploymentArgs {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String> accountId;
  /// IDs of basic-auth credentials to attach
  final pulumi.Input<List<String>> basicAuthCredentialIds;
  /// Default traffic mode: ALLOW or BLOCK
  /// Available values: "ALLOW", "BLOCK".
  final pulumi.Input<String> defaultMode;
  /// Optional free-form description.
  final pulumi.Input<String?>? description;
  /// ID of the domain ACL to attach (omit or null for none)
  final pulumi.Input<String?>? domainAclId;
  /// Name of the deployment
  final pulumi.Input<String> name;
  /// Action for runtime Rego errors. Omit to use BLOCK.
  /// Available values: "BLOCK", "SKIP".
  final pulumi.Input<String?>? onErrorAction;
  /// IDs of policy sets to attach
  final pulumi.Input<List<String>> policySetIds;
  /// Whether OPA builtin failures are raised as runtime evaluation errors. Omit to use the default true value.
  final pulumi.Input<bool?>? regoRaiseError;
  /// Tags to attach. Keys are limited to 256 UTF-8 bytes and values to 1024 UTF-8 bytes.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ZeroTrustCwsDeploymentArgs].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [basicAuthCredentialIds] IDs of basic-auth credentials to attach
  /// [defaultMode] Default traffic mode: ALLOW or BLOCK
  /// [description] Optional free-form description.
  /// [domainAclId] ID of the domain ACL to attach (omit or null for none)
  /// [name] Name of the deployment
  /// [onErrorAction] Action for runtime Rego errors. Omit to use BLOCK.
  /// [policySetIds] IDs of policy sets to attach
  /// [regoRaiseError] Whether OPA builtin failures are raised as runtime evaluation errors. Omit to use the default true value.
  /// [tags] Tags to attach. Keys are limited to 256 UTF-8 bytes and values to 1024 UTF-8 bytes.
  const ZeroTrustCwsDeploymentArgs({
    required this.accountId,
    required this.basicAuthCredentialIds,
    required this.defaultMode,
    this.description,
    this.domainAclId,
    required this.name,
    this.onErrorAction,
    required this.policySetIds,
    this.regoRaiseError,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'basicAuthCredentialIds': basicAuthCredentialIds,
      'defaultMode': defaultMode,
      'description': ?description,
      'domainAclId': ?domainAclId,
      'name': name,
      'onErrorAction': ?onErrorAction,
      'policySetIds': policySetIds,
      'regoRaiseError': ?regoRaiseError,
      'tags': ?tags,
    };
  }

  factory ZeroTrustCwsDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCwsDeploymentArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      basicAuthCredentialIds: pulumi.Input.fromValue((map['basicAuthCredentialIds'] as List).cast<String>()),
      defaultMode: pulumi.Input.fromValue(map['defaultMode'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainAclId: (() { final guardedValue = map['domainAclId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      onErrorAction: (() { final guardedValue = map['onErrorAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policySetIds: pulumi.Input.fromValue((map['policySetIds'] as List).cast<String>()),
      regoRaiseError: (() { final guardedValue = map['regoRaiseError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
