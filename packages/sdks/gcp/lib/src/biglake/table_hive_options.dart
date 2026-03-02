// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_hive_options_storage_descriptor.dart';

class TableHiveOptions {
  /// Stores user supplied Hive table parameters. An object containing a
  /// list of "key": value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Stores physical storage information on the data.
  /// Structure is documented below.
  final pulumi.Input<TableHiveOptionsStorageDescriptor>? storageDescriptor;
  /// Hive table type. For example, MANAGED_TABLE, EXTERNAL_TABLE.
  final pulumi.Input<String>? tableType;

  /// Creates a new [TableHiveOptions].
  /// [parameters] Stores user supplied Hive table parameters. An object containing a
  /// [storageDescriptor] Stores physical storage information on the data.
  /// [tableType] Hive table type. For example, MANAGED_TABLE, EXTERNAL_TABLE.
  TableHiveOptions({
    this.parameters,
    this.storageDescriptor,
    this.tableType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?parameters,
      'storageDescriptor': ?pulumi.Input.mapOptionalInputValue<TableHiveOptionsStorageDescriptor, Map<String, dynamic>>(storageDescriptor, (value) => value.toMap()),
      'tableType': ?tableType,
    };
  }

  factory TableHiveOptions.fromMap(Map<String, dynamic> map) {
    return TableHiveOptions(
      parameters: map['parameters'] == null ? null : ((map['parameters']! as Map).cast<String, String>()).input(),
      storageDescriptor: map['storageDescriptor'] == null ? null : (TableHiveOptionsStorageDescriptor.fromMap((map['storageDescriptor']! as Map).cast<String, dynamic>())).input(),
      tableType: map['tableType'] == null ? null : (map['tableType']! as String).input(),
    );
  }
}

