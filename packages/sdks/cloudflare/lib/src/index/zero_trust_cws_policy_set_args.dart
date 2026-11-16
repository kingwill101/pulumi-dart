// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_cws_policy_set_policy.dart';

/// {@template pulumi_index_zero_trust_cws_policy_set_zero_trust_cws_policy_set_args_doc}
/// The set of arguments for ZeroTrustCwsPolicySet.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_cws_policy_set_zero_trust_cws_policy_set_args_doc}
class ZeroTrustCwsPolicySetArgs {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String> accountId;
  /// Optional free-form description.
  final pulumi.Input<String?>? description;
  /// Workload IDs that exclude matching requests. Exclusions take precedence.
  final pulumi.Input<List<String>?>? excludeWorkloadIds;
  /// Workload IDs that include matching requests. Empty or omitted includes all requests before exclusions.
  final pulumi.Input<List<String>?>? includeWorkloadIds;
  /// Name of the policy set
  final pulumi.Input<String> name;
  /// Policies to include with per-membership enforcement mode
  final pulumi.Input<List<ZeroTrustCwsPolicySetPolicy>> policies;
  /// Tags to attach. Keys are limited to 256 UTF-8 bytes and values to 1024 UTF-8 bytes.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ZeroTrustCwsPolicySetArgs].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [description] Optional free-form description.
  /// [excludeWorkloadIds] Workload IDs that exclude matching requests. Exclusions take precedence.
  /// [includeWorkloadIds] Workload IDs that include matching requests. Empty or omitted includes all requests before exclusions.
  /// [name] Name of the policy set
  /// [policies] Policies to include with per-membership enforcement mode
  /// [tags] Tags to attach. Keys are limited to 256 UTF-8 bytes and values to 1024 UTF-8 bytes.
  const ZeroTrustCwsPolicySetArgs({
    required this.accountId,
    this.description,
    this.excludeWorkloadIds,
    this.includeWorkloadIds,
    required this.name,
    required this.policies,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'description': ?description,
      'excludeWorkloadIds': ?excludeWorkloadIds,
      'includeWorkloadIds': ?includeWorkloadIds,
      'name': name,
      'policies': pulumi.Input.mapInputValue<List<ZeroTrustCwsPolicySetPolicy>, List<Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeList<ZeroTrustCwsPolicySetPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory ZeroTrustCwsPolicySetArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCwsPolicySetArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludeWorkloadIds: (() { final guardedValue = map['excludeWorkloadIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includeWorkloadIds: (() { final guardedValue = map['includeWorkloadIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      policies: pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustCwsPolicySetPolicy>(map['policies']!, (value) => ZeroTrustCwsPolicySetPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
