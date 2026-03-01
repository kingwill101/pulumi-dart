// ignore_for_file: unused_element, unnecessary_cast

import 'network_ip_dhcp_range_lease.dart';

class NetworkIpDhcpRange {
  /// Sets the end IP address of the DHCP allocation range.
  final String? end;
  /// Configures lease settings for DHCP host entries.
  final NetworkIpDhcpRangeLease? lease;
  /// Sets the start IP address of the DHCP allocation range.
  final String? start;

  /// Creates a new [NetworkIpDhcpRange].
  /// [end] Sets the end IP address of the DHCP allocation range.
  /// [lease] Configures lease settings for DHCP host entries.
  /// [start] Sets the start IP address of the DHCP allocation range.
  NetworkIpDhcpRange({
    this.end,
    this.lease,
    this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': ?end,
      'lease': ?lease == null ? null : lease!.toMap(),
      'start': ?start,
    };
  }

  factory NetworkIpDhcpRange.fromMap(Map<String, dynamic> map) {
    return NetworkIpDhcpRange(
      end: map['end'] == null ? null : map['end'] as String,
      lease: map['lease'] == null ? null : NetworkIpDhcpRangeLease.fromMap((map['lease'] as Map).cast<String, dynamic>()),
      start: map['start'] == null ? null : map['start'] as String,
    );
  }
}

