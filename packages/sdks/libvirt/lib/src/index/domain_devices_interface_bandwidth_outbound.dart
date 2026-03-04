// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceBandwidthOutbound {
  /// Sets the average outbound bandwidth limit for the interface, controlling the typical amount of outgoing traffic.
  final pulumi.Input<double>? average;

  /// Configures the maximum burst outbound bandwidth for the interface, allowing for temporary spikes in outgoing traffic.
  final pulumi.Input<double>? burst;

  /// Establishes the minimum outbound bandwidth guarantee for the interface, ensuring a baseline level of outgoing traffic availability.
  final pulumi.Input<double>? floor;

  /// Sets the peak outbound bandwidth limit for the interface, defining the absolute maximum capacity for outgoing traffic.
  final pulumi.Input<double>? peak;

  /// Creates a new [DomainDevicesInterfaceBandwidthOutbound].
  /// [average] Sets the average outbound bandwidth limit for the interface, controlling the typical amount of outgoing traffic.
  /// [burst] Configures the maximum burst outbound bandwidth for the interface, allowing for temporary spikes in outgoing traffic.
  /// [floor] Establishes the minimum outbound bandwidth guarantee for the interface, ensuring a baseline level of outgoing traffic availability.
  /// [peak] Sets the peak outbound bandwidth limit for the interface, defining the absolute maximum capacity for outgoing traffic.
  DomainDevicesInterfaceBandwidthOutbound({
    this.average,
    this.burst,
    this.floor,
    this.peak,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'average': ?average,
      'burst': ?burst,
      'floor': ?floor,
      'peak': ?peak,
    };
  }

  factory DomainDevicesInterfaceBandwidthOutbound.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDevicesInterfaceBandwidthOutbound(
      average: (() {
        final guardedValue = map['average'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      burst: (() {
        final guardedValue = map['burst'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      floor: (() {
        final guardedValue = map['floor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      peak: (() {
        final guardedValue = map['peak'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
