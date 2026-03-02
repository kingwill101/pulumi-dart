// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_autonomous_databases_autonomous_database.dart';

/// Result data returned by getAutonomousDatabases.
class GetAutonomousDatabasesResult {
  final List<GetAutonomousDatabasesAutonomousDatabase> autonomousDatabases;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String? project;

  /// Creates a new [GetAutonomousDatabasesResult].
  /// [autonomousDatabases] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [project] Optional.
  GetAutonomousDatabasesResult({
    required this.autonomousDatabases,
    required this.id,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autonomousDatabases': pulumi.Input.encodeList<GetAutonomousDatabasesAutonomousDatabase, Map<String, dynamic>>(autonomousDatabases, (value) => value.toMap()),
      'id': id,
      'location': location,
      'project': ?project,
    };
  }

  factory GetAutonomousDatabasesResult.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabasesResult(
      autonomousDatabases: pulumi.Input.decodeList<GetAutonomousDatabasesAutonomousDatabase>(map['autonomousDatabases'], (value) => GetAutonomousDatabasesAutonomousDatabase.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project']! as String,
    );
  }
}

