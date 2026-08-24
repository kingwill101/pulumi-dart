// ignore_for_file: unused_element, unnecessary_cast

import 'get_d1_database_filter.dart';
import 'get_d1_database_read_replication.dart';

/// Result data returned by getD1Database.
class GetD1DatabaseResult {
  /// Account identifier tag.
  final String? accountId;
  /// Specifies the timestamp the resource was created as an ISO8601 string.
  final String? createdAt;
  /// D1 database identifier (UUID).
  final String? databaseId;
  /// Comma-separated list of fields to include in the response. When omitted,
  /// all fields are returned.
  final List<String>? fields;
  /// The D1 database's size, in bytes.
  final double? fileSize;
  final GetD1DatabaseFilter? filter;
  /// D1 database identifier (UUID).
  final String? id;
  /// Specify the location to restrict the D1 database to run and store data. If this option is present, the location hint is ignored.
  /// Available values: "eu", "fedramp".
  final String? jurisdiction;
  /// D1 database name.
  final String? name;
  final double? numTables;
  /// Configuration for D1 read replication.
  final GetD1DatabaseReadReplication? readReplication;
  /// D1 database identifier (UUID).
  final String? uuid;
  final String? version;

  /// Creates a new [GetD1DatabaseResult].
  /// [accountId] Account identifier tag.
  /// [createdAt] Specifies the timestamp the resource was created as an ISO8601 string.
  /// [databaseId] D1 database identifier (UUID).
  /// [fields] Comma-separated list of fields to include in the response. When omitted,
  /// [fileSize] The D1 database's size, in bytes.
  /// [filter] Optional.
  /// [id] D1 database identifier (UUID).
  /// [jurisdiction] Specify the location to restrict the D1 database to run and store data. If this option is present, the location hint is ignored.
  /// [name] D1 database name.
  /// [numTables] Optional.
  /// [readReplication] Configuration for D1 read replication.
  /// [uuid] D1 database identifier (UUID).
  /// [version] Optional.
  const GetD1DatabaseResult({
    this.accountId,
    this.createdAt,
    this.databaseId,
    this.fields,
    this.fileSize,
    this.filter,
    this.id,
    this.jurisdiction,
    this.name,
    this.numTables,
    this.readReplication,
    this.uuid,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'databaseId': ?databaseId,
      'fields': ?fields,
      'fileSize': ?fileSize,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'jurisdiction': ?jurisdiction,
      'name': ?name,
      'numTables': ?numTables,
      'readReplication': ?readReplication?.toMap(),
      'uuid': ?uuid,
      'version': ?version,
    };
  }

  factory GetD1DatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetD1DatabaseResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databaseId: (() { final guardedValue = map['databaseId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      fileSize: (() { final guardedValue = map['fileSize']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetD1DatabaseFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      jurisdiction: (() { final guardedValue = map['jurisdiction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      numTables: (() { final guardedValue = map['numTables']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      readReplication: (() { final guardedValue = map['readReplication']; if (guardedValue == null) return null; return GetD1DatabaseReadReplication.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
