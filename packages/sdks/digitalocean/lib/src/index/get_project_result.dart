// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getProject.
class GetProjectResult {
  /// The date and time when the project was created, (ISO8601)
  final String createdAt;
  /// The description of the project
  final String description;
  /// The environment of the project's resources. The possible values are: `Development`, `Staging`, `Production`.
  final String environment;
  final String id;
  final bool isDefault;
  final String name;
  /// The ID of the project owner.
  final int ownerId;
  /// The unique universal identifier of the project owner.
  final String ownerUuid;
  /// The purpose of the project, (Default: "Web Application")
  final String purpose;
  /// A set of uniform resource names (URNs) for the resources associated with the project
  final List<String> resources;
  /// The date and time when the project was last updated, (ISO8601)
  final String updatedAt;

  /// Creates a new [GetProjectResult].
  /// [createdAt] The date and time when the project was created, (ISO8601)
  /// [description] The description of the project
  /// [environment] The environment of the project's resources. The possible values are: `Development`, `Staging`, `Production`.
  /// [id] Required.
  /// [isDefault] Required.
  /// [name] Required.
  /// [ownerId] The ID of the project owner.
  /// [ownerUuid] The unique universal identifier of the project owner.
  /// [purpose] The purpose of the project, (Default: "Web Application")
  /// [resources] A set of uniform resource names (URNs) for the resources associated with the project
  /// [updatedAt] The date and time when the project was last updated, (ISO8601)
  const GetProjectResult({
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

  factory GetProjectResult.fromMap(Map<String, dynamic> map) {
    return GetProjectResult(
      createdAt: map['createdAt'] as String,
      description: map['description'] as String,
      environment: map['environment'] as String,
      id: map['id'] as String,
      isDefault: map['isDefault'] as bool,
      name: map['name'] as String,
      ownerId: map['ownerId'] as int,
      ownerUuid: map['ownerUuid'] as String,
      purpose: map['purpose'] as String,
      resources: (map['resources'] as List).cast<String>(),
      updatedAt: map['updatedAt'] as String,
    );
  }
}
