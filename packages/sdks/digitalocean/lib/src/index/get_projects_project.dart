// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetProjectsProject {
  /// The date and time when the project was created, (ISO8601)
  final pulumi.Input<String> createdAt;

  /// The description of the project
  final pulumi.Input<String> description;

  /// The environment of the project's resources. The possible values are: `Development`, `Staging`, `Production`.
  final pulumi.Input<String> environment;

  /// The ID of the project
  final pulumi.Input<String> id;
  final pulumi.Input<bool> isDefault;

  /// The name of the project
  final pulumi.Input<String> name;

  /// The ID of the project owner
  final pulumi.Input<int> ownerId;

  /// The unique universal identifier of the project owner
  final pulumi.Input<String> ownerUuid;

  /// The purpose of the project (Default: "Web Application")
  final pulumi.Input<String> purpose;

  /// A set of uniform resource names (URNs) for the resources associated with the project
  final pulumi.Input<List<String>> resources;

  /// The date and time when the project was last updated, (ISO8601)
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetProjectsProject].
  /// [createdAt] The date and time when the project was created, (ISO8601)
  /// [description] The description of the project
  /// [environment] The environment of the project's resources. The possible values are: `Development`, `Staging`, `Production`.
  /// [id] The ID of the project
  /// [isDefault] Required.
  /// [name] The name of the project
  /// [ownerId] The ID of the project owner
  /// [ownerUuid] The unique universal identifier of the project owner
  /// [purpose] The purpose of the project (Default: "Web Application")
  /// [resources] A set of uniform resource names (URNs) for the resources associated with the project
  /// [updatedAt] The date and time when the project was last updated, (ISO8601)
  GetProjectsProject({
    required this.createdAt,
    required this.description,
    required this.environment,
    required this.id,
    required this.isDefault,
    required this.name,
    required this.ownerId,
    required this.ownerUuid,
    required this.purpose,
    required this.resources,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'description': description,
      'environment': environment,
      'id': id,
      'isDefault': isDefault,
      'name': name,
      'ownerId': ownerId,
      'ownerUuid': ownerUuid,
      'purpose': purpose,
      'resources': resources,
      'updatedAt': updatedAt,
    };
  }

  factory GetProjectsProject.fromMap(Map<String, dynamic> map) {
    return GetProjectsProject(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      environment: pulumi.Input.fromValue(map['environment'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      isDefault: pulumi.Input.fromValue(map['isDefault'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      ownerId: pulumi.Input.fromValue(map['ownerId'] as int),
      ownerUuid: pulumi.Input.fromValue(map['ownerUuid'] as String),
      purpose: pulumi.Input.fromValue(map['purpose'] as String),
      resources: pulumi.Input.fromValue(
        (map['resources'] as List).cast<String>(),
      ),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}
