// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'd1_database_read_replication.dart';

/// {@template pulumi_index_d1_database_d1_database_args_doc}
/// The set of arguments for D1Database.
/// {@endtemplate}
/// {@macro pulumi_index_d1_database_d1_database_args_doc}
class D1DatabaseArgs {
  /// Account identifier tag.
  final pulumi.Input<String> accountId;
  /// Specify the location to restrict the D1 database to run and store data. If this option is present, the location hint is ignored.
  /// Available values: "eu", "fedramp", "us".
  final pulumi.Input<String?>? jurisdiction;
  /// D1 database name.
  final pulumi.Input<String> name;
  /// Specify the region to create the D1 primary, if available. If this option is omitted, the D1 will be created as close as possible to the current user.
  /// Available values: "wnam", "enam", "weur", "eeur", "apac", "oc".
  final pulumi.Input<String?>? primaryLocationHint;
  /// Configuration for D1 read replication.
  final pulumi.Input<D1DatabaseReadReplication?>? readReplication;

  /// Creates a new [D1DatabaseArgs].
  /// [accountId] Account identifier tag.
  /// [jurisdiction] Specify the location to restrict the D1 database to run and store data. If this option is present, the location hint is ignored.
  /// [name] D1 database name.
  /// [primaryLocationHint] Specify the region to create the D1 primary, if available. If this option is omitted, the D1 will be created as close as possible to the current user.
  /// [readReplication] Configuration for D1 read replication.
  const D1DatabaseArgs({
    required this.accountId,
    this.jurisdiction,
    required this.name,
    this.primaryLocationHint,
    this.readReplication,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'jurisdiction': ?jurisdiction,
      'name': name,
      'primaryLocationHint': ?primaryLocationHint,
      'readReplication': ?pulumi.Input.mapOptionalInputValue<D1DatabaseReadReplication, Map<String, dynamic>>(readReplication, (value) => value.toMap()),
    };
  }

  factory D1DatabaseArgs.fromMap(Map<String, dynamic> map) {
    return D1DatabaseArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      jurisdiction: (() { final guardedValue = map['jurisdiction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      primaryLocationHint: (() { final guardedValue = map['primaryLocationHint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readReplication: (() { final guardedValue = map['readReplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(D1DatabaseReadReplication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
