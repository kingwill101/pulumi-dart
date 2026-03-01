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
    required pulumi.Output<String> id,
    pulumi.Output<GetDatabasePostgresqlV2Updates>? updates,
  }) :
      id = pulumi.Input.asInput<String>(id),
      updates = pulumi.Input.asOptionalInput<GetDatabasePostgresqlV2Updates>(updates);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'updates': ?pulumi.Input.mapOptionalInputValue<GetDatabasePostgresqlV2Updates, Map<String, dynamic>>(updates, (value) => value.toMap()),
    };
  }

  factory GetDatabasePostgresqlV2Args.fromMap(Map<String, dynamic> map) {
    return GetDatabasePostgresqlV2Args(
      id: pulumi.Output.create<String>(map['id'] as String),
      updates: map['updates'] == null ? null : pulumi.Output.create<GetDatabasePostgresqlV2Updates>(GetDatabasePostgresqlV2Updates.fromMap((map['updates'] as Map).cast<String, dynamic>())),
    );
  }
}

