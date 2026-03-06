// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_rdbms_response_datastream_v1alpha1.dart';
import 'oracle_rdbms_response_datastream_v1alpha1.dart';

/// Backfill strategy to automatically backfill the Stream's objects. Specific objects can be excluded.
class BackfillAllStrategyResponseDatastreamV1alpha1 {
  /// MySQL data source objects to avoid backfilling.
  final pulumi.Input<MysqlRdbmsResponseDatastreamV1alpha1> mysqlExcludedObjects;
  /// Oracle data source objects to avoid backfilling.
  final pulumi.Input<OracleRdbmsResponseDatastreamV1alpha1> oracleExcludedObjects;

  /// Creates a new [BackfillAllStrategyResponseDatastreamV1alpha1].
  /// [mysqlExcludedObjects] MySQL data source objects to avoid backfilling.
  /// [oracleExcludedObjects] Oracle data source objects to avoid backfilling.
  const BackfillAllStrategyResponseDatastreamV1alpha1({
    required this.mysqlExcludedObjects,
    required this.oracleExcludedObjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mysqlExcludedObjects': pulumi.Input.mapInputValue<MysqlRdbmsResponseDatastreamV1alpha1, Map<String, dynamic>>(mysqlExcludedObjects, (value) => value.toMap()),
      'oracleExcludedObjects': pulumi.Input.mapInputValue<OracleRdbmsResponseDatastreamV1alpha1, Map<String, dynamic>>(oracleExcludedObjects, (value) => value.toMap()),
    };
  }

  factory BackfillAllStrategyResponseDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return BackfillAllStrategyResponseDatastreamV1alpha1(
      mysqlExcludedObjects: pulumi.Input.fromValue(MysqlRdbmsResponseDatastreamV1alpha1.fromMap((map['mysqlExcludedObjects']! as Map).cast<String, dynamic>())),
      oracleExcludedObjects: pulumi.Input.fromValue(OracleRdbmsResponseDatastreamV1alpha1.fromMap((map['oracleExcludedObjects']! as Map).cast<String, dynamic>())),
    );
  }
}

