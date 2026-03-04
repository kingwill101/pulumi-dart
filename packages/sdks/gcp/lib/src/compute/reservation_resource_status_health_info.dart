// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReservationResourceStatusHealthInfo {
  /// (Output)
  /// The number of reservation blocks that are degraded.
  final pulumi.Input<int>? degradedBlockCount;

  /// (Output)
  /// The health status of the reservation.
  final pulumi.Input<String>? healthStatus;

  /// (Output)
  /// The number of reservation blocks that are healthy.
  final pulumi.Input<int>? healthyBlockCount;

  /// Creates a new [ReservationResourceStatusHealthInfo].
  /// [degradedBlockCount] (Output)
  /// [healthStatus] (Output)
  /// [healthyBlockCount] (Output)
  ReservationResourceStatusHealthInfo({
    this.degradedBlockCount,
    this.healthStatus,
    this.healthyBlockCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'degradedBlockCount': ?degradedBlockCount,
      'healthStatus': ?healthStatus,
      'healthyBlockCount': ?healthyBlockCount,
    };
  }

  factory ReservationResourceStatusHealthInfo.fromMap(
    Map<String, dynamic> map,
  ) {
    return ReservationResourceStatusHealthInfo(
      degradedBlockCount: (() {
        final guardedValue = map['degradedBlockCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      healthStatus: (() {
        final guardedValue = map['healthStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      healthyBlockCount: (() {
        final guardedValue = map['healthyBlockCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
