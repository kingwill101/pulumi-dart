// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PartitionTypeStatus reports allocatability for a single partition type, identified by the value of a grouping attribute.
class PartitionTypeStatusPatch {
  /// Allocatable is the number of additional devices of this partition type that could still be allocated given current shared-counter consumption.
  final pulumi.Input<int?>? allocatable;
  /// Attribute is the fully qualified name of the device attribute whose value groups this entry. It is the PartitionTypeAttribute declared by the devices' own slice, or the default named in the request when their slice declares none.
  final pulumi.Input<String?>? attribute;
  /// Total is the number of devices of this partition type in the pool.
  final pulumi.Input<int?>? total;
  /// Type is the partition type value (e.g. "Full" or "Half").
  final pulumi.Input<String?>? type;

  /// Creates a new [PartitionTypeStatusPatch].
  /// [allocatable] Allocatable is the number of additional devices of this partition type that could still be allocated given current shared-counter consumption.
  /// [attribute] Attribute is the fully qualified name of the device attribute whose value groups this entry. It is the PartitionTypeAttribute declared by the devices' own slice, or the default named in the request when their slice declares none.
  /// [total] Total is the number of devices of this partition type in the pool.
  /// [type] Type is the partition type value (e.g. "Full" or "Half").
  const PartitionTypeStatusPatch({
    this.allocatable,
    this.attribute,
    this.total,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatable': ?allocatable,
      'attribute': ?attribute,
      'total': ?total,
      'type': ?type,
    };
  }

  factory PartitionTypeStatusPatch.fromMap(Map<String, dynamic> map) {
    return PartitionTypeStatusPatch(
      allocatable: (() { final guardedValue = map['allocatable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      attribute: (() { final guardedValue = map['attribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      total: (() { final guardedValue = map['total']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
