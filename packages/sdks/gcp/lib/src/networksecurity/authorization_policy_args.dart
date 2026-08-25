// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_policy_rule.dart';

/// {@template pulumi_networksecurity_authorization_policy_authorization_policy_args_doc}
/// The set of arguments for AuthorizationPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_authorization_policy_authorization_policy_args_doc}
class AuthorizationPolicyArgs {
  /// The action to take when a rule match is found. Possible values are "ALLOW" or "DENY".
  /// Possible values are: `ALLOW`, `DENY`.
  final pulumi.Input<String> action;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String?>? description;
  /// Set of label tags associated with the AuthorizationPolicy resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location of the authorization policy.
  /// The default value is `global`.
  final pulumi.Input<String?>? location;
  /// Name of the AuthorizationPolicy resource.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// List of rules to match. Note that at least one of the rules must match in order for the action specified in the 'action' field to be taken.
  /// A rule is a match if there is a matching source and destination. If left blank, the action specified in the action field will be applied on every request.
  /// Structure is documented below.
  final pulumi.Input<List<AuthorizationPolicyRule>?>? rules;

  /// Creates a new [AuthorizationPolicyArgs].
  /// [action] The action to take when a rule match is found. Possible values are "ALLOW" or "DENY".
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [labels] Set of label tags associated with the AuthorizationPolicy resource.
  /// [location] The location of the authorization policy.
  /// [name] Name of the AuthorizationPolicy resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [rules] List of rules to match. Note that at least one of the rules must match in order for the action specified in the 'action' field to be taken.
  const AuthorizationPolicyArgs({
    required this.action,
    this.deletionPolicy,
    this.description,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<AuthorizationPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<AuthorizationPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AuthorizationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AuthorizationPolicyArgs(
      action: pulumi.Input.fromValue(map['action'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthorizationPolicyRule>(guardedValue, (value) => AuthorizationPolicyRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
