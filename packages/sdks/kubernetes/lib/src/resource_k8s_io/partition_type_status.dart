// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PartitionTypeStatus reports allocatability for a single partition type, identified by the value of a grouping attribute.
class PartitionTypeStatus {
  /// Allocatable is the number of additional devices of this partition type that could still be allocated given current shared-counter consumption.
  final pulumi.Input<int> allocatable;
  /// Attribute is the fully qualified name of the device attribute whose value groups this entry. It is the PartitionTypeAttribute declared by the devices' own slice, or the default named in the request when their slice declares none.
  final pulumi.Input<String> attribute;
  /// Total is the number of devices of this partition type in the pool.
  final pulumi.Input<int> total;
  /// Type is the partition type value (e.g. "Full" or "Half").
  final pulumi.Input<String> type;

  /// Creates a new [PartitionTypeStatus].
  /// [allocatable] Allocatable is the number of additional devices of this partition type that could still be allocated given current shared-counter consumption.
  /// [attribute] Attribute is the fully qualified name of the device attribute whose value groups this entry. It is the PartitionTypeAttribute declared by the devices' own slice, or the default named in the request when their slice declares none.
  /// [total] Total is the number of devices of this partition type in the pool.
  /// [type] Type is the partition type value (e.g. "Full" or "Half").
  const PartitionTypeStatus({
    required this.allocatable,
    required this.attribute,
    required this.total,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatable': allocatable,
      'attribute': attribute,
      'total': total,
      'type': type,
    };
  }

  factory PartitionTypeStatus.fromMap(Map<String, dynamic> map) {
    return PartitionTypeStatus(
      allocatable: pulumi.Input.fromValue((map['allocatable'] as num).toInt()),
      attribute: pulumi.Input.fromValue(map['attribute'] as String),
      total: pulumi.Input.fromValue((map['total'] as num).toInt()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
