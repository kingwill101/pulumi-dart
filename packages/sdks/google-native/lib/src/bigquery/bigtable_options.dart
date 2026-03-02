// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bigtable_column_family.dart';

class BigtableOptions {
  /// [Optional] List of column families to expose in the table schema along with their types. This list restricts the column families that can be referenced in queries and specifies their value types. You can use this list to do type conversions - see the 'type' field for more details. If you leave this list empty, all column families are present in the table schema and their values are read as BYTES. During a query only the column families referenced in that query are read from Bigtable.
  final pulumi.Input<List<BigtableColumnFamily>>? columnFamilies;
  /// [Optional] If field is true, then the column families that are not specified in columnFamilies list are not exposed in the table schema. Otherwise, they are read with BYTES type values. The default value is false.
  final pulumi.Input<bool>? ignoreUnspecifiedColumnFamilies;
  /// [Optional] If field is true, then the rowkey column families will be read and converted to string. Otherwise they are read with BYTES type values and users need to manually cast them with CAST if necessary. The default value is false.
  final pulumi.Input<bool>? readRowkeyAsString;

  /// Creates a new [BigtableOptions].
  /// [columnFamilies] [Optional] List of column families to expose in the table schema along with their types. This list restricts the column families that can be referenced in queries and specifies their value types. You can use this list to do type conversions - see the 'type' field for more details. If you leave this list empty, all column families are present in the table schema and their values are read as BYTES. During a query only the column families referenced in that query are read from Bigtable.
  /// [ignoreUnspecifiedColumnFamilies] [Optional] If field is true, then the column families that are not specified in columnFamilies list are not exposed in the table schema. Otherwise, they are read with BYTES type values. The default value is false.
  /// [readRowkeyAsString] [Optional] If field is true, then the rowkey column families will be read and converted to string. Otherwise they are read with BYTES type values and users need to manually cast them with CAST if necessary. The default value is false.
  BigtableOptions({
    this.columnFamilies,
    this.ignoreUnspecifiedColumnFamilies,
    this.readRowkeyAsString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnFamilies': ?pulumi.Input.mapOptionalInputValue<List<BigtableColumnFamily>, List<Map<String, dynamic>>>(columnFamilies, (value) => pulumi.Input.encodeList<BigtableColumnFamily, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ignoreUnspecifiedColumnFamilies': ?ignoreUnspecifiedColumnFamilies,
      'readRowkeyAsString': ?readRowkeyAsString,
    };
  }

  factory BigtableOptions.fromMap(Map<String, dynamic> map) {
    return BigtableOptions(
      columnFamilies: map['columnFamilies'] == null ? null : (pulumi.Input.decodeList<BigtableColumnFamily>(map['columnFamilies']!, (value) => BigtableColumnFamily.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ignoreUnspecifiedColumnFamilies: map['ignoreUnspecifiedColumnFamilies'] == null ? null : (map['ignoreUnspecifiedColumnFamilies']! as bool).input(),
      readRowkeyAsString: map['readRowkeyAsString'] == null ? null : (map['readRowkeyAsString']! as bool).input(),
    );
  }
}

