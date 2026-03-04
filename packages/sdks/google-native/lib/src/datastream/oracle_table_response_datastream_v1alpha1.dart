// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oracle_column_response_datastream_v1alpha1.dart';

/// Oracle table.
class OracleTableResponseDatastreamV1alpha1 {
  /// Oracle columns in the schema. When unspecified as part of inclue/exclude lists, includes/excludes everything.
  final pulumi.Input<List<OracleColumnResponseDatastreamV1alpha1>>
  oracleColumns;

  /// Table name.
  final pulumi.Input<String> tableName;

  /// Creates a new [OracleTableResponseDatastreamV1alpha1].
  /// [oracleColumns] Oracle columns in the schema. When unspecified as part of inclue/exclude lists, includes/excludes everything.
  /// [tableName] Table name.
  OracleTableResponseDatastreamV1alpha1({
    required this.oracleColumns,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oracleColumns':
          pulumi.Input.mapInputValue<
            List<OracleColumnResponseDatastreamV1alpha1>,
            List<Map<String, dynamic>>
          >(
            oracleColumns,
            (value) =>
                pulumi.Input.encodeList<
                  OracleColumnResponseDatastreamV1alpha1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tableName': tableName,
    };
  }

  factory OracleTableResponseDatastreamV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return OracleTableResponseDatastreamV1alpha1(
      oracleColumns: pulumi.Input.fromValue(
        pulumi.Input.decodeList<OracleColumnResponseDatastreamV1alpha1>(
          map['oracleColumns']!,
          (value) => OracleColumnResponseDatastreamV1alpha1.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
    );
  }
}
