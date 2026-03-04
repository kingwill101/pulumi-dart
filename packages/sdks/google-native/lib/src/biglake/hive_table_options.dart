// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_descriptor.dart';

/// Options of a Hive table.
class HiveTableOptions {
  /// Stores user supplied Hive table parameters.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Stores physical storage information of the data.
  final pulumi.Input<StorageDescriptor>? storageDescriptor;

  /// Hive table type. For example, MANAGED_TABLE, EXTERNAL_TABLE.
  final pulumi.Input<String>? tableType;

  /// Creates a new [HiveTableOptions].
  /// [parameters] Stores user supplied Hive table parameters.
  /// [storageDescriptor] Stores physical storage information of the data.
  /// [tableType] Hive table type. For example, MANAGED_TABLE, EXTERNAL_TABLE.
  HiveTableOptions({this.parameters, this.storageDescriptor, this.tableType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?parameters,
      'storageDescriptor':
          ?pulumi.Input.mapOptionalInputValue<
            StorageDescriptor,
            Map<String, dynamic>
          >(storageDescriptor, (value) => value.toMap()),
      'tableType': ?tableType,
    };
  }

  factory HiveTableOptions.fromMap(Map<String, dynamic> map) {
    return HiveTableOptions(
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      storageDescriptor: (() {
        final guardedValue = map['storageDescriptor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StorageDescriptor.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tableType: (() {
        final guardedValue = map['tableType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
