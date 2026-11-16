// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_cws_policy_zero_trust_cws_policy_args_doc}
/// The set of arguments for ZeroTrustCwsPolicy.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_cws_policy_zero_trust_cws_policy_args_doc}
class ZeroTrustCwsPolicyArgs {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String> accountId;
  /// Optional free-form description.
  final pulumi.Input<String?>? description;
  /// Non-function rule declared in rego*source. Evaluation uses data.\n\n*path&gt;.\n\n.
  final pulumi.Input<String> entrypoint;
  /// Filter expression that determines whether this policy applies. Maximum 4096 UTF-8 bytes.
  final pulumi.Input<String> filter;
  /// Name of the policy
  final pulumi.Input<String> name;
  /// Inline Rego source with a package beginning with "policy." Maximum 16384 UTF-8 bytes.
  final pulumi.Input<String> regoSource;
  /// Tags to attach. Keys are limited to 256 UTF-8 bytes and values to 1024 UTF-8 bytes.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ZeroTrustCwsPolicyArgs].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [description] Optional free-form description.
  /// [entrypoint] Non-function rule declared in rego*source. Evaluation uses data.\n\n*path&gt;.\n\n.
  /// [filter] Filter expression that determines whether this policy applies. Maximum 4096 UTF-8 bytes.
  /// [name] Name of the policy
  /// [regoSource] Inline Rego source with a package beginning with "policy." Maximum 16384 UTF-8 bytes.
  /// [tags] Tags to attach. Keys are limited to 256 UTF-8 bytes and values to 1024 UTF-8 bytes.
  const ZeroTrustCwsPolicyArgs({
    required this.accountId,
    this.description,
    required this.entrypoint,
    required this.filter,
    required this.name,
    required this.regoSource,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'description': ?description,
      'entrypoint': entrypoint,
      'filter': filter,
      'name': name,
      'regoSource': regoSource,
      'tags': ?tags,
    };
  }

  factory ZeroTrustCwsPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCwsPolicyArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entrypoint: pulumi.Input.fromValue(map['entrypoint'] as String),
      filter: pulumi.Input.fromValue(map['filter'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      regoSource: pulumi.Input.fromValue(map['regoSource'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
