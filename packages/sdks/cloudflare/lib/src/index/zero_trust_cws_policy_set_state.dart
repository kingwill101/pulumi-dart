// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_cws_policy_set_policy.dart';

/// Input properties used for looking up and filtering ZeroTrustCwsPolicySet resources.
class ZeroTrustCwsPolicySetState {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? createdAt;
  /// Optional free-form description.
  final pulumi.Input<String?>? description;
  /// Workload IDs that exclude matching requests. Exclusions take precedence.
  final pulumi.Input<List<String>?>? excludeWorkloadIds;
  /// Workload IDs that include matching requests. Empty or omitted includes all requests before exclusions.
  final pulumi.Input<List<String>?>? includeWorkloadIds;
  /// Name of the policy set
  final pulumi.Input<String?>? name;
  /// Policies to include with per-membership enforcement mode
  final pulumi.Input<List<ZeroTrustCwsPolicySetPolicy>?>? policies;
  /// Tags to attach. Keys are limited to 256 UTF-8 bytes and values to 1024 UTF-8 bytes.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [ZeroTrustCwsPolicySetState].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [createdAt] Optional.
  /// [description] Optional free-form description.
  /// [excludeWorkloadIds] Workload IDs that exclude matching requests. Exclusions take precedence.
  /// [includeWorkloadIds] Workload IDs that include matching requests. Empty or omitted includes all requests before exclusions.
  /// [name] Name of the policy set
  /// [policies] Policies to include with per-membership enforcement mode
  /// [tags] Tags to attach. Keys are limited to 256 UTF-8 bytes and values to 1024 UTF-8 bytes.
  /// [updatedAt] Optional.
  const ZeroTrustCwsPolicySetState({
    this.accountId,
    this.createdAt,
    this.description,
    this.excludeWorkloadIds,
    this.includeWorkloadIds,
    this.name,
    this.policies,
    this.tags,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'description': ?description,
      'excludeWorkloadIds': ?excludeWorkloadIds,
      'includeWorkloadIds': ?includeWorkloadIds,
      'name': ?name,
      'policies': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustCwsPolicySetPolicy>, List<Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeList<ZeroTrustCwsPolicySetPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'updatedAt': ?updatedAt,
    };
  }

  factory ZeroTrustCwsPolicySetState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCwsPolicySetState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludeWorkloadIds: (() { final guardedValue = map['excludeWorkloadIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includeWorkloadIds: (() { final guardedValue = map['includeWorkloadIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustCwsPolicySetPolicy>(guardedValue, (value) => ZeroTrustCwsPolicySetPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
