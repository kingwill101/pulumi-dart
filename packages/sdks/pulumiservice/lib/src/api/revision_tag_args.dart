// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_esc_revision_tag_args_doc}
/// The set of arguments for RevisionTag.
/// {@endtemplate}
/// {@macro pulumi_api_esc_revision_tag_args_doc}
class RevisionTagArgs {
  /// The environment name
  final pulumi.Input<String> envName;
  /// The name
  final pulumi.Input<String> name;
  /// The organization name
  final pulumi.Input<String> orgName;
  /// The project name
  final pulumi.Input<String> projectName;
  /// The revision
  final pulumi.Input<int>? revision;

  /// Creates a new [RevisionTagArgs].
  /// [envName] The environment name
  /// [name] The name
  /// [orgName] The organization name
  /// [projectName] The project name
  /// [revision] The revision
  const RevisionTagArgs({
    required this.envName,
    required this.name,
    required this.orgName,
    required this.projectName,
    this.revision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'envName': envName,
      'name': name,
      'orgName': orgName,
      'projectName': projectName,
      'revision': ?revision,
    };
  }

  factory RevisionTagArgs.fromMap(Map<String, dynamic> map) {
    return RevisionTagArgs(
      envName: pulumi.Input.fromValue(map['envName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
