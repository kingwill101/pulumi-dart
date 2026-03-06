// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_database_response.dart';

/// Optional set of properties to configure geo replication for this database.
class DatabasePropertiesResponseGeoReplication {
  /// Name for the group of linked database resources
  final pulumi.Input<String>? groupNickname;
  /// List of database resources to link with this database
  final pulumi.Input<List<LinkedDatabaseResponse>>? linkedDatabases;

  /// Creates a new [DatabasePropertiesResponseGeoReplication].
  /// [groupNickname] Name for the group of linked database resources
  /// [linkedDatabases] List of database resources to link with this database
  const DatabasePropertiesResponseGeoReplication({
    this.groupNickname,
    this.linkedDatabases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupNickname': ?groupNickname,
      'linkedDatabases': ?pulumi.Input.mapOptionalInputValue<List<LinkedDatabaseResponse>, List<Map<String, dynamic>>>(linkedDatabases, (value) => pulumi.Input.encodeList<LinkedDatabaseResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DatabasePropertiesResponseGeoReplication.fromMap(Map<String, dynamic> map) {
    return DatabasePropertiesResponseGeoReplication(
      groupNickname: (() { final guardedValue = map['groupNickname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkedDatabases: (() { final guardedValue = map['linkedDatabases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LinkedDatabaseResponse>(guardedValue, (value) => LinkedDatabaseResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

