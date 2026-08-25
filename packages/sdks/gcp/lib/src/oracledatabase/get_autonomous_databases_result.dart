// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_autonomous_databases_autonomous_database.dart';

/// Result data returned by getAutonomousDatabases.
class GetAutonomousDatabasesResult {
  final List<GetAutonomousDatabasesAutonomousDatabase>? autonomousDatabases;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? project;

  /// Creates a new [GetAutonomousDatabasesResult].
  /// [autonomousDatabases] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [project] Optional.
  const GetAutonomousDatabasesResult({
    this.autonomousDatabases,
    this.id,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autonomousDatabases': ?(() { final guardedValue = autonomousDatabases; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAutonomousDatabasesAutonomousDatabase, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetAutonomousDatabasesResult.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabasesResult(
      autonomousDatabases: (() { final guardedValue = map['autonomousDatabases']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAutonomousDatabasesAutonomousDatabase>(guardedValue, (value) => GetAutonomousDatabasesAutonomousDatabase.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
