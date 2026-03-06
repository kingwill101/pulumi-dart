// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetProjectProject {
  /// Creation time in RFC3339 UTC "Zulu" format.
  final pulumi.Input<String> createTime;
  /// A set of key/value label pairs assigned on a project.
  final pulumi.Input<Map<String, String>> labels;
  /// The Project lifecycle state.
  final pulumi.Input<String> lifecycleState;
  /// The optional user-assigned display name of the project.
  final pulumi.Input<String> name;
  /// The numeric identifier of the project.
  final pulumi.Input<String> number;
  /// An optional reference to a parent resource.
  final pulumi.Input<Map<String, String>> parent;
  /// The project id of the project.
  final pulumi.Input<String> projectId;

  /// Creates a new [GetProjectProject].
  /// [createTime] Creation time in RFC3339 UTC "Zulu" format.
  /// [labels] A set of key/value label pairs assigned on a project.
  /// [lifecycleState] The Project lifecycle state.
  /// [name] The optional user-assigned display name of the project.
  /// [number] The numeric identifier of the project.
  /// [parent] An optional reference to a parent resource.
  /// [projectId] The project id of the project.
  const GetProjectProject({
    required this.createTime,
    required this.labels,
    required this.lifecycleState,
    required this.name,
    required this.number,
    required this.parent,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'labels': labels,
      'lifecycleState': lifecycleState,
      'name': name,
      'number': number,
      'parent': parent,
      'projectId': projectId,
    };
  }

  factory GetProjectProject.fromMap(Map<String, dynamic> map) {
    return GetProjectProject(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      lifecycleState: pulumi.Input.fromValue(map['lifecycleState'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      number: pulumi.Input.fromValue(map['number'] as String),
      parent: pulumi.Input.fromValue((map['parent'] as Map).cast<String, String>()),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
    );
  }
}

