// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iceberg_table_partition_spec_field.dart';

class IcebergTablePartitionSpec {
  /// Structure is documented below.
  final pulumi.Input<List<IcebergTablePartitionSpecField>> fields;
  /// (Output)
  /// The unique identifier of the partition spec.
  final pulumi.Input<int>? specId;

  /// Creates a new [IcebergTablePartitionSpec].
  /// [fields] Structure is documented below.
  /// [specId] (Output)
  const IcebergTablePartitionSpec({
    required this.fields,
    this.specId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': pulumi.Input.mapInputValue<List<IcebergTablePartitionSpecField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<IcebergTablePartitionSpecField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'specId': ?specId,
    };
  }

  factory IcebergTablePartitionSpec.fromMap(Map<String, dynamic> map) {
    return IcebergTablePartitionSpec(
      fields: pulumi.Input.fromValue(pulumi.Input.decodeList<IcebergTablePartitionSpecField>(map['fields']!, (value) => IcebergTablePartitionSpecField.fromMap((value as Map).cast<String, dynamic>()))),
      specId: (() { final guardedValue = map['specId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
