// ignore_for_file: unused_element, unnecessary_cast


class EnvironmentIdentifier {
  /// The environment name.
  final String name;
  /// The organization name.
  final String organization;
  /// The project name.
  final String project;

  /// Creates a new [EnvironmentIdentifier].
  /// [name] The environment name.
  /// [organization] The organization name.
  /// [project] The project name.
  EnvironmentIdentifier({
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
      name: map['name'] as String,
      organization: map['organization'] as String,
      project: map['project'] as String,
    );
  }
}

