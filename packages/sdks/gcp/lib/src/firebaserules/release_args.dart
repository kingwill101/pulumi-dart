// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebaserules_release_release_args_doc}
/// The set of arguments for Release.
/// {@endtemplate}
/// {@macro pulumi_firebaserules_release_release_args_doc}
class ReleaseArgs {
  /// Format: `projects/{project_id}/releases/{release_id}`\Firestore Rules Releases will **always** have the name 'cloud.firestore'
  final pulumi.Input<String>? name;
  /// The project for the resource
  final pulumi.Input<String>? project;
  /// Name of the `Ruleset` referred to by this `Release`. The `Ruleset` must exist for the `Release` to be created.
  ///
  ///
  ///
  /// - - -
  final pulumi.Input<String> rulesetName;

  /// Creates a new [ReleaseArgs].
  /// [name] Format: `projects/{project_id}/releases/{release_id}`\Firestore Rules Releases will **always** have the name 'cloud.firestore'
  /// [project] The project for the resource
  /// [rulesetName] Name of the `Ruleset` referred to by this `Release`. The `Ruleset` must exist for the `Release` to be created.
  ReleaseArgs({
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    required pulumi.Output<String> rulesetName,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      rulesetName = pulumi.Input.asInput<String>(rulesetName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'project': ?project,
      'rulesetName': rulesetName,
    };
  }

  factory ReleaseArgs.fromMap(Map<String, dynamic> map) {
    return ReleaseArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      rulesetName: pulumi.Output.create<String>(map['rulesetName'] as String),
    );
  }
}

