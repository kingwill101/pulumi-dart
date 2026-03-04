// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolSourceDeviceFreeExtent {
  /// Indicates the end value for the free extents available in the source device.
  final pulumi.Input<double> end;

  /// Defines the starting point for the free extents in the source device.
  final pulumi.Input<double> start;

  /// Creates a new [PoolSourceDeviceFreeExtent].
  /// [end] Indicates the end value for the free extents available in the source device.
  /// [start] Defines the starting point for the free extents in the source device.
  PoolSourceDeviceFreeExtent({required this.end, required this.start});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'end': end, 'start': start};
  }

  factory PoolSourceDeviceFreeExtent.fromMap(Map<String, dynamic> map) {
    return PoolSourceDeviceFreeExtent(
      end: pulumi.Input.fromValue(map['end'] as double),
      start: pulumi.Input.fromValue(map['start'] as double),
    );
  }
}
