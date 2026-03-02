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
  EnvironmentVersionTagArgs({
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
      environment: (map['environment'] as String).input(),
      organization: (map['organization'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      revision: (map['revision'] as int).input(),
      tagName: (map['tagName'] as String).input(),
    );
  }
}

