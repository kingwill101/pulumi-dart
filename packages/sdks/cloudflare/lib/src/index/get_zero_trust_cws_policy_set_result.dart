// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_cws_policy_set_filter.dart';
import 'get_zero_trust_cws_policy_set_policy.dart';

/// Result data returned by getZeroTrustCwsPolicySet.
class GetZeroTrustCwsPolicySetResult {
  /// Cloudflare account ID (32-character hexadecimal string)
  final String? accountId;
  final String? createdAt;
  /// Optional free-form description.
  final String? description;
  /// IDs of workloads that exclude matching requests. Exclusions take precedence.
  final List<String>? excludeWorkloadIds;
  final GetZeroTrustCwsPolicySetFilter? filter;
  /// ID of the policy set to retrieve
  final String? id;
  /// IDs of workloads that include matching requests. Empty includes all requests before exclusions.
  final List<String>? includeWorkloadIds;
  /// Human-readable name; unique per account
  final String? name;
  /// Member policies and their per-membership enforcement mode
  final List<GetZeroTrustCwsPolicySetPolicy>? policies;
  /// ID of the policy set to retrieve
  final String? policySetId;
  /// Tags attached to this policy set
  final Map<String, String>? tags;
  final String? updatedAt;

  /// Creates a new [GetZeroTrustCwsPolicySetResult].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [createdAt] Optional.
  /// [description] Optional free-form description.
  /// [excludeWorkloadIds] IDs of workloads that exclude matching requests. Exclusions take precedence.
  /// [filter] Optional.
  /// [id] ID of the policy set to retrieve
  /// [includeWorkloadIds] IDs of workloads that include matching requests. Empty includes all requests before exclusions.
  /// [name] Human-readable name; unique per account
  /// [policies] Member policies and their per-membership enforcement mode
  /// [policySetId] ID of the policy set to retrieve
  /// [tags] Tags attached to this policy set
  /// [updatedAt] Optional.
  const GetZeroTrustCwsPolicySetResult({
    this.accountId,
    this.createdAt,
    this.description,
    this.excludeWorkloadIds,
    this.filter,
    this.id,
    this.includeWorkloadIds,
    this.name,
    this.policies,
    this.policySetId,
    this.tags,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'description': ?description,
      'excludeWorkloadIds': ?excludeWorkloadIds,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'includeWorkloadIds': ?includeWorkloadIds,
      'name': ?name,
      'policies': ?(() { final guardedValue = policies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustCwsPolicySetPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'policySetId': ?policySetId,
      'tags': ?tags,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetZeroTrustCwsPolicySetResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsPolicySetResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      excludeWorkloadIds: (() { final guardedValue = map['excludeWorkloadIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetZeroTrustCwsPolicySetFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      includeWorkloadIds: (() { final guardedValue = map['includeWorkloadIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustCwsPolicySetPolicy>(guardedValue, (value) => GetZeroTrustCwsPolicySetPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      policySetId: (() { final guardedValue = map['policySetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
