// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkBandwidthOutbound {
  /// Sets the average allowable rate of outbound data for the network, providing a general performance baseline.
  final pulumi.Input<double>? average;
  /// Configures the maximum burst capacity of outbound data that can exceed the average rate temporarily.
  final pulumi.Input<double>? burst;
  /// Specifies the minimum guaranteed rate for outbound data traffic, ensuring a baseline level of performance.
  final pulumi.Input<double>? floor;
  /// Defines the upper limit for the peak rate of outbound data, controlling spikes in network usage.
  final pulumi.Input<double>? peak;

  /// Creates a new [NetworkBandwidthOutbound].
  /// [average] Sets the average allowable rate of outbound data for the network, providing a general performance baseline.
  /// [burst] Configures the maximum burst capacity of outbound data that can exceed the average rate temporarily.
  /// [floor] Specifies the minimum guaranteed rate for outbound data traffic, ensuring a baseline level of performance.
  /// [peak] Defines the upper limit for the peak rate of outbound data, controlling spikes in network usage.
  const NetworkBandwidthOutbound({
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

  factory NetworkBandwidthOutbound.fromMap(Map<String, dynamic> map) {
    return NetworkBandwidthOutbound(
      average: (() { final guardedValue = map['average']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      burst: (() { final guardedValue = map['burst']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      floor: (() { final guardedValue = map['floor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      peak: (() { final guardedValue = map['peak']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
