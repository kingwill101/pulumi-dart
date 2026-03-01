// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInterfaceBandwidthInbound {
  /// Sets the average outbound bandwidth limit for the interface, controlling the typical amount of outgoing traffic.
  final double? average;
  /// Configures the maximum burst outbound bandwidth for the interface, allowing for temporary spikes in outgoing traffic.
  final double? burst;
  /// Establishes the minimum outbound bandwidth guarantee for the interface, ensuring a baseline level of outgoing traffic availability.
  final double? floor;
  /// Sets the peak outbound bandwidth limit for the interface, defining the absolute maximum capacity for outgoing traffic.
  final double? peak;

  /// Creates a new [DomainDevicesInterfaceBandwidthInbound].
  /// [average] Sets the average outbound bandwidth limit for the interface, controlling the typical amount of outgoing traffic.
  /// [burst] Configures the maximum burst outbound bandwidth for the interface, allowing for temporary spikes in outgoing traffic.
  /// [floor] Establishes the minimum outbound bandwidth guarantee for the interface, ensuring a baseline level of outgoing traffic availability.
  /// [peak] Sets the peak outbound bandwidth limit for the interface, defining the absolute maximum capacity for outgoing traffic.
  DomainDevicesInterfaceBandwidthInbound({
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

  factory DomainDevicesInterfaceBandwidthInbound.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceBandwidthInbound(
      average: map['average'] == null ? null : map['average'] as double,
      burst: map['burst'] == null ? null : map['burst'] as double,
      floor: map['floor'] == null ? null : map['floor'] as double,
      peak: map['peak'] == null ? null : map['peak'] as double,
    );
  }
}

