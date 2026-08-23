// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceDriverHost {
  /// Enables or disables checksum offloading for the host driver, optimizing how checksums are handled for network traffic on the host.
  final pulumi.Input<String>? csum;
  /// Configures Explicit Congestion Notification (ECN) support for the host driver, influencing traffic management strategies at the host level.
  final pulumi.Input<String>? ecn;
  /// Enables or disables Generic Segmentation Offloading (GSO) for the host driver, improving performance by offloading packet segmentation.
  final pulumi.Input<String>? gso;
  /// Controls the usage of merged receive buffers for the host driver, optimizing how incoming packets are processed.
  final pulumi.Input<String>? mrgRxBuf;
  /// Controls TCP Segmentation Offloading (TSO) for IPv4 in the host driver, enhancing network performance by offloading packet segmentation.
  final pulumi.Input<String>? tso4;
  /// Controls TCP Segmentation Offloading (TSO) for IPv6 in the host driver, enhancing network performance by offloading packet segmentation.
  final pulumi.Input<String>? tso6;
  /// Enables or disables UDP Fragmentation Offloading (UFO) for the host driver, optimizing the handling of UDP packets.
  final pulumi.Input<String>? ufo;

  /// Creates a new [DomainDevicesInterfaceDriverHost].
  /// [csum] Enables or disables checksum offloading for the host driver, optimizing how checksums are handled for network traffic on the host.
  /// [ecn] Configures Explicit Congestion Notification (ECN) support for the host driver, influencing traffic management strategies at the host level.
  /// [gso] Enables or disables Generic Segmentation Offloading (GSO) for the host driver, improving performance by offloading packet segmentation.
  /// [mrgRxBuf] Controls the usage of merged receive buffers for the host driver, optimizing how incoming packets are processed.
  /// [tso4] Controls TCP Segmentation Offloading (TSO) for IPv4 in the host driver, enhancing network performance by offloading packet segmentation.
  /// [tso6] Controls TCP Segmentation Offloading (TSO) for IPv6 in the host driver, enhancing network performance by offloading packet segmentation.
  /// [ufo] Enables or disables UDP Fragmentation Offloading (UFO) for the host driver, optimizing the handling of UDP packets.
  const DomainDevicesInterfaceDriverHost({
    this.csum,
    this.ecn,
    this.gso,
    this.mrgRxBuf,
    this.tso4,
    this.tso6,
    this.ufo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csum': ?csum,
      'ecn': ?ecn,
      'gso': ?gso,
      'mrgRxBuf': ?mrgRxBuf,
      'tso4': ?tso4,
      'tso6': ?tso6,
      'ufo': ?ufo,
    };
  }

  factory DomainDevicesInterfaceDriverHost.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceDriverHost(
      csum: (() { final guardedValue = map['csum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ecn: (() { final guardedValue = map['ecn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gso: (() { final guardedValue = map['gso']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mrgRxBuf: (() { final guardedValue = map['mrgRxBuf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tso4: (() { final guardedValue = map['tso4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tso6: (() { final guardedValue = map['tso6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ufo: (() { final guardedValue = map['ufo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
