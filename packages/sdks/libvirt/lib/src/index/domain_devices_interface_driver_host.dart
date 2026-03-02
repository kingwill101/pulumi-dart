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
  DomainDevicesInterfaceDriverHost({
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
      csum: map['csum'] == null ? null : (map['csum']! as String).input(),
      ecn: map['ecn'] == null ? null : (map['ecn']! as String).input(),
      gso: map['gso'] == null ? null : (map['gso']! as String).input(),
      mrgRxBuf: map['mrgRxBuf'] == null ? null : (map['mrgRxBuf']! as String).input(),
      tso4: map['tso4'] == null ? null : (map['tso4']! as String).input(),
      tso6: map['tso6'] == null ? null : (map['tso6']! as String).input(),
      ufo: map['ufo'] == null ? null : (map['ufo']! as String).input(),
    );
  }
}

