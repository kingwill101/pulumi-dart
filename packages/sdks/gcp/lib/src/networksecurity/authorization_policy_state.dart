// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_policy_rule.dart';

/// Input properties used for looking up and filtering AuthorizationPolicy resources.
class AuthorizationPolicyState {
  /// The action to take when a rule match is found. Possible values are "ALLOW" or "DENY".
  /// Possible values are: `ALLOW`, `DENY`.
  final pulumi.Input<String>? action;
  /// Time the AuthorizationPolicy was created in UTC.
  final pulumi.Input<String>? createTime;
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Set of label tags associated with the AuthorizationPolicy resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the authorization policy.
  /// The default value is `global`.
  final pulumi.Input<String>? location;
  /// Name of the AuthorizationPolicy resource.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// List of rules to match. Note that at least one of the rules must match in order for the action specified in the 'action' field to be taken.
  /// A rule is a match if there is a matching source and destination. If left blank, the action specified in the action field will be applied on every request.
  /// Structure is documented below.
  final pulumi.Input<List<AuthorizationPolicyRule>>? rules;
  /// Time the AuthorizationPolicy was updated in UTC.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [AuthorizationPolicyState].
  /// [action] The action to take when a rule match is found. Possible values are "ALLOW" or "DENY".
  /// [createTime] Time the AuthorizationPolicy was created in UTC.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Set of label tags associated with the AuthorizationPolicy resource.
  /// [location] The location of the authorization policy.
  /// [name] Name of the AuthorizationPolicy resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [rules] List of rules to match. Note that at least one of the rules must match in order for the action specified in the 'action' field to be taken.
  /// [updateTime] Time the AuthorizationPolicy was updated in UTC.
  AuthorizationPolicyState({
    this.action,
    this.createTime,
    this.description,
    this.effectiveLabels,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.rules,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<AuthorizationPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<AuthorizationPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updateTime': ?updateTime,
    };
  }

  factory AuthorizationPolicyState.fromMap(Map<String, dynamic> map) {
    return AuthorizationPolicyState(
      action: map['action'] == null ? null : (map['action']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<AuthorizationPolicyRule>(map['rules']!, (value) => AuthorizationPolicyRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

