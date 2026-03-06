// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_bgp_advertised_ip_range.dart';

class RouterBgp {
  /// User-specified flag to indicate which mode to use for advertisement.
  /// Default value is `DEFAULT`.
  /// Possible values are: `DEFAULT`, `CUSTOM`.
  final pulumi.Input<String>? advertiseMode;
  /// User-specified list of prefix groups to advertise in custom mode.
  /// This field can only be populated if advertiseMode is CUSTOM and
  /// is advertised to all peers of the router. These groups will be
  /// advertised in addition to any specified prefixes. Leave this field
  /// blank to advertise no custom groups.
  /// This enum field has the one valid value: ALL_SUBNETS
  final pulumi.Input<List<String>>? advertisedGroups;
  /// User-specified list of individual IP ranges to advertise in
  /// custom mode. This field can only be populated if advertiseMode
  /// is CUSTOM and is advertised to all peers of the router. These IP
  /// ranges will be advertised in addition to any specified groups.
  /// Leave this field blank to advertise no custom IP ranges.
  /// Structure is documented below.
  final pulumi.Input<List<RouterBgpAdvertisedIpRange>>? advertisedIpRanges;
  /// Local BGP Autonomous System Number (ASN). Must be an RFC6996
  /// private ASN, either 16-bit or 32-bit. The value will be fixed for
  /// this router resource. All VPN tunnels that link to this router
  /// will have the same local ASN.
  final pulumi.Input<int> asn;
  /// Explicitly specifies a range of valid BGP Identifiers for this Router.
  /// It is provided as a link-local IPv4 range (from 169.254.0.0/16), of
  /// size at least /30, even if the BGP sessions are over IPv6. It must
  /// not overlap with any IPv4 BGP session ranges. Other vendors commonly
  /// call this router ID.
  final pulumi.Input<String>? identifierRange;
  /// The interval in seconds between BGP keepalive messages that are sent
  /// to the peer. Hold time is three times the interval at which keepalive
  /// messages are sent, and the hold time is the maximum number of seconds
  /// allowed to elapse between successive keepalive messages that BGP
  /// receives from a peer.
  /// BGP will use the smaller of either the local hold time value or the
  /// peer's hold time value as the hold time for the BGP connection
  /// between the two peers. If set, this value must be between 20 and 60.
  /// The default is 20.
  final pulumi.Input<int>? keepaliveInterval;

  /// Creates a new [RouterBgp].
  /// [advertiseMode] User-specified flag to indicate which mode to use for advertisement.
  /// [advertisedGroups] User-specified list of prefix groups to advertise in custom mode.
  /// [advertisedIpRanges] User-specified list of individual IP ranges to advertise in
  /// [asn] Local BGP Autonomous System Number (ASN). Must be an RFC6996
  /// [identifierRange] Explicitly specifies a range of valid BGP Identifiers for this Router.
  /// [keepaliveInterval] The interval in seconds between BGP keepalive messages that are sent
  const RouterBgp({
    this.advertiseMode,
    this.advertisedGroups,
    this.advertisedIpRanges,
    required this.asn,
    this.identifierRange,
    this.keepaliveInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advertiseMode': ?advertiseMode,
      'advertisedGroups': ?advertisedGroups,
      'advertisedIpRanges': ?pulumi.Input.mapOptionalInputValue<List<RouterBgpAdvertisedIpRange>, List<Map<String, dynamic>>>(advertisedIpRanges, (value) => pulumi.Input.encodeList<RouterBgpAdvertisedIpRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'asn': asn,
      'identifierRange': ?identifierRange,
      'keepaliveInterval': ?keepaliveInterval,
    };
  }

  factory RouterBgp.fromMap(Map<String, dynamic> map) {
    return RouterBgp(
      advertiseMode: (() { final guardedValue = map['advertiseMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      advertisedGroups: (() { final guardedValue = map['advertisedGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      advertisedIpRanges: (() { final guardedValue = map['advertisedIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouterBgpAdvertisedIpRange>(guardedValue, (value) => RouterBgpAdvertisedIpRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      asn: pulumi.Input.fromValue(map['asn'] as int),
      identifierRange: (() { final guardedValue = map['identifierRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keepaliveInterval: (() { final guardedValue = map['keepaliveInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

