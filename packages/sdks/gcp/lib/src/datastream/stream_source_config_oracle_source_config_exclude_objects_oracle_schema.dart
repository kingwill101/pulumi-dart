// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_oracle_source_config_exclude_objects_oracle_schema_oracle_table.dart';

class StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchema {
  /// Tables in the database.
  /// Structure is documented below.
  final pulumi.Input<
    List<
      StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTable
    >
  >?
  oracleTables;

  /// Schema name.
  final pulumi.Input<String> schema;

  /// Creates a new [StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchema].
  /// [oracleTables] Tables in the database.
  /// [schema] Schema name.
  StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchema({
    this.oracleTables,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oracleTables':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTable
            >,
            List<Map<String, dynamic>>
          >(
            oracleTables,
            (value) =>
                pulumi.Input.encodeList<
                  StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTable,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'schema': schema,
    };
  }

  factory StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchema.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchema(
      oracleTables: (() {
        final guardedValue = map['oracleTables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTable
          >(
            guardedValue,
            (value) =>
                StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTable.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      schema: pulumi.Input.fromValue(map['schema'] as String),
    );
  }
}
