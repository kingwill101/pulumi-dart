// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_external_data_configuration_bigtable_options_column_family.dart';

class TableExternalDataConfigurationBigtableOptions {
  /// A list of column families to expose in the table schema along with their types. This list restricts the column families that can be referenced in queries and specifies their value types. You can use this list to do type conversions - see the 'type' field for more details. If you leave this list empty, all column families are present in the table schema and their values are read as BYTES. During a query only the column families referenced in that query are read from Bigtable.  Structure is documented below.
  final pulumi.Input<List<TableExternalDataConfigurationBigtableOptionsColumnFamily>?>? columnFamilies;
  /// If field is true, then the column families that are not specified in columnFamilies list are not exposed in the table schema. Otherwise, they are read with BYTES type values. The default value is false.
  final pulumi.Input<bool?>? ignoreUnspecifiedColumnFamilies;
  /// If field is true, then each column family will be read as a single JSON column. Otherwise they are read as a repeated cell structure containing timestamp/value tuples. The default value is false.
  final pulumi.Input<bool?>? outputColumnFamiliesAsJson;
  /// If field is true, then the rowkey column families will be read and converted to string. Otherwise they are read with BYTES type values and users need to manually cast them with CAST if necessary. The default value is false.
  final pulumi.Input<bool?>? readRowkeyAsString;

  /// Creates a new [TableExternalDataConfigurationBigtableOptions].
  /// [columnFamilies] A list of column families to expose in the table schema along with their types. This list restricts the column families that can be referenced in queries and specifies their value types. You can use this list to do type conversions - see the 'type' field for more details. If you leave this list empty, all column families are present in the table schema and their values are read as BYTES. During a query only the column families referenced in that query are read from Bigtable.  Structure is documented below.
  /// [ignoreUnspecifiedColumnFamilies] If field is true, then the column families that are not specified in columnFamilies list are not exposed in the table schema. Otherwise, they are read with BYTES type values. The default value is false.
  /// [outputColumnFamiliesAsJson] If field is true, then each column family will be read as a single JSON column. Otherwise they are read as a repeated cell structure containing timestamp/value tuples. The default value is false.
  /// [readRowkeyAsString] If field is true, then the rowkey column families will be read and converted to string. Otherwise they are read with BYTES type values and users need to manually cast them with CAST if necessary. The default value is false.
  const TableExternalDataConfigurationBigtableOptions({
    this.columnFamilies,
    this.ignoreUnspecifiedColumnFamilies,
    this.outputColumnFamiliesAsJson,
    this.readRowkeyAsString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnFamilies': ?pulumi.Input.mapOptionalInputValue<List<TableExternalDataConfigurationBigtableOptionsColumnFamily>, List<Map<String, dynamic>>>(columnFamilies, (value) => pulumi.Input.encodeList<TableExternalDataConfigurationBigtableOptionsColumnFamily, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ignoreUnspecifiedColumnFamilies': ?ignoreUnspecifiedColumnFamilies,
      'outputColumnFamiliesAsJson': ?outputColumnFamiliesAsJson,
      'readRowkeyAsString': ?readRowkeyAsString,
    };
  }

  factory TableExternalDataConfigurationBigtableOptions.fromMap(Map<String, dynamic> map) {
    return TableExternalDataConfigurationBigtableOptions(
      columnFamilies: (() { final guardedValue = map['columnFamilies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TableExternalDataConfigurationBigtableOptionsColumnFamily>(guardedValue, (value) => TableExternalDataConfigurationBigtableOptionsColumnFamily.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ignoreUnspecifiedColumnFamilies: (() { final guardedValue = map['ignoreUnspecifiedColumnFamilies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      outputColumnFamiliesAsJson: (() { final guardedValue = map['outputColumnFamiliesAsJson']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      readRowkeyAsString: (() { final guardedValue = map['readRowkeyAsString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
