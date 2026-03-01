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
    required pulumi.Output<String> environment,
    required pulumi.Output<String> organization,
    pulumi.Output<String>? project,
    required pulumi.Output<int> revision,
    required pulumi.Output<String> tagName,
  }) :
      environment = pulumi.Input.asInput<String>(environment),
      organization = pulumi.Input.asInput<String>(organization),
      project = pulumi.Input.asOptionalInput<String>(project),
      revision = pulumi.Input.asInput<int>(revision),
      tagName = pulumi.Input.asInput<String>(tagName);

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
      environment: pulumi.Output.create<String>(map['environment'] as String),
      organization: pulumi.Output.create<String>(map['organization'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      revision: pulumi.Output.create<int>(map['revision'] as int),
      tagName: pulumi.Output.create<String>(map['tagName'] as String),
    );
  }
}

