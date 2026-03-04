// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_rdbms.dart';
import 'oracle_rdbms.dart';
import 'postgresql_rdbms.dart';

/// Backfill strategy to automatically backfill the Stream's objects. Specific objects can be excluded.
class BackfillAllStrategy {
  /// MySQL data source objects to avoid backfilling.
  final pulumi.Input<MysqlRdbms>? mysqlExcludedObjects;

  /// Oracle data source objects to avoid backfilling.
  final pulumi.Input<OracleRdbms>? oracleExcludedObjects;

  /// PostgreSQL data source objects to avoid backfilling.
  final pulumi.Input<PostgresqlRdbms>? postgresqlExcludedObjects;

  /// Creates a new [BackfillAllStrategy].
  /// [mysqlExcludedObjects] MySQL data source objects to avoid backfilling.
  /// [oracleExcludedObjects] Oracle data source objects to avoid backfilling.
  /// [postgresqlExcludedObjects] PostgreSQL data source objects to avoid backfilling.
  BackfillAllStrategy({
    this.mysqlExcludedObjects,
    this.oracleExcludedObjects,
    this.postgresqlExcludedObjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mysqlExcludedObjects':
          ?pulumi.Input.mapOptionalInputValue<MysqlRdbms, Map<String, dynamic>>(
            mysqlExcludedObjects,
            (value) => value.toMap(),
          ),
      'oracleExcludedObjects':
          ?pulumi.Input.mapOptionalInputValue<
            OracleRdbms,
            Map<String, dynamic>
          >(oracleExcludedObjects, (value) => value.toMap()),
      'postgresqlExcludedObjects':
          ?pulumi.Input.mapOptionalInputValue<
            PostgresqlRdbms,
            Map<String, dynamic>
          >(postgresqlExcludedObjects, (value) => value.toMap()),
    };
  }

  factory BackfillAllStrategy.fromMap(Map<String, dynamic> map) {
    return BackfillAllStrategy(
      mysqlExcludedObjects: (() {
        final guardedValue = map['mysqlExcludedObjects'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MysqlRdbms.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      oracleExcludedObjects: (() {
        final guardedValue = map['oracleExcludedObjects'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OracleRdbms.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      postgresqlExcludedObjects: (() {
        final guardedValue = map['postgresqlExcludedObjects'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PostgresqlRdbms.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
