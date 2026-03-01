// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_response_networksecurity_v1beta1.dart';

/// Result data returned by getAuthorizationPolicy.
class GetAuthorizationPolicyNetworksecurityV1beta1Result {
  /// The action to take when a rule match is found. Possible values are "ALLOW" or "DENY".
  final String action;
  /// The timestamp when the resource was created.
  final String createTime;
  /// Optional. Free-text description of the resource.
  final String description;
  /// Optional. Set of label tags associated with the AuthorizationPolicy resource.
  final Map<String, String> labels;
  /// Name of the AuthorizationPolicy resource. It matches pattern `projects/{project}/locations/{location}/authorizationPolicies/`.
  final String name;
  /// Optional. List of rules to match. Note that at least one of the rules must match in order for the action specified in the 'action' field to be taken. A rule is a match if there is a matching source and destination. If left blank, the action specified in the `action` field will be applied on every request.
  final List<RuleResponseNetworksecurityV1beta1> rules;
  /// The timestamp when the resource was updated.
  final String updateTime;

  /// Creates a new [GetAuthorizationPolicyNetworksecurityV1beta1Result].
  /// [action] The action to take when a rule match is found. Possible values are "ALLOW" or "DENY".
  /// [createTime] The timestamp when the resource was created.
  /// [description] Optional. Free-text description of the resource.
  /// [labels] Optional. Set of label tags associated with the AuthorizationPolicy resource.
  /// [name] Name of the AuthorizationPolicy resource. It matches pattern `projects/{project}/locations/{location}/authorizationPolicies/`.
  /// [rules] Optional. List of rules to match. Note that at least one of the rules must match in order for the action specified in the 'action' field to be taken. A rule is a match if there is a matching source and destination. If left blank, the action specified in the `action` field will be applied on every request.
  /// [updateTime] The timestamp when the resource was updated.
  GetAuthorizationPolicyNetworksecurityV1beta1Result({
    required this.action,
    required this.createTime,
    required this.description,
    required this.labels,
    required this.name,
    required this.rules,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'createTime': createTime,
      'description': description,
      'labels': labels,
      'name': name,
      'rules': pulumi.Input.encodeList<RuleResponseNetworksecurityV1beta1, Map<String, dynamic>>(rules, (value) => value.toMap()),
      'updateTime': updateTime,
    };
  }

  factory GetAuthorizationPolicyNetworksecurityV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationPolicyNetworksecurityV1beta1Result(
      action: map['action'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      rules: pulumi.Input.decodeList<RuleResponseNetworksecurityV1beta1>(map['rules'], (value) => RuleResponseNetworksecurityV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] as String,
    );
  }
}

