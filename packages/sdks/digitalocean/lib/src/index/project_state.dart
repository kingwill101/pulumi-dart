// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Project resources.
class ProjectState {
  /// the date and time when the project was created, (ISO8601)
  final pulumi.Input<String>? createdAt;
  /// the description of the project
  final pulumi.Input<String>? description;
  /// the environment of the project's resources. The possible values are: `Development`, `Staging`, `Production`)
  final pulumi.Input<String>? environment;
  /// a boolean indicating whether or not the project is the default project. (Default: "false")
  final pulumi.Input<bool>? isDefault;
  /// The name of the Project
  final pulumi.Input<String>? name;
  /// the id of the project owner.
  final pulumi.Input<int>? ownerId;
  /// the unique universal identifier of the project owner.
  final pulumi.Input<String>? ownerUuid;
  /// the purpose of the project, (Default: "Web Application")
  final pulumi.Input<String>? purpose;
  /// a list of uniform resource names (URNs) for the resources associated with the project
  final pulumi.Input<List<String>>? resources;
  /// the date and time when the project was last updated, (ISO8601)
  final pulumi.Input<String>? updatedAt;

  /// Creates a new [ProjectState].
  /// [createdAt] the date and time when the project was created, (ISO8601)
  /// [description] the description of the project
  /// [environment] the environment of the project's resources. The possible values are: `Development`, `Staging`, `Production`)
  /// [isDefault] a boolean indicating whether or not the project is the default project. (Default: "false")
  /// [name] The name of the Project
  /// [ownerId] the id of the project owner.
  /// [ownerUuid] the unique universal identifier of the project owner.
  /// [purpose] the purpose of the project, (Default: "Web Application")
  /// [resources] a list of uniform resource names (URNs) for the resources associated with the project
  /// [updatedAt] the date and time when the project was last updated, (ISO8601)
  ProjectState({
    this.createdAt,
    this.description,
    this.environment,
    this.isDefault,
    this.name,
    this.ownerId,
    this.ownerUuid,
    this.purpose,
    this.resources,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'description': ?description,
      'environment': ?environment,
      'isDefault': ?isDefault,
      'name': ?name,
      'ownerId': ?ownerId,
      'ownerUuid': ?ownerUuid,
      'purpose': ?purpose,
      'resources': ?resources,
      'updatedAt': ?updatedAt,
    };
  }

  factory ProjectState.fromMap(Map<String, dynamic> map) {
    return ProjectState(
      createdAt: map['createdAt'] == null ? null : (map['createdAt'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      environment: map['environment'] == null ? null : (map['environment'] as String).input(),
      isDefault: map['isDefault'] == null ? null : (map['isDefault'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      ownerId: map['ownerId'] == null ? null : (map['ownerId'] as int).input(),
      ownerUuid: map['ownerUuid'] == null ? null : (map['ownerUuid'] as String).input(),
      purpose: map['purpose'] == null ? null : (map['purpose'] as String).input(),
      resources: map['resources'] == null ? null : ((map['resources'] as List).cast<String>()).input(),
      updatedAt: map['updatedAt'] == null ? null : (map['updatedAt'] as String).input(),
    );
  }
}

