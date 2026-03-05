// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_table_external_data_configuration_bigtable_option_column_family.dart';

class GetTableExternalDataConfigurationBigtableOption {
  /// A list of column families to expose in the table schema along with their types. This list restricts the column families that can be referenced in queries and specifies their value types. You can use this list to do type conversions - see the 'type' field for more details. If you leave this list empty, all column families are present in the table schema and their values are read as BYTES. During a query only the column families referenced in that query are read from Bigtable.
  final pulumi.Input<List<GetTableExternalDataConfigurationBigtableOptionColumnFamily>> columnFamilies;
  /// If field is true, then the column families that are not specified in columnFamilies list are not exposed in the table schema. Otherwise, they are read with BYTES type values. The default value is false.
  final pulumi.Input<bool> ignoreUnspecifiedColumnFamilies;
  /// If field is true, then each column family will be read as a single JSON column. Otherwise they are read as a repeated cell structure containing timestamp/value tuples. The default value is false.
  final pulumi.Input<bool> outputColumnFamiliesAsJson;
  /// If field is true, then the rowkey column families will be read and converted to string. Otherwise they are read with BYTES type values and users need to manually cast them with CAST if necessary. The default value is false.
  final pulumi.Input<bool> readRowkeyAsString;

  /// Creates a new [GetTableExternalDataConfigurationBigtableOption].
  /// [columnFamilies] A list of column families to expose in the table schema along with their types. This list restricts the column families that can be referenced in queries and specifies their value types. You can use this list to do type conversions - see the 'type' field for more details. If you leave this list empty, all column families are present in the table schema and their values are read as BYTES. During a query only the column families referenced in that query are read from Bigtable.
  /// [ignoreUnspecifiedColumnFamilies] If field is true, then the column families that are not specified in columnFamilies list are not exposed in the table schema. Otherwise, they are read with BYTES type values. The default value is false.
  /// [outputColumnFamiliesAsJson] If field is true, then each column family will be read as a single JSON column. Otherwise they are read as a repeated cell structure containing timestamp/value tuples. The default value is false.
  /// [readRowkeyAsString] If field is true, then the rowkey column families will be read and converted to string. Otherwise they are read with BYTES type values and users need to manually cast them with CAST if necessary. The default value is false.
  GetTableExternalDataConfigurationBigtableOption({
    required this.columnFamilies,
    required this.ignoreUnspecifiedColumnFamilies,
    required this.outputColumnFamiliesAsJson,
    required this.readRowkeyAsString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnFamilies': pulumi.Input.mapInputValue<List<GetTableExternalDataConfigurationBigtableOptionColumnFamily>, List<Map<String, dynamic>>>(columnFamilies, (value) => pulumi.Input.encodeList<GetTableExternalDataConfigurationBigtableOptionColumnFamily, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ignoreUnspecifiedColumnFamilies': ignoreUnspecifiedColumnFamilies,
      'outputColumnFamiliesAsJson': outputColumnFamiliesAsJson,
      'readRowkeyAsString': readRowkeyAsString,
    };
  }

  factory GetTableExternalDataConfigurationBigtableOption.fromMap(Map<String, dynamic> map) {
    return GetTableExternalDataConfigurationBigtableOption(
      columnFamilies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTableExternalDataConfigurationBigtableOptionColumnFamily>(map['columnFamilies']!, (value) => GetTableExternalDataConfigurationBigtableOptionColumnFamily.fromMap((value as Map).cast<String, dynamic>()))),
      ignoreUnspecifiedColumnFamilies: pulumi.Input.fromValue(map['ignoreUnspecifiedColumnFamilies'] as bool),
      outputColumnFamiliesAsJson: pulumi.Input.fromValue(map['outputColumnFamiliesAsJson'] as bool),
      readRowkeyAsString: pulumi.Input.fromValue(map['readRowkeyAsString'] as bool),
    );
  }
}

