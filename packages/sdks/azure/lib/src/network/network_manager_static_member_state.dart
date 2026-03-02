// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkManagerStaticMember resources.
class NetworkManagerStaticMemberState {
  /// Specifies the name which should be used for this Network Manager Static Member. Changing this forces a new Network Manager Static Member to be created.
  final pulumi.Input<String>? name;
  /// Specifies the ID of the Network Manager Group. Changing this forces a new Network Manager Static Member to be created.
  final pulumi.Input<String>? networkGroupId;
  /// The region of the Network Manager Static Member.
  final pulumi.Input<String>? region;
  /// Specifies the Resource ID of the Virtual Network or Subnet used as the Static Member. Changing this forces a new Network Manager Static Member to be created.
  ///
  /// > **Note:** Subnet is supported only if the Network Manager has added `Routing` to `scope_accesses` and the Network Group has set `Subnet` as the `member_type` value.
  final pulumi.Input<String>? targetVirtualNetworkId;

  /// Creates a new [NetworkManagerStaticMemberState].
  /// [name] Specifies the name which should be used for this Network Manager Static Member. Changing this forces a new Network Manager Static Member to be created.
  /// [networkGroupId] Specifies the ID of the Network Manager Group. Changing this forces a new Network Manager Static Member to be created.
  /// [region] The region of the Network Manager Static Member.
  /// [targetVirtualNetworkId] Specifies the Resource ID of the Virtual Network or Subnet used as the Static Member. Changing this forces a new Network Manager Static Member to be created.
  NetworkManagerStaticMemberState({
    this.name,
    this.networkGroupId,
    this.region,
    this.targetVirtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'networkGroupId': ?networkGroupId,
      'region': ?region,
      'targetVirtualNetworkId': ?targetVirtualNetworkId,
    };
  }

  factory NetworkManagerStaticMemberState.fromMap(Map<String, dynamic> map) {
    return NetworkManagerStaticMemberState(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkGroupId: map['networkGroupId'] == null ? null : (map['networkGroupId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      targetVirtualNetworkId: map['targetVirtualNetworkId'] == null ? null : (map['targetVirtualNetworkId'] as String).input(),
    );
  }
}

