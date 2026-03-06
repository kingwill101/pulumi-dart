// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_rdbms_datastream_v1alpha1.dart';
import 'oracle_rdbms_datastream_v1alpha1.dart';

/// Backfill strategy to automatically backfill the Stream's objects. Specific objects can be excluded.
class BackfillAllStrategyDatastreamV1alpha1 {
  /// MySQL data source objects to avoid backfilling.
  final pulumi.Input<MysqlRdbmsDatastreamV1alpha1>? mysqlExcludedObjects;
  /// Oracle data source objects to avoid backfilling.
  final pulumi.Input<OracleRdbmsDatastreamV1alpha1>? oracleExcludedObjects;

  /// Creates a new [BackfillAllStrategyDatastreamV1alpha1].
  /// [mysqlExcludedObjects] MySQL data source objects to avoid backfilling.
  /// [oracleExcludedObjects] Oracle data source objects to avoid backfilling.
  const BackfillAllStrategyDatastreamV1alpha1({
    this.mysqlExcludedObjects,
    this.oracleExcludedObjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mysqlExcludedObjects': ?pulumi.Input.mapOptionalInputValue<MysqlRdbmsDatastreamV1alpha1, Map<String, dynamic>>(mysqlExcludedObjects, (value) => value.toMap()),
      'oracleExcludedObjects': ?pulumi.Input.mapOptionalInputValue<OracleRdbmsDatastreamV1alpha1, Map<String, dynamic>>(oracleExcludedObjects, (value) => value.toMap()),
    };
  }

  factory BackfillAllStrategyDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return BackfillAllStrategyDatastreamV1alpha1(
      mysqlExcludedObjects: (() { final guardedValue = map['mysqlExcludedObjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MysqlRdbmsDatastreamV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oracleExcludedObjects: (() { final guardedValue = map['oracleExcludedObjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OracleRdbmsDatastreamV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

