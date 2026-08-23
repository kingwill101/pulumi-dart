// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceDriverGuest {
  /// Enables or disables checksum offloading for the guest driver, optimizing how checksums are handled for network traffic.
  final pulumi.Input<String>? csum;
  /// Configures Explicit Congestion Notification (ECN) support for the guest driver, influencing traffic management strategies.
  final pulumi.Input<String>? ecn;
  /// Controls TCP Segmentation Offloading (TSO) for IPv4 in the guest driver, enhancing network performance by offloading packet segmentation.
  final pulumi.Input<String>? tso4;
  /// Controls TCP Segmentation Offloading (TSO) for IPv6 in the guest driver, enhancing network performance by offloading packet segmentation.
  final pulumi.Input<String>? tso6;
  /// Enables or disables UDP Fragmentation Offloading (UFO) for the guest driver, optimizing the handling of UDP packets.
  final pulumi.Input<String>? ufo;

  /// Creates a new [DomainDevicesInterfaceDriverGuest].
  /// [csum] Enables or disables checksum offloading for the guest driver, optimizing how checksums are handled for network traffic.
  /// [ecn] Configures Explicit Congestion Notification (ECN) support for the guest driver, influencing traffic management strategies.
  /// [tso4] Controls TCP Segmentation Offloading (TSO) for IPv4 in the guest driver, enhancing network performance by offloading packet segmentation.
  /// [tso6] Controls TCP Segmentation Offloading (TSO) for IPv6 in the guest driver, enhancing network performance by offloading packet segmentation.
  /// [ufo] Enables or disables UDP Fragmentation Offloading (UFO) for the guest driver, optimizing the handling of UDP packets.
  const DomainDevicesInterfaceDriverGuest({
    this.csum,
    this.ecn,
    this.tso4,
    this.tso6,
    this.ufo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csum': ?csum,
      'ecn': ?ecn,
      'tso4': ?tso4,
      'tso6': ?tso6,
      'ufo': ?ufo,
    };
  }

  factory DomainDevicesInterfaceDriverGuest.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceDriverGuest(
      csum: (() { final guardedValue = map['csum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ecn: (() { final guardedValue = map['ecn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tso4: (() { final guardedValue = map['tso4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tso6: (() { final guardedValue = map['tso6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ufo: (() { final guardedValue = map['ufo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
