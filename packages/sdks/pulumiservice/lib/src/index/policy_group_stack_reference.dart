// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A reference to a stack within a policy group.
class PolicyGroupStackReference {
  /// The name of the stack.
  final pulumi.Input<String> name;
  /// The routing project name (also known as project name).
  final pulumi.Input<String> routingProject;

  /// Creates a new [PolicyGroupStackReference].
  /// [name] The name of the stack.
  /// [routingProject] The routing project name (also known as project name).
  const PolicyGroupStackReference({
    required this.name,
    required this.routingProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'routingProject': routingProject,
    };
  }

  factory PolicyGroupStackReference.fromMap(Map<String, dynamic> map) {
    return PolicyGroupStackReference(
      name: pulumi.Input.fromValue(map['name'] as String),
      routingProject: pulumi.Input.fromValue(map['routingProject'] as String),
    );
  }
}

