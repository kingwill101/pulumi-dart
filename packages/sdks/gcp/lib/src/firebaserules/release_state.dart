// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Release resources.
class ReleaseState {
  /// Output only. Time the release was created.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Disable the release to keep it from being served. The response code of NOT_FOUND will be given for executables generated from this Release.
  final pulumi.Input<bool?>? disabled;
  /// Format: `projects/{project_id}/releases/{release_id}`\Firestore Rules Releases will **always** have the name 'cloud.firestore'
  final pulumi.Input<String?>? name;
  /// The project for the resource
  final pulumi.Input<String?>? project;
  /// Name of the `Ruleset` referred to by this `Release`. The `Ruleset` must exist for the `Release` to be created.
  ///
  ///
  ///
  /// - - -
  final pulumi.Input<String?>? rulesetName;
  /// Output only. Time the release was updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [ReleaseState].
  /// [createTime] Output only. Time the release was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [disabled] Disable the release to keep it from being served. The response code of NOT_FOUND will be given for executables generated from this Release.
  /// [name] Format: `projects/{project_id}/releases/{release_id}`\Firestore Rules Releases will **always** have the name 'cloud.firestore'
  /// [project] The project for the resource
  /// [rulesetName] Name of the `Ruleset` referred to by this `Release`. The `Ruleset` must exist for the `Release` to be created.
  /// [updateTime] Output only. Time the release was updated.
  const ReleaseState({
    this.createTime,
    this.deletionPolicy,
    this.disabled,
    this.name,
    this.project,
    this.rulesetName,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'disabled': ?disabled,
      'name': ?name,
      'project': ?project,
      'rulesetName': ?rulesetName,
      'updateTime': ?updateTime,
    };
  }

  factory ReleaseState.fromMap(Map<String, dynamic> map) {
    return ReleaseState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rulesetName: (() { final guardedValue = map['rulesetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
