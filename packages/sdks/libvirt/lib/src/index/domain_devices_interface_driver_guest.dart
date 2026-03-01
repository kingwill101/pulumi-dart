// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInterfaceDriverGuest {
  /// Enables or disables checksum offloading for the guest driver, optimizing how checksums are handled for network traffic.
  final String? csum;
  /// Configures Explicit Congestion Notification (ECN) support for the guest driver, influencing traffic management strategies.
  final String? ecn;
  /// Controls TCP Segmentation Offloading (TSO) for IPv4 in the guest driver, enhancing network performance by offloading packet segmentation.
  final String? tso4;
  /// Controls TCP Segmentation Offloading (TSO) for IPv6 in the guest driver, enhancing network performance by offloading packet segmentation.
  final String? tso6;
  /// Enables or disables UDP Fragmentation Offloading (UFO) for the guest driver, optimizing the handling of UDP packets.
  final String? ufo;

  /// Creates a new [DomainDevicesInterfaceDriverGuest].
  /// [csum] Enables or disables checksum offloading for the guest driver, optimizing how checksums are handled for network traffic.
  /// [ecn] Configures Explicit Congestion Notification (ECN) support for the guest driver, influencing traffic management strategies.
  /// [tso4] Controls TCP Segmentation Offloading (TSO) for IPv4 in the guest driver, enhancing network performance by offloading packet segmentation.
  /// [tso6] Controls TCP Segmentation Offloading (TSO) for IPv6 in the guest driver, enhancing network performance by offloading packet segmentation.
  /// [ufo] Enables or disables UDP Fragmentation Offloading (UFO) for the guest driver, optimizing the handling of UDP packets.
  DomainDevicesInterfaceDriverGuest({
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
      csum: map['csum'] == null ? null : map['csum'] as String,
      ecn: map['ecn'] == null ? null : map['ecn'] as String,
      tso4: map['tso4'] == null ? null : map['tso4'] as String,
      tso6: map['tso6'] == null ? null : map['tso6'] as String,
      ufo: map['ufo'] == null ? null : map['ufo'] as String,
    );
  }
}

