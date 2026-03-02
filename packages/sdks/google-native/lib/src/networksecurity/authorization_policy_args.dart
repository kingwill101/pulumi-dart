// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_policy_action.dart';
import 'rule_networksecurity_v1.dart';

/// {@template pulumi_networksecurity_v1_authorization_policy_args_doc}
/// The set of arguments for AuthorizationPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1_authorization_policy_args_doc}
class AuthorizationPolicyArgs {
  /// The action to take when a rule match is found. Possible values are "ALLOW" or "DENY".
  final pulumi.Input<AuthorizationPolicyAction> action;
  /// Required. Short name of the AuthorizationPolicy resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "authz_policy".
  final pulumi.Input<String> authorizationPolicyId;
  /// Optional. Free-text description of the resource.
  final pulumi.Input<String>? description;
  /// Optional. Set of label tags associated with the AuthorizationPolicy resource.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Name of the AuthorizationPolicy resource. It matches pattern `projects/{project}/locations/{location}/authorizationPolicies/`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Optional. List of rules to match. Note that at least one of the rules must match in order for the action specified in the 'action' field to be taken. A rule is a match if there is a matching source and destination. If left blank, the action specified in the `action` field will be applied on every request.
  final pulumi.Input<List<RuleNetworksecurityV1>>? rules;

  /// Creates a new [AuthorizationPolicyArgs].
  /// [action] The action to take when a rule match is found. Possible values are "ALLOW" or "DENY".
  /// [authorizationPolicyId] Required. Short name of the AuthorizationPolicy resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "authz_policy".
  /// [description] Optional. Free-text description of the resource.
  /// [labels] Optional. Set of label tags associated with the AuthorizationPolicy resource.
  /// [location] Optional.
  /// [name] Name of the AuthorizationPolicy resource. It matches pattern `projects/{project}/locations/{location}/authorizationPolicies/`.
  /// [project] Optional.
  /// [rules] Optional. List of rules to match. Note that at least one of the rules must match in order for the action specified in the 'action' field to be taken. A rule is a match if there is a matching source and destination. If left blank, the action specified in the `action` field will be applied on every request.
  AuthorizationPolicyArgs({
    required this.action,
    required this.authorizationPolicyId,
    this.description,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<AuthorizationPolicyAction, String>(action, (value) => value.value),
      'authorizationPolicyId': authorizationPolicyId,
      'description': ?description,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'rules': ?rules,
    };
  }

  factory AuthorizationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AuthorizationPolicyArgs(
      action: (AuthorizationPolicyAction.fromValue(map['action'] as String)).input(),
      authorizationPolicyId: (map['authorizationPolicyId'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      rules: map['rules'] == null ? null : ((map['rules']! as List).cast<RuleNetworksecurityV1>()).input(),
    );
  }
}

