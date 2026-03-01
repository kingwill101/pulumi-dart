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
    pulumi.Output<String>? action,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<List<AuthorizationPolicyRule>>? rules,
    pulumi.Output<String>? updateTime,
  }) :
      action = pulumi.Input.asOptionalInput<String>(action),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      rules = pulumi.Input.asOptionalInput<List<AuthorizationPolicyRule>>(rules),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      action: map['action'] == null ? null : pulumi.Output.create<String>(map['action'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<AuthorizationPolicyRule>>(pulumi.Input.decodeList<AuthorizationPolicyRule>(map['rules'], (value) => AuthorizationPolicyRule.fromMap((value as Map).cast<String, dynamic>()))),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

