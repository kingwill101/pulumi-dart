// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetD1DatabasesResult {
  /// Specifies the timestamp the resource was created as an ISO8601 string.
  final pulumi.Input<String> createdAt;
  /// D1 database identifier (UUID).
  final pulumi.Input<String> id;
  /// Specify the location to restrict the D1 database to run and store data. If this option is present, the location hint is ignored.
  /// Available values: "eu", "fedramp".
  final pulumi.Input<String> jurisdiction;
  /// D1 database name.
  final pulumi.Input<String> name;
  /// D1 database identifier (UUID).
  final pulumi.Input<String> uuid;
  final pulumi.Input<String> version;

  /// Creates a new [GetD1DatabasesResult].
  /// [createdAt] Specifies the timestamp the resource was created as an ISO8601 string.
  /// [id] D1 database identifier (UUID).
  /// [jurisdiction] Specify the location to restrict the D1 database to run and store data. If this option is present, the location hint is ignored.
  /// [name] D1 database name.
  /// [uuid] D1 database identifier (UUID).
  /// [version] Required.
  const GetD1DatabasesResult({
    required this.createdAt,
    required this.id,
    required this.jurisdiction,
    required this.name,
    required this.uuid,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'id': id,
      'jurisdiction': jurisdiction,
      'name': name,
      'uuid': uuid,
      'version': version,
    };
  }

  factory GetD1DatabasesResult.fromMap(Map<String, dynamic> map) {
    return GetD1DatabasesResult(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      jurisdiction: pulumi.Input.fromValue(map['jurisdiction'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      uuid: pulumi.Input.fromValue(map['uuid'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
