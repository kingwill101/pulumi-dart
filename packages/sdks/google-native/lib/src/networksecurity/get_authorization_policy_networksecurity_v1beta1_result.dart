// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_response_networksecurity_v1beta1.dart';

/// Result data returned by getAuthorizationPolicy.
class GetAuthorizationPolicyNetworksecurityV1beta1Result {
  /// The action to take when a rule match is found. Possible values are "ALLOW" or "DENY".
  final String? action;
  /// The timestamp when the resource was created.
  final String? createTime;
  /// Optional. Free-text description of the resource.
  final String? description;
  /// Optional. Set of label tags associated with the AuthorizationPolicy resource.
  final Map<String, String>? labels;
  /// Name of the AuthorizationPolicy resource. It matches pattern `projects/{project}/locations/{location}/authorizationPolicies/`.
  final String? name;
  /// Optional. List of rules to match. Note that at least one of the rules must match in order for the action specified in the 'action' field to be taken. A rule is a match if there is a matching source and destination. If left blank, the action specified in the `action` field will be applied on every request.
  final List<RuleResponseNetworksecurityV1beta1>? rules;
  /// The timestamp when the resource was updated.
  final String? updateTime;

  /// Creates a new [GetAuthorizationPolicyNetworksecurityV1beta1Result].
  /// [action] The action to take when a rule match is found. Possible values are "ALLOW" or "DENY".
  /// [createTime] The timestamp when the resource was created.
  /// [description] Optional. Free-text description of the resource.
  /// [labels] Optional. Set of label tags associated with the AuthorizationPolicy resource.
  /// [name] Name of the AuthorizationPolicy resource. It matches pattern `projects/{project}/locations/{location}/authorizationPolicies/`.
  /// [rules] Optional. List of rules to match. Note that at least one of the rules must match in order for the action specified in the 'action' field to be taken. A rule is a match if there is a matching source and destination. If left blank, the action specified in the `action` field will be applied on every request.
  /// [updateTime] The timestamp when the resource was updated.
  const GetAuthorizationPolicyNetworksecurityV1beta1Result({
    this.action,
    this.createTime,
    this.description,
    this.labels,
    this.name,
    this.rules,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'createTime': ?createTime,
      'description': ?description,
      'labels': ?labels,
      'name': ?name,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<RuleResponseNetworksecurityV1beta1, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'updateTime': ?updateTime,
    };
  }

  factory GetAuthorizationPolicyNetworksecurityV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationPolicyNetworksecurityV1beta1Result(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RuleResponseNetworksecurityV1beta1>(guardedValue, (value) => RuleResponseNetworksecurityV1beta1.fromMap((value as Map).cast<String, dynamic>())); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
