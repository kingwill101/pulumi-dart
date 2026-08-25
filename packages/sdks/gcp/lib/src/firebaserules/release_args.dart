// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebaserules_release_release_args_doc}
/// The set of arguments for Release.
/// {@endtemplate}
/// {@macro pulumi_firebaserules_release_release_args_doc}
class ReleaseArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Format: `projects/{project_id}/releases/{release_id}`\Firestore Rules Releases will **always** have the name 'cloud.firestore'
  final pulumi.Input<String?>? name;
  /// The project for the resource
  final pulumi.Input<String?>? project;
  /// Name of the `Ruleset` referred to by this `Release`. The `Ruleset` must exist for the `Release` to be created.
  ///
  ///
  ///
  /// - - -
  final pulumi.Input<String> rulesetName;

  /// Creates a new [ReleaseArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [name] Format: `projects/{project_id}/releases/{release_id}`\Firestore Rules Releases will **always** have the name 'cloud.firestore'
  /// [project] The project for the resource
  /// [rulesetName] Name of the `Ruleset` referred to by this `Release`. The `Ruleset` must exist for the `Release` to be created.
  const ReleaseArgs({
    this.deletionPolicy,
    this.name,
    this.project,
    required this.rulesetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'name': ?name,
      'project': ?project,
      'rulesetName': rulesetName,
    };
  }

  factory ReleaseArgs.fromMap(Map<String, dynamic> map) {
    return ReleaseArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rulesetName: pulumi.Input.fromValue(map['rulesetName'] as String),
    );
  }
}
