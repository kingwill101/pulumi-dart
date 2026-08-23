// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_condition.dart';

/// {@template pulumi_artifactregistry_rule_rule_args_doc}
/// The set of arguments for Rule.
/// {@endtemplate}
/// {@macro pulumi_artifactregistry_rule_rule_args_doc}
class RuleArgs {
  /// The action this rule takes.
  /// Possible values are: `ACTION_UNSPECIFIED`, `ALLOW`, `DENY`.
  final pulumi.Input<String>? action;
  /// Optional. A CEL expression for conditions that must be met in order for the
  /// rule to apply. If not provided, the rule matches all objects.
  /// Structure is documented below.
  final pulumi.Input<RuleCondition>? condition;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The name of the repository's location. In addition to specific regions,
  /// special values for multi-region locations are `asia`, `europe`, and `us`.
  /// See [here](https://cloud.google.com/artifact-registry/docs/repositories/repo-locations),
  /// or use the
  /// gcp.artifactregistry.getLocations
  /// data source for possible values.
  final pulumi.Input<String>? location;
  /// The operation the rule applies to.
  /// Possible values are: `OPERATION_UNSPECIFIED`, `DOWNLOAD`.
  final pulumi.Input<String>? operation;
  /// The package ID the rule applies to. If empty, this rule applies to all
  /// packages inside the repository.
  final pulumi.Input<String>? packageId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The last part of the repository name, for example:
  /// "repo1"
  final pulumi.Input<String> repositoryId;
  /// The rule id to use for this repository.
  final pulumi.Input<String> ruleId;

  /// Creates a new [RuleArgs].
  /// [action] The action this rule takes.
  /// [condition] Optional. A CEL expression for conditions that must be met in order for the
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [location] The name of the repository's location. In addition to specific regions,
  /// [operation] The operation the rule applies to.
  /// [packageId] The package ID the rule applies to. If empty, this rule applies to all
  /// [project] The ID of the project in which the resource belongs.
  /// [repositoryId] The last part of the repository name, for example:
  /// [ruleId] The rule id to use for this repository.
  const RuleArgs({
    this.action,
    this.condition,
    this.deletionPolicy,
    this.location,
    this.operation,
    this.packageId,
    this.project,
    required this.repositoryId,
    required this.ruleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'condition': ?pulumi.Input.mapOptionalInputValue<RuleCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'location': ?location,
      'operation': ?operation,
      'packageId': ?packageId,
      'project': ?project,
      'repositoryId': repositoryId,
      'ruleId': ruleId,
    };
  }

  factory RuleArgs.fromMap(Map<String, dynamic> map) {
    return RuleArgs(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operation: (() { final guardedValue = map['operation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packageId: (() { final guardedValue = map['packageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryId: pulumi.Input.fromValue(map['repositoryId'] as String),
      ruleId: pulumi.Input.fromValue(map['ruleId'] as String),
    );
  }
}
