// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getProject.
class GetProjectResult {
  /// The date and time when the project was created, (ISO8601)
  final String? createdAt;
  /// The description of the project
  final String? description;
  /// The environment of the project's resources. The possible values are: `Development`, `Staging`, `Production`.
  final String? environment;
  final String? id;
  final bool? isDefault;
  final String? name;
  /// The ID of the project owner.
  final int? ownerId;
  /// The unique universal identifier of the project owner.
  final String? ownerUuid;
  /// The purpose of the project, (Default: "Web Application")
  final String? purpose;
  /// A set of uniform resource names (URNs) for the resources associated with the project
  final List<String>? resources;
  /// The date and time when the project was last updated, (ISO8601)
  final String? updatedAt;

  /// Creates a new [GetProjectResult].
  /// [createdAt] The date and time when the project was created, (ISO8601)
  /// [description] The description of the project
  /// [environment] The environment of the project's resources. The possible values are: `Development`, `Staging`, `Production`.
  /// [id] Optional.
  /// [isDefault] Optional.
  /// [name] Optional.
  /// [ownerId] The ID of the project owner.
  /// [ownerUuid] The unique universal identifier of the project owner.
  /// [purpose] The purpose of the project, (Default: "Web Application")
  /// [resources] A set of uniform resource names (URNs) for the resources associated with the project
  /// [updatedAt] The date and time when the project was last updated, (ISO8601)
  const GetProjectResult({
    this.createdAt,
    this.description,
    this.environment,
    this.id,
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
      'id': ?id,
      'isDefault': ?isDefault,
      'name': ?name,
      'ownerId': ?ownerId,
      'ownerUuid': ?ownerUuid,
      'purpose': ?purpose,
      'resources': ?resources,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetProjectResult.fromMap(Map<String, dynamic> map) {
    return GetProjectResult(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      ownerUuid: (() { final guardedValue = map['ownerUuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      purpose: (() { final guardedValue = map['purpose']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
