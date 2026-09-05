// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'd1_database_read_replication.dart';

/// Input properties used for looking up and filtering D1Database resources.
class D1DatabaseState {
  /// Account identifier tag.
  final pulumi.Input<String?>? accountId;
  /// Specifies the timestamp the resource was created as an ISO8601 string.
  final pulumi.Input<String?>? createdAt;
  /// The D1 database's size, in bytes.
  final pulumi.Input<double?>? fileSize;
  /// Specify the location to restrict the D1 database to run and store data. If this option is present, the location hint is ignored.
  /// Available values: "eu", "fedramp", "us".
  final pulumi.Input<String?>? jurisdiction;
  /// D1 database name.
  final pulumi.Input<String?>? name;
  final pulumi.Input<double?>? numTables;
  /// Specify the region to create the D1 primary, if available. If this option is omitted, the D1 will be created as close as possible to the current user.
  /// Available values: "wnam", "enam", "weur", "eeur", "apac", "oc".
  final pulumi.Input<String?>? primaryLocationHint;
  /// Configuration for D1 read replication.
  final pulumi.Input<D1DatabaseReadReplication?>? readReplication;
  /// D1 database identifier (UUID).
  final pulumi.Input<String?>? uuid;
  final pulumi.Input<String?>? version;

  /// Creates a new [D1DatabaseState].
  /// [accountId] Account identifier tag.
  /// [createdAt] Specifies the timestamp the resource was created as an ISO8601 string.
  /// [fileSize] The D1 database's size, in bytes.
  /// [jurisdiction] Specify the location to restrict the D1 database to run and store data. If this option is present, the location hint is ignored.
  /// [name] D1 database name.
  /// [numTables] Optional.
  /// [primaryLocationHint] Specify the region to create the D1 primary, if available. If this option is omitted, the D1 will be created as close as possible to the current user.
  /// [readReplication] Configuration for D1 read replication.
  /// [uuid] D1 database identifier (UUID).
  /// [version] Optional.
  const D1DatabaseState({
    this.accountId,
    this.createdAt,
    this.fileSize,
    this.jurisdiction,
    this.name,
    this.numTables,
    this.primaryLocationHint,
    this.readReplication,
    this.uuid,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'fileSize': ?fileSize,
      'jurisdiction': ?jurisdiction,
      'name': ?name,
      'numTables': ?numTables,
      'primaryLocationHint': ?primaryLocationHint,
      'readReplication': ?pulumi.Input.mapOptionalInputValue<D1DatabaseReadReplication, Map<String, dynamic>>(readReplication, (value) => value.toMap()),
      'uuid': ?uuid,
      'version': ?version,
    };
  }

  factory D1DatabaseState.fromMap(Map<String, dynamic> map) {
    return D1DatabaseState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileSize: (() { final guardedValue = map['fileSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      jurisdiction: (() { final guardedValue = map['jurisdiction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numTables: (() { final guardedValue = map['numTables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      primaryLocationHint: (() { final guardedValue = map['primaryLocationHint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readReplication: (() { final guardedValue = map['readReplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(D1DatabaseReadReplication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
