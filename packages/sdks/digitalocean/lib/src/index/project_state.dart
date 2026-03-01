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
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? description,
    pulumi.Output<String>? environment,
    pulumi.Output<bool>? isDefault,
    pulumi.Output<String>? name,
    pulumi.Output<int>? ownerId,
    pulumi.Output<String>? ownerUuid,
    pulumi.Output<String>? purpose,
    pulumi.Output<List<String>>? resources,
    pulumi.Output<String>? updatedAt,
  }) :
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      description = pulumi.Input.asOptionalInput<String>(description),
      environment = pulumi.Input.asOptionalInput<String>(environment),
      isDefault = pulumi.Input.asOptionalInput<bool>(isDefault),
      name = pulumi.Input.asOptionalInput<String>(name),
      ownerId = pulumi.Input.asOptionalInput<int>(ownerId),
      ownerUuid = pulumi.Input.asOptionalInput<String>(ownerUuid),
      purpose = pulumi.Input.asOptionalInput<String>(purpose),
      resources = pulumi.Input.asOptionalInput<List<String>>(resources),
      updatedAt = pulumi.Input.asOptionalInput<String>(updatedAt);

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
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      environment: map['environment'] == null ? null : pulumi.Output.create<String>(map['environment'] as String),
      isDefault: map['isDefault'] == null ? null : pulumi.Output.create<bool>(map['isDefault'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<int>(map['ownerId'] as int),
      ownerUuid: map['ownerUuid'] == null ? null : pulumi.Output.create<String>(map['ownerUuid'] as String),
      purpose: map['purpose'] == null ? null : pulumi.Output.create<String>(map['purpose'] as String),
      resources: map['resources'] == null ? null : pulumi.Output.create<List<String>>((map['resources'] as List).cast<String>()),
      updatedAt: map['updatedAt'] == null ? null : pulumi.Output.create<String>(map['updatedAt'] as String),
    );
  }
}

