// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Release resources.
class ReleaseState {
  /// Output only. Time the release was created.
  final pulumi.Input<String>? createTime;
  /// Disable the release to keep it from being served. The response code of NOT_FOUND will be given for executables generated from this Release.
  final pulumi.Input<bool>? disabled;
  /// Format: `projects/{project_id}/releases/{release_id}`\Firestore Rules Releases will **always** have the name 'cloud.firestore'
  final pulumi.Input<String>? name;
  /// The project for the resource
  final pulumi.Input<String>? project;
  /// Name of the `Ruleset` referred to by this `Release`. The `Ruleset` must exist for the `Release` to be created.
  ///
  ///
  ///
  /// - - -
  final pulumi.Input<String>? rulesetName;
  /// Output only. Time the release was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ReleaseState].
  /// [createTime] Output only. Time the release was created.
  /// [disabled] Disable the release to keep it from being served. The response code of NOT_FOUND will be given for executables generated from this Release.
  /// [name] Format: `projects/{project_id}/releases/{release_id}`\Firestore Rules Releases will **always** have the name 'cloud.firestore'
  /// [project] The project for the resource
  /// [rulesetName] Name of the `Ruleset` referred to by this `Release`. The `Ruleset` must exist for the `Release` to be created.
  /// [updateTime] Output only. Time the release was updated.
  ReleaseState({
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? disabled,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? rulesetName,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      rulesetName = pulumi.Input.asOptionalInput<String>(rulesetName),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'disabled': ?disabled,
      'name': ?name,
      'project': ?project,
      'rulesetName': ?rulesetName,
      'updateTime': ?updateTime,
    };
  }

  factory ReleaseState.fromMap(Map<String, dynamic> map) {
    return ReleaseState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      rulesetName: map['rulesetName'] == null ? null : pulumi.Output.create<String>(map['rulesetName'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

