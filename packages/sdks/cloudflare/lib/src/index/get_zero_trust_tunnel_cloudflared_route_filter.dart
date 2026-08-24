// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustTunnelCloudflaredRouteFilter {
  /// Optional remark describing the route.
  final pulumi.Input<String> comment;
  /// If provided, include only resources that were created (and not deleted) before this time. URL encoded.
  final pulumi.Input<String?>? existedAt;
  /// If `true`, only include deleted routes. If `false`, exclude deleted routes. If empty, all routes will be included.
  final pulumi.Input<bool?>? isDeleted;
  /// If set, only list routes that are contained within this IP range.
  final pulumi.Input<String?>? networkSubset;
  /// If set, only list routes that contain this IP range.
  final pulumi.Input<String?>? networkSuperset;
  /// The types of tunnels to filter by, separated by commas.
  final pulumi.Input<List<String>?>? tunTypes;
  /// UUID of the tunnel.
  final pulumi.Input<String?>? tunnelId;
  /// UUID of the virtual network.
  final pulumi.Input<String?>? virtualNetworkId;

  /// Creates a new [GetZeroTrustTunnelCloudflaredRouteFilter].
  /// [comment] Optional remark describing the route.
  /// [existedAt] If provided, include only resources that were created (and not deleted) before this time. URL encoded.
  /// [isDeleted] If `true`, only include deleted routes. If `false`, exclude deleted routes. If empty, all routes will be included.
  /// [networkSubset] If set, only list routes that are contained within this IP range.
  /// [networkSuperset] If set, only list routes that contain this IP range.
  /// [tunTypes] The types of tunnels to filter by, separated by commas.
  /// [tunnelId] UUID of the tunnel.
  /// [virtualNetworkId] UUID of the virtual network.
  const GetZeroTrustTunnelCloudflaredRouteFilter({
    required this.comment,
    this.existedAt,
    this.isDeleted,
    this.networkSubset,
    this.networkSuperset,
    this.tunTypes,
    this.tunnelId,
    this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': comment,
      'existedAt': ?existedAt,
      'isDeleted': ?isDeleted,
      'networkSubset': ?networkSubset,
      'networkSuperset': ?networkSuperset,
      'tunTypes': ?tunTypes,
      'tunnelId': ?tunnelId,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory GetZeroTrustTunnelCloudflaredRouteFilter.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustTunnelCloudflaredRouteFilter(
      comment: pulumi.Input.fromValue(map['comment'] as String),
      existedAt: (() { final guardedValue = map['existedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isDeleted: (() { final guardedValue = map['isDeleted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      networkSubset: (() { final guardedValue = map['networkSubset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkSuperset: (() { final guardedValue = map['networkSuperset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tunTypes: (() { final guardedValue = map['tunTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tunnelId: (() { final guardedValue = map['tunnelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualNetworkId: (() { final guardedValue = map['virtualNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
