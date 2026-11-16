// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_cws_policy_sets_result_policy.dart';

class GetZeroTrustCwsPolicySetsResult {
  final pulumi.Input<String> createdAt;
  /// Optional free-form description.
  final pulumi.Input<String> description;
  /// IDs of workloads that exclude matching requests. Exclusions take precedence.
  final pulumi.Input<List<String>> excludeWorkloadIds;
  /// Server-assigned UUID
  final pulumi.Input<String> id;
  /// IDs of workloads that include matching requests. Empty includes all requests before exclusions.
  final pulumi.Input<List<String>> includeWorkloadIds;
  /// Human-readable name; unique per account
  final pulumi.Input<String> name;
  /// Member policies and their per-membership enforcement mode
  final pulumi.Input<List<GetZeroTrustCwsPolicySetsResultPolicy>> policies;
  /// Tags attached to this policy set
  final pulumi.Input<Map<String, String>> tags;
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetZeroTrustCwsPolicySetsResult].
  /// [createdAt] Required.
  /// [description] Optional free-form description.
  /// [excludeWorkloadIds] IDs of workloads that exclude matching requests. Exclusions take precedence.
  /// [id] Server-assigned UUID
  /// [includeWorkloadIds] IDs of workloads that include matching requests. Empty includes all requests before exclusions.
  /// [name] Human-readable name; unique per account
  /// [policies] Member policies and their per-membership enforcement mode
  /// [tags] Tags attached to this policy set
  /// [updatedAt] Required.
  const GetZeroTrustCwsPolicySetsResult({
    required this.createdAt,
    required this.description,
    required this.excludeWorkloadIds,
    required this.id,
    required this.includeWorkloadIds,
    required this.name,
    required this.policies,
    required this.tags,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'description': description,
      'excludeWorkloadIds': excludeWorkloadIds,
      'id': id,
      'includeWorkloadIds': includeWorkloadIds,
      'name': name,
      'policies': pulumi.Input.mapInputValue<List<GetZeroTrustCwsPolicySetsResultPolicy>, List<Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeList<GetZeroTrustCwsPolicySetsResultPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': tags,
      'updatedAt': updatedAt,
    };
  }

  factory GetZeroTrustCwsPolicySetsResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsPolicySetsResult(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      excludeWorkloadIds: pulumi.Input.fromValue((map['excludeWorkloadIds'] as List).cast<String>()),
      id: pulumi.Input.fromValue(map['id'] as String),
      includeWorkloadIds: pulumi.Input.fromValue((map['includeWorkloadIds'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      policies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustCwsPolicySetsResultPolicy>(map['policies']!, (value) => GetZeroTrustCwsPolicySetsResultPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}
