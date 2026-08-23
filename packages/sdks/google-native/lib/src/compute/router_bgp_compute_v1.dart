// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_advertised_ip_range_compute_v1.dart';
import 'router_bgp_advertise_mode_compute_v1.dart';
import 'router_bgp_advertised_groups_item_compute_v1.dart';

class RouterBgpComputeV1 {
  /// User-specified flag to indicate which mode to use for advertisement. The options are DEFAULT or CUSTOM.
  final pulumi.Input<RouterBgpAdvertiseModeComputeV1>? advertiseMode;
  /// User-specified list of prefix groups to advertise in custom mode. This field can only be populated if advertise_mode is CUSTOM and is advertised to all peers of the router. These groups will be advertised in addition to any specified prefixes. Leave this field blank to advertise no custom groups.
  final pulumi.Input<List<RouterBgpAdvertisedGroupsItemComputeV1>>? advertisedGroups;
  /// User-specified list of individual IP ranges to advertise in custom mode. This field can only be populated if advertise_mode is CUSTOM and is advertised to all peers of the router. These IP ranges will be advertised in addition to any specified groups. Leave this field blank to advertise no custom IP ranges.
  final pulumi.Input<List<RouterAdvertisedIpRangeComputeV1>>? advertisedIpRanges;
  /// Local BGP Autonomous System Number (ASN). Must be an RFC6996 private ASN, either 16-bit or 32-bit. The value will be fixed for this router resource. All VPN tunnels that link to this router will have the same local ASN.
  final pulumi.Input<int>? asn;
  /// The interval in seconds between BGP keepalive messages that are sent to the peer. Hold time is three times the interval at which keepalive messages are sent, and the hold time is the maximum number of seconds allowed to elapse between successive keepalive messages that BGP receives from a peer. BGP will use the smaller of either the local hold time value or the peer's hold time value as the hold time for the BGP connection between the two peers. If set, this value must be between 20 and 60. The default is 20.
  final pulumi.Input<int>? keepaliveInterval;

  /// Creates a new [RouterBgpComputeV1].
  /// [advertiseMode] User-specified flag to indicate which mode to use for advertisement. The options are DEFAULT or CUSTOM.
  /// [advertisedGroups] User-specified list of prefix groups to advertise in custom mode. This field can only be populated if advertise_mode is CUSTOM and is advertised to all peers of the router. These groups will be advertised in addition to any specified prefixes. Leave this field blank to advertise no custom groups.
  /// [advertisedIpRanges] User-specified list of individual IP ranges to advertise in custom mode. This field can only be populated if advertise_mode is CUSTOM and is advertised to all peers of the router. These IP ranges will be advertised in addition to any specified groups. Leave this field blank to advertise no custom IP ranges.
  /// [asn] Local BGP Autonomous System Number (ASN). Must be an RFC6996 private ASN, either 16-bit or 32-bit. The value will be fixed for this router resource. All VPN tunnels that link to this router will have the same local ASN.
  /// [keepaliveInterval] The interval in seconds between BGP keepalive messages that are sent to the peer. Hold time is three times the interval at which keepalive messages are sent, and the hold time is the maximum number of seconds allowed to elapse between successive keepalive messages that BGP receives from a peer. BGP will use the smaller of either the local hold time value or the peer's hold time value as the hold time for the BGP connection between the two peers. If set, this value must be between 20 and 60. The default is 20.
  const RouterBgpComputeV1({
    this.advertiseMode,
    this.advertisedGroups,
    this.advertisedIpRanges,
    this.asn,
    this.keepaliveInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advertiseMode': ?pulumi.Input.mapOptionalInputValue<RouterBgpAdvertiseModeComputeV1, String>(advertiseMode, (value) => value.wireValue),
      'advertisedGroups': ?pulumi.Input.mapOptionalInputValue<List<RouterBgpAdvertisedGroupsItemComputeV1>, List<String>>(advertisedGroups, (value) => pulumi.Input.encodeList<RouterBgpAdvertisedGroupsItemComputeV1, String>(value, (value) => value.wireValue)),
      'advertisedIpRanges': ?pulumi.Input.mapOptionalInputValue<List<RouterAdvertisedIpRangeComputeV1>, List<Map<String, dynamic>>>(advertisedIpRanges, (value) => pulumi.Input.encodeList<RouterAdvertisedIpRangeComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'asn': ?asn,
      'keepaliveInterval': ?keepaliveInterval,
    };
  }

  factory RouterBgpComputeV1.fromMap(Map<String, dynamic> map) {
    return RouterBgpComputeV1(
      advertiseMode: (() { final guardedValue = map['advertiseMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouterBgpAdvertiseModeComputeV1.fromValue(guardedValue as String)); })(),
      advertisedGroups: (() { final guardedValue = map['advertisedGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouterBgpAdvertisedGroupsItemComputeV1>(guardedValue, (value) => RouterBgpAdvertisedGroupsItemComputeV1.fromValue(value as String))); })(),
      advertisedIpRanges: (() { final guardedValue = map['advertisedIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouterAdvertisedIpRangeComputeV1>(guardedValue, (value) => RouterAdvertisedIpRangeComputeV1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      asn: (() { final guardedValue = map['asn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      keepaliveInterval: (() { final guardedValue = map['keepaliveInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
