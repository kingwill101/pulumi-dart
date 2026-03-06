// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_routers_router_bgp_advertised_ip_range.dart';

class GetRoutersRouterBgp {
  final pulumi.Input<String> advertiseMode;
  final pulumi.Input<List<String>> advertisedGroups;
  final pulumi.Input<List<GetRoutersRouterBgpAdvertisedIpRange>> advertisedIpRanges;
  final pulumi.Input<int> asn;
  final pulumi.Input<int> keepaliveInterval;

  /// Creates a new [GetRoutersRouterBgp].
  /// [advertiseMode] Required.
  /// [advertisedGroups] Required.
  /// [advertisedIpRanges] Required.
  /// [asn] Required.
  /// [keepaliveInterval] Required.
  const GetRoutersRouterBgp({
    required this.advertiseMode,
    required this.advertisedGroups,
    required this.advertisedIpRanges,
    required this.asn,
    required this.keepaliveInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advertiseMode': advertiseMode,
      'advertisedGroups': advertisedGroups,
      'advertisedIpRanges': pulumi.Input.mapInputValue<List<GetRoutersRouterBgpAdvertisedIpRange>, List<Map<String, dynamic>>>(advertisedIpRanges, (value) => pulumi.Input.encodeList<GetRoutersRouterBgpAdvertisedIpRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'asn': asn,
      'keepaliveInterval': keepaliveInterval,
    };
  }

  factory GetRoutersRouterBgp.fromMap(Map<String, dynamic> map) {
    return GetRoutersRouterBgp(
      advertiseMode: pulumi.Input.fromValue(map['advertiseMode'] as String),
      advertisedGroups: pulumi.Input.fromValue((map['advertisedGroups'] as List).cast<String>()),
      advertisedIpRanges: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRoutersRouterBgpAdvertisedIpRange>(map['advertisedIpRanges']!, (value) => GetRoutersRouterBgpAdvertisedIpRange.fromMap((value as Map).cast<String, dynamic>()))),
      asn: pulumi.Input.fromValue(map['asn'] as int),
      keepaliveInterval: pulumi.Input.fromValue(map['keepaliveInterval'] as int),
    );
  }
}

