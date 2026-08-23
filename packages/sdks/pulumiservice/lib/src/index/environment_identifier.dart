// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentIdentifier {
  /// The environment name.
  final pulumi.Input<String> name;
  /// The organization name.
  final pulumi.Input<String> organization;
  /// The project name.
  final pulumi.Input<String> project;

  /// Creates a new [EnvironmentIdentifier].
  /// [name] The environment name.
  /// [organization] The organization name.
  /// [project] The project name.
  const EnvironmentIdentifier({
    required this.name,
    required this.organization,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'organization': organization,
      'project': project,
    };
  }

  factory EnvironmentIdentifier.fromMap(Map<String, dynamic> map) {
    return EnvironmentIdentifier(
      name: pulumi.Input.fromValue(map['name'] as String),
      organization: pulumi.Input.fromValue(map['organization'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
    );
  }
}
