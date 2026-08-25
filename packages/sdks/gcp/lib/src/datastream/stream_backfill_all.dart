// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_backfill_all_mongodb_excluded_objects.dart';
import 'stream_backfill_all_mysql_excluded_objects.dart';
import 'stream_backfill_all_oracle_excluded_objects.dart';
import 'stream_backfill_all_postgresql_excluded_objects.dart';
import 'stream_backfill_all_salesforce_excluded_objects.dart';
import 'stream_backfill_all_spanner_excluded_objects.dart';
import 'stream_backfill_all_sql_server_excluded_objects.dart';

class StreamBackfillAll {
  /// MongoDB data source objects to avoid backfilling.
  /// Structure is documented below.
  final pulumi.Input<StreamBackfillAllMongodbExcludedObjects?>? mongodbExcludedObjects;
  /// MySQL data source objects to avoid backfilling.
  /// Structure is documented below.
  final pulumi.Input<StreamBackfillAllMysqlExcludedObjects?>? mysqlExcludedObjects;
  /// PostgreSQL data source objects to avoid backfilling.
  /// Structure is documented below.
  final pulumi.Input<StreamBackfillAllOracleExcludedObjects?>? oracleExcludedObjects;
  /// PostgreSQL data source objects to avoid backfilling.
  /// Structure is documented below.
  final pulumi.Input<StreamBackfillAllPostgresqlExcludedObjects?>? postgresqlExcludedObjects;
  /// Salesforce objects to avoid backfilling.
  /// Structure is documented below.
  final pulumi.Input<StreamBackfillAllSalesforceExcludedObjects?>? salesforceExcludedObjects;
  /// Spanner objects to avoid backfilling.
  /// Structure is documented below.
  final pulumi.Input<StreamBackfillAllSpannerExcludedObjects?>? spannerExcludedObjects;
  /// SQL Server data source objects to avoid backfilling.
  /// Structure is documented below.
  final pulumi.Input<StreamBackfillAllSqlServerExcludedObjects?>? sqlServerExcludedObjects;

  /// Creates a new [StreamBackfillAll].
  /// [mongodbExcludedObjects] MongoDB data source objects to avoid backfilling.
  /// [mysqlExcludedObjects] MySQL data source objects to avoid backfilling.
  /// [oracleExcludedObjects] PostgreSQL data source objects to avoid backfilling.
  /// [postgresqlExcludedObjects] PostgreSQL data source objects to avoid backfilling.
  /// [salesforceExcludedObjects] Salesforce objects to avoid backfilling.
  /// [spannerExcludedObjects] Spanner objects to avoid backfilling.
  /// [sqlServerExcludedObjects] SQL Server data source objects to avoid backfilling.
  const StreamBackfillAll({
    this.mongodbExcludedObjects,
    this.mysqlExcludedObjects,
    this.oracleExcludedObjects,
    this.postgresqlExcludedObjects,
    this.salesforceExcludedObjects,
    this.spannerExcludedObjects,
    this.sqlServerExcludedObjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mongodbExcludedObjects': ?pulumi.Input.mapOptionalInputValue<StreamBackfillAllMongodbExcludedObjects, Map<String, dynamic>>(mongodbExcludedObjects, (value) => value.toMap()),
      'mysqlExcludedObjects': ?pulumi.Input.mapOptionalInputValue<StreamBackfillAllMysqlExcludedObjects, Map<String, dynamic>>(mysqlExcludedObjects, (value) => value.toMap()),
      'oracleExcludedObjects': ?pulumi.Input.mapOptionalInputValue<StreamBackfillAllOracleExcludedObjects, Map<String, dynamic>>(oracleExcludedObjects, (value) => value.toMap()),
      'postgresqlExcludedObjects': ?pulumi.Input.mapOptionalInputValue<StreamBackfillAllPostgresqlExcludedObjects, Map<String, dynamic>>(postgresqlExcludedObjects, (value) => value.toMap()),
      'salesforceExcludedObjects': ?pulumi.Input.mapOptionalInputValue<StreamBackfillAllSalesforceExcludedObjects, Map<String, dynamic>>(salesforceExcludedObjects, (value) => value.toMap()),
      'spannerExcludedObjects': ?pulumi.Input.mapOptionalInputValue<StreamBackfillAllSpannerExcludedObjects, Map<String, dynamic>>(spannerExcludedObjects, (value) => value.toMap()),
      'sqlServerExcludedObjects': ?pulumi.Input.mapOptionalInputValue<StreamBackfillAllSqlServerExcludedObjects, Map<String, dynamic>>(sqlServerExcludedObjects, (value) => value.toMap()),
    };
  }

  factory StreamBackfillAll.fromMap(Map<String, dynamic> map) {
    return StreamBackfillAll(
      mongodbExcludedObjects: (() { final guardedValue = map['mongodbExcludedObjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamBackfillAllMongodbExcludedObjects.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mysqlExcludedObjects: (() { final guardedValue = map['mysqlExcludedObjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamBackfillAllMysqlExcludedObjects.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oracleExcludedObjects: (() { final guardedValue = map['oracleExcludedObjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamBackfillAllOracleExcludedObjects.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      postgresqlExcludedObjects: (() { final guardedValue = map['postgresqlExcludedObjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamBackfillAllPostgresqlExcludedObjects.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      salesforceExcludedObjects: (() { final guardedValue = map['salesforceExcludedObjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamBackfillAllSalesforceExcludedObjects.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spannerExcludedObjects: (() { final guardedValue = map['spannerExcludedObjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamBackfillAllSpannerExcludedObjects.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sqlServerExcludedObjects: (() { final guardedValue = map['sqlServerExcludedObjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamBackfillAllSqlServerExcludedObjects.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
