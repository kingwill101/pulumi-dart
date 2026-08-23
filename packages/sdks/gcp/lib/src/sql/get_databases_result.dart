// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_databases_database.dart';

/// Result data returned by getDatabases.
class GetDatabasesResult {
  final List<GetDatabasesDatabase> databases;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instance;
  final String? project;

  /// Creates a new [GetDatabasesResult].
  /// [databases] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instance] Required.
  /// [project] Optional.
  const GetDatabasesResult({
    required this.databases,
    required this.id,
    required this.instance,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databases': pulumi.Input.encodeList<GetDatabasesDatabase, Map<String, dynamic>>(databases, (value) => value.toMap()),
      'id': id,
      'instance': instance,
      'project': ?project,
    };
  }

  factory GetDatabasesResult.fromMap(Map<String, dynamic> map) {
    return GetDatabasesResult(
      databases: pulumi.Input.decodeList<GetDatabasesDatabase>(map['databases']!, (value) => GetDatabasesDatabase.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      instance: map['instance'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
