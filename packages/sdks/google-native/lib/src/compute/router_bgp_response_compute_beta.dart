// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_advertised_ip_range_response_compute_beta.dart';

class RouterBgpResponseComputeBeta {
  /// User-specified flag to indicate which mode to use for advertisement. The options are DEFAULT or CUSTOM.
  final pulumi.Input<String> advertiseMode;
  /// User-specified list of prefix groups to advertise in custom mode. This field can only be populated if advertise_mode is CUSTOM and is advertised to all peers of the router. These groups will be advertised in addition to any specified prefixes. Leave this field blank to advertise no custom groups.
  final pulumi.Input<List<String>> advertisedGroups;
  /// User-specified list of individual IP ranges to advertise in custom mode. This field can only be populated if advertise_mode is CUSTOM and is advertised to all peers of the router. These IP ranges will be advertised in addition to any specified groups. Leave this field blank to advertise no custom IP ranges.
  final pulumi.Input<List<RouterAdvertisedIpRangeResponseComputeBeta>> advertisedIpRanges;
  /// Local BGP Autonomous System Number (ASN). Must be an RFC6996 private ASN, either 16-bit or 32-bit. The value will be fixed for this router resource. All VPN tunnels that link to this router will have the same local ASN.
  final pulumi.Input<int> asn;
  /// Explicitly specifies a range of valid BGP Identifiers for this Router. It is provided as a link-local IPv4 range (from 169.254.0.0/16), of size at least /30, even if the BGP sessions are over IPv6. It must not overlap with any IPv4 BGP session ranges. Other vendors commonly call this "router ID".
  final pulumi.Input<String> identifierRange;
  /// The interval in seconds between BGP keepalive messages that are sent to the peer. Hold time is three times the interval at which keepalive messages are sent, and the hold time is the maximum number of seconds allowed to elapse between successive keepalive messages that BGP receives from a peer. BGP will use the smaller of either the local hold time value or the peer's hold time value as the hold time for the BGP connection between the two peers. If set, this value must be between 20 and 60. The default is 20.
  final pulumi.Input<int> keepaliveInterval;

  /// Creates a new [RouterBgpResponseComputeBeta].
  /// [advertiseMode] User-specified flag to indicate which mode to use for advertisement. The options are DEFAULT or CUSTOM.
  /// [advertisedGroups] User-specified list of prefix groups to advertise in custom mode. This field can only be populated if advertise_mode is CUSTOM and is advertised to all peers of the router. These groups will be advertised in addition to any specified prefixes. Leave this field blank to advertise no custom groups.
  /// [advertisedIpRanges] User-specified list of individual IP ranges to advertise in custom mode. This field can only be populated if advertise_mode is CUSTOM and is advertised to all peers of the router. These IP ranges will be advertised in addition to any specified groups. Leave this field blank to advertise no custom IP ranges.
  /// [asn] Local BGP Autonomous System Number (ASN). Must be an RFC6996 private ASN, either 16-bit or 32-bit. The value will be fixed for this router resource. All VPN tunnels that link to this router will have the same local ASN.
  /// [identifierRange] Explicitly specifies a range of valid BGP Identifiers for this Router. It is provided as a link-local IPv4 range (from 169.254.0.0/16), of size at least /30, even if the BGP sessions are over IPv6. It must not overlap with any IPv4 BGP session ranges. Other vendors commonly call this "router ID".
  /// [keepaliveInterval] The interval in seconds between BGP keepalive messages that are sent to the peer. Hold time is three times the interval at which keepalive messages are sent, and the hold time is the maximum number of seconds allowed to elapse between successive keepalive messages that BGP receives from a peer. BGP will use the smaller of either the local hold time value or the peer's hold time value as the hold time for the BGP connection between the two peers. If set, this value must be between 20 and 60. The default is 20.
  const RouterBgpResponseComputeBeta({
    required this.advertiseMode,
    required this.advertisedGroups,
    required this.advertisedIpRanges,
    required this.asn,
    required this.identifierRange,
    required this.keepaliveInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advertiseMode': advertiseMode,
      'advertisedGroups': advertisedGroups,
      'advertisedIpRanges': pulumi.Input.mapInputValue<List<RouterAdvertisedIpRangeResponseComputeBeta>, List<Map<String, dynamic>>>(advertisedIpRanges, (value) => pulumi.Input.encodeList<RouterAdvertisedIpRangeResponseComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'asn': asn,
      'identifierRange': identifierRange,
      'keepaliveInterval': keepaliveInterval,
    };
  }

  factory RouterBgpResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return RouterBgpResponseComputeBeta(
      advertiseMode: pulumi.Input.fromValue(map['advertiseMode'] as String),
      advertisedGroups: pulumi.Input.fromValue((map['advertisedGroups'] as List).cast<String>()),
      advertisedIpRanges: pulumi.Input.fromValue(pulumi.Input.decodeList<RouterAdvertisedIpRangeResponseComputeBeta>(map['advertisedIpRanges']!, (value) => RouterAdvertisedIpRangeResponseComputeBeta.fromMap((value as Map).cast<String, dynamic>()))),
      asn: pulumi.Input.fromValue(map['asn'] as int),
      identifierRange: pulumi.Input.fromValue(map['identifierRange'] as String),
      keepaliveInterval: pulumi.Input.fromValue(map['keepaliveInterval'] as int),
    );
  }
}
