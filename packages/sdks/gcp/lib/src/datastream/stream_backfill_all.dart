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
  final pulumi.Input<StreamBackfillAllMongodbExcludedObjects>? mongodbExcludedObjects;
  /// MySQL data source objects to avoid backfilling.
  /// Structure is documented below.
  final pulumi.Input<StreamBackfillAllMysqlExcludedObjects>? mysqlExcludedObjects;
  /// PostgreSQL data source objects to avoid backfilling.
  /// Structure is documented below.
  final pulumi.Input<StreamBackfillAllOracleExcludedObjects>? oracleExcludedObjects;
  /// PostgreSQL data source objects to avoid backfilling.
  /// Structure is documented below.
  final pulumi.Input<StreamBackfillAllPostgresqlExcludedObjects>? postgresqlExcludedObjects;
  /// Salesforce objects to avoid backfilling.
  /// Structure is documented below.
  final pulumi.Input<StreamBackfillAllSalesforceExcludedObjects>? salesforceExcludedObjects;
  /// Spanner objects to avoid backfilling.
  /// Structure is documented below.
  final pulumi.Input<StreamBackfillAllSpannerExcludedObjects>? spannerExcludedObjects;
  /// SQL Server data source objects to avoid backfilling.
  /// Structure is documented below.
  final pulumi.Input<StreamBackfillAllSqlServerExcludedObjects>? sqlServerExcludedObjects;

  /// Creates a new [StreamBackfillAll].
  /// [mongodbExcludedObjects] MongoDB data source objects to avoid backfilling.
  /// [mysqlExcludedObjects] MySQL data source objects to avoid backfilling.
  /// [oracleExcludedObjects] PostgreSQL data source objects to avoid backfilling.
  /// [postgresqlExcludedObjects] PostgreSQL data source objects to avoid backfilling.
  /// [salesforceExcludedObjects] Salesforce objects to avoid backfilling.
  /// [spannerExcludedObjects] Spanner objects to avoid backfilling.
  /// [sqlServerExcludedObjects] SQL Server data source objects to avoid backfilling.
  StreamBackfillAll({
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
      mongodbExcludedObjects: map['mongodbExcludedObjects'] == null ? null : (StreamBackfillAllMongodbExcludedObjects.fromMap((map['mongodbExcludedObjects'] as Map).cast<String, dynamic>())).input(),
      mysqlExcludedObjects: map['mysqlExcludedObjects'] == null ? null : (StreamBackfillAllMysqlExcludedObjects.fromMap((map['mysqlExcludedObjects'] as Map).cast<String, dynamic>())).input(),
      oracleExcludedObjects: map['oracleExcludedObjects'] == null ? null : (StreamBackfillAllOracleExcludedObjects.fromMap((map['oracleExcludedObjects'] as Map).cast<String, dynamic>())).input(),
      postgresqlExcludedObjects: map['postgresqlExcludedObjects'] == null ? null : (StreamBackfillAllPostgresqlExcludedObjects.fromMap((map['postgresqlExcludedObjects'] as Map).cast<String, dynamic>())).input(),
      salesforceExcludedObjects: map['salesforceExcludedObjects'] == null ? null : (StreamBackfillAllSalesforceExcludedObjects.fromMap((map['salesforceExcludedObjects'] as Map).cast<String, dynamic>())).input(),
      spannerExcludedObjects: map['spannerExcludedObjects'] == null ? null : (StreamBackfillAllSpannerExcludedObjects.fromMap((map['spannerExcludedObjects'] as Map).cast<String, dynamic>())).input(),
      sqlServerExcludedObjects: map['sqlServerExcludedObjects'] == null ? null : (StreamBackfillAllSqlServerExcludedObjects.fromMap((map['sqlServerExcludedObjects'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

