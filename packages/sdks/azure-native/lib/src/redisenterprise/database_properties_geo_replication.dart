// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_database.dart';

/// Optional set of properties to configure geo replication for this database.
class DatabasePropertiesGeoReplication {
  /// Name for the group of linked database resources
  final String? groupNickname;
  /// List of database resources to link with this database
  final List<LinkedDatabase>? linkedDatabases;

  /// Creates a new [DatabasePropertiesGeoReplication].
  /// [groupNickname] Name for the group of linked database resources
  /// [linkedDatabases] List of database resources to link with this database
  DatabasePropertiesGeoReplication({
    this.groupNickname,
    this.linkedDatabases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupNickname': ?groupNickname,
      'linkedDatabases': ?linkedDatabases == null ? null : pulumi.Input.encodeList<LinkedDatabase, Map<String, dynamic>>(linkedDatabases!, (value) => value.toMap()),
    };
  }

  factory DatabasePropertiesGeoReplication.fromMap(Map<String, dynamic> map) {
    return DatabasePropertiesGeoReplication(
      groupNickname: map['groupNickname'] == null ? null : map['groupNickname'] as String,
      linkedDatabases: map['linkedDatabases'] == null ? null : pulumi.Input.decodeList<LinkedDatabase>(map['linkedDatabases'], (value) => LinkedDatabase.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

