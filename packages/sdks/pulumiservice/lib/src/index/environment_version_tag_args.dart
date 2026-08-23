// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_environment_version_tag_args_doc}
/// The set of arguments for EnvironmentVersionTag.
/// {@endtemplate}
/// {@macro pulumi_index_environment_version_tag_args_doc}
class EnvironmentVersionTagArgs {
  /// Environment name.
  final pulumi.Input<String> environment;
  /// Organization name.
  final pulumi.Input<String> organization;
  /// Project name.
  final pulumi.Input<String>? project;
  /// Revision number.
  final pulumi.Input<int> revision;
  /// Tag name.
  final pulumi.Input<String> tagName;

  /// Creates a new [EnvironmentVersionTagArgs].
  /// [environment] Environment name.
  /// [organization] Organization name.
  /// [project] Project name.
  /// [revision] Revision number.
  /// [tagName] Tag name.
  const EnvironmentVersionTagArgs({
    required this.environment,
    required this.organization,
    this.project,
    required this.revision,
    required this.tagName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environment': environment,
      'organization': organization,
      'project': ?project,
      'revision': revision,
      'tagName': tagName,
    };
  }

  factory EnvironmentVersionTagArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentVersionTagArgs(
      environment: pulumi.Input.fromValue(map['environment'] as String),
      organization: pulumi.Input.fromValue(map['organization'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revision: pulumi.Input.fromValue(map['revision'] as int),
      tagName: pulumi.Input.fromValue(map['tagName'] as String),
    );
  }
}
