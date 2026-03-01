// ignore_for_file: unused_element, unnecessary_cast


/// A reference to a stack within a policy group.
class PolicyGroupStackReference {
  /// The name of the stack.
  final String name;
  /// The routing project name (also known as project name).
  final String routingProject;

  /// Creates a new [PolicyGroupStackReference].
  /// [name] The name of the stack.
  /// [routingProject] The routing project name (also known as project name).
  PolicyGroupStackReference({
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
      name: map['name'] as String,
      routingProject: map['routingProject'] as String,
    );
  }
}

