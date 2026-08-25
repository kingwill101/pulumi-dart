// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_chronicle_rule_rule_args_doc}
/// The set of arguments for Rule.
/// {@endtemplate}
/// {@macro pulumi_chronicle_rule_rule_args_doc}
class RuleArgs {
  /// Policy to determine if the rule should be deleted forcefully.
  /// If deletionPolicy = "FORCE", any retrohunts and any detections associated with the rule
  /// will also be deleted. If deletionPolicy = "DEFAULT", the call will only succeed if the
  /// rule has no associated retrohunts, including completed retrohunts, and no
  /// associated detections. Regardless of being set to "FORCE" the rule
  /// deployment associated with this rule will also be deleted if deletion is successful.
  ///
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", the command will behave as if set to "DEFAULT".
  ///
  /// Possible values: DEFAULT, FORCE, PREVENT, ABANDON, DELETE
  final pulumi.Input<String?>? deletionPolicy;
  /// The etag for this rule.
  /// If this is provided on update, the request will succeed if and only if it
  /// matches the server-computed value, and will fail with an ABORTED error
  /// otherwise.
  /// Populated in BASIC view and FULL view.
  final pulumi.Input<String?>? etag;
  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  final pulumi.Input<String> instance;
  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Rule Id is the ID of the Rule.
  final pulumi.Input<String?>? ruleId;
  /// Resource name of the DataAccessScope bound to this rule.
  /// Populated in BASIC view and FULL view.
  /// If reference lists are used in the rule, validations will be performed
  /// against this scope to ensure that the reference lists are compatible with
  /// both the user's and the rule's scopes.
  /// The scope should be in the format:
  /// "projects/{project}/locations/{location}/instances/{instance}/dataAccessScopes/{scope}".
  final pulumi.Input<String?>? scope;
  /// The YARA-L content of the rule.
  /// Populated in FULL view.
  final pulumi.Input<String?>? text;

  /// Creates a new [RuleArgs].
  /// [deletionPolicy] Policy to determine if the rule should be deleted forcefully.
  /// [etag] The etag for this rule.
  /// [instance] The unique identifier for the Chronicle instance, which is the same as the customer ID.
  /// [location] The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  /// [project] The ID of the project in which the resource belongs.
  /// [ruleId] Rule Id is the ID of the Rule.
  /// [scope] Resource name of the DataAccessScope bound to this rule.
  /// [text] The YARA-L content of the rule.
  const RuleArgs({
    this.deletionPolicy,
    this.etag,
    required this.instance,
    required this.location,
    this.project,
    this.ruleId,
    this.scope,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'etag': ?etag,
      'instance': instance,
      'location': location,
      'project': ?project,
      'ruleId': ?ruleId,
      'scope': ?scope,
      'text': ?text,
    };
  }

  factory RuleArgs.fromMap(Map<String, dynamic> map) {
    return RuleArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleId: (() { final guardedValue = map['ruleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
