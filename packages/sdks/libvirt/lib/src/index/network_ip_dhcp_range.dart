// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_ip_dhcp_range_lease.dart';

class NetworkIpDhcpRange {
  /// Sets the end IP address of the DHCP allocation range.
  final pulumi.Input<String>? end;
  /// Configures lease settings for DHCP host entries.
  final pulumi.Input<NetworkIpDhcpRangeLease>? lease;
  /// Sets the start IP address of the DHCP allocation range.
  final pulumi.Input<String>? start;

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
      'lease': ?pulumi.Input.mapOptionalInputValue<NetworkIpDhcpRangeLease, Map<String, dynamic>>(lease, (value) => value.toMap()),
      'start': ?start,
    };
  }

  factory NetworkIpDhcpRange.fromMap(Map<String, dynamic> map) {
    return NetworkIpDhcpRange(
      end: map['end'] == null ? null : (map['end']! as String).input(),
      lease: map['lease'] == null ? null : (NetworkIpDhcpRangeLease.fromMap((map['lease']! as Map).cast<String, dynamic>())).input(),
      start: map['start'] == null ? null : (map['start']! as String).input(),
    );
  }
}

