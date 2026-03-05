// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_descriptor_response.dart';

/// Options of a Hive table.
class HiveTableOptionsResponse {
  /// Stores user supplied Hive table parameters.
  final pulumi.Input<Map<String, String>> parameters;
  /// Stores physical storage information of the data.
  final pulumi.Input<StorageDescriptorResponse> storageDescriptor;
  /// Hive table type. For example, MANAGED_TABLE, EXTERNAL_TABLE.
  final pulumi.Input<String> tableType;

  /// Creates a new [HiveTableOptionsResponse].
  /// [parameters] Stores user supplied Hive table parameters.
  /// [storageDescriptor] Stores physical storage information of the data.
  /// [tableType] Hive table type. For example, MANAGED_TABLE, EXTERNAL_TABLE.
  HiveTableOptionsResponse({
    required this.parameters,
    required this.storageDescriptor,
    required this.tableType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': parameters,
      'storageDescriptor': pulumi.Input.mapInputValue<StorageDescriptorResponse, Map<String, dynamic>>(storageDescriptor, (value) => value.toMap()),
      'tableType': tableType,
    };
  }

  factory HiveTableOptionsResponse.fromMap(Map<String, dynamic> map) {
    return HiveTableOptionsResponse(
      parameters: pulumi.Input.fromValue((map['parameters'] as Map).cast<String, String>()),
      storageDescriptor: pulumi.Input.fromValue(StorageDescriptorResponse.fromMap((map['storageDescriptor']! as Map).cast<String, dynamic>())),
      tableType: pulumi.Input.fromValue(map['tableType'] as String),
    );
  }
}

