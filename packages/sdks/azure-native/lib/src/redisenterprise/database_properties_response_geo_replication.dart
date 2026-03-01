// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_database_response.dart';

/// Optional set of properties to configure geo replication for this database.
class DatabasePropertiesResponseGeoReplication {
  /// Name for the group of linked database resources
  final String? groupNickname;
  /// List of database resources to link with this database
  final List<LinkedDatabaseResponse>? linkedDatabases;

  /// Creates a new [DatabasePropertiesResponseGeoReplication].
  /// [groupNickname] Name for the group of linked database resources
  /// [linkedDatabases] List of database resources to link with this database
  DatabasePropertiesResponseGeoReplication({
    this.groupNickname,
    this.linkedDatabases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupNickname': ?groupNickname,
      'linkedDatabases': ?linkedDatabases == null ? null : pulumi.Input.encodeList<LinkedDatabaseResponse, Map<String, dynamic>>(linkedDatabases!, (value) => value.toMap()),
    };
  }

  factory DatabasePropertiesResponseGeoReplication.fromMap(Map<String, dynamic> map) {
    return DatabasePropertiesResponseGeoReplication(
      groupNickname: map['groupNickname'] == null ? null : map['groupNickname'] as String,
      linkedDatabases: map['linkedDatabases'] == null ? null : pulumi.Input.decodeList<LinkedDatabaseResponse>(map['linkedDatabases'], (value) => LinkedDatabaseResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

