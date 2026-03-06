// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_rdbms_response.dart';
import 'oracle_rdbms_response.dart';
import 'postgresql_rdbms_response.dart';

/// Backfill strategy to automatically backfill the Stream's objects. Specific objects can be excluded.
class BackfillAllStrategyResponse {
  /// MySQL data source objects to avoid backfilling.
  final pulumi.Input<MysqlRdbmsResponse> mysqlExcludedObjects;
  /// Oracle data source objects to avoid backfilling.
  final pulumi.Input<OracleRdbmsResponse> oracleExcludedObjects;
  /// PostgreSQL data source objects to avoid backfilling.
  final pulumi.Input<PostgresqlRdbmsResponse> postgresqlExcludedObjects;

  /// Creates a new [BackfillAllStrategyResponse].
  /// [mysqlExcludedObjects] MySQL data source objects to avoid backfilling.
  /// [oracleExcludedObjects] Oracle data source objects to avoid backfilling.
  /// [postgresqlExcludedObjects] PostgreSQL data source objects to avoid backfilling.
  const BackfillAllStrategyResponse({
    required this.mysqlExcludedObjects,
    required this.oracleExcludedObjects,
    required this.postgresqlExcludedObjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mysqlExcludedObjects': pulumi.Input.mapInputValue<MysqlRdbmsResponse, Map<String, dynamic>>(mysqlExcludedObjects, (value) => value.toMap()),
      'oracleExcludedObjects': pulumi.Input.mapInputValue<OracleRdbmsResponse, Map<String, dynamic>>(oracleExcludedObjects, (value) => value.toMap()),
      'postgresqlExcludedObjects': pulumi.Input.mapInputValue<PostgresqlRdbmsResponse, Map<String, dynamic>>(postgresqlExcludedObjects, (value) => value.toMap()),
    };
  }

  factory BackfillAllStrategyResponse.fromMap(Map<String, dynamic> map) {
    return BackfillAllStrategyResponse(
      mysqlExcludedObjects: pulumi.Input.fromValue(MysqlRdbmsResponse.fromMap((map['mysqlExcludedObjects']! as Map).cast<String, dynamic>())),
      oracleExcludedObjects: pulumi.Input.fromValue(OracleRdbmsResponse.fromMap((map['oracleExcludedObjects']! as Map).cast<String, dynamic>())),
      postgresqlExcludedObjects: pulumi.Input.fromValue(PostgresqlRdbmsResponse.fromMap((map['postgresqlExcludedObjects']! as Map).cast<String, dynamic>())),
    );
  }
}

