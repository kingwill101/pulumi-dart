// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_postgresql_v2_updates.dart';

/// {@template pulumi_index_get_database_postgresql_v2_get_database_postgresql_v2_args_doc}
/// Arguments for getDatabasePostgresqlV2.
/// {@endtemplate}
/// {@macro pulumi_index_get_database_postgresql_v2_get_database_postgresql_v2_args_doc}
class GetDatabasePostgresqlV2Args {
  /// The ID of the PostgreSQL database.
  final pulumi.Input<String> id;
  final pulumi.Input<GetDatabasePostgresqlV2Updates>? updates;

  /// Creates a new [GetDatabasePostgresqlV2Args].
  /// [id] The ID of the PostgreSQL database.
  /// [updates] Optional.
  GetDatabasePostgresqlV2Args({
    required this.id,
    this.updates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'updates': ?pulumi.Input.mapOptionalInputValue<GetDatabasePostgresqlV2Updates, Map<String, dynamic>>(updates, (value) => value.toMap()),
    };
  }

  factory GetDatabasePostgresqlV2Args.fromMap(Map<String, dynamic> map) {
    return GetDatabasePostgresqlV2Args(
      id: pulumi.Input.fromValue(map['id'] as String),
      updates: (() { final guardedValue = map['updates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetDatabasePostgresqlV2Updates.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

