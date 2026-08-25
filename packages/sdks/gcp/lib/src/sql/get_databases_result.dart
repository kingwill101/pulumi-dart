// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_databases_database.dart';

/// Result data returned by getDatabases.
class GetDatabasesResult {
  final List<GetDatabasesDatabase>? databases;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? instance;
  final String? project;

  /// Creates a new [GetDatabasesResult].
  /// [databases] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instance] Optional.
  /// [project] Optional.
  const GetDatabasesResult({
    this.databases,
    this.id,
    this.instance,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databases': ?(() { final guardedValue = databases; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDatabasesDatabase, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'instance': ?instance,
      'project': ?project,
    };
  }

  factory GetDatabasesResult.fromMap(Map<String, dynamic> map) {
    return GetDatabasesResult(
      databases: (() { final guardedValue = map['databases']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDatabasesDatabase>(guardedValue, (value) => GetDatabasesDatabase.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
