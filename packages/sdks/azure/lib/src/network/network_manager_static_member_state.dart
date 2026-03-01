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
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkGroupId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? targetVirtualNetworkId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      networkGroupId = pulumi.Input.asOptionalInput<String>(networkGroupId),
      region = pulumi.Input.asOptionalInput<String>(region),
      targetVirtualNetworkId = pulumi.Input.asOptionalInput<String>(targetVirtualNetworkId);

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
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkGroupId: map['networkGroupId'] == null ? null : pulumi.Output.create<String>(map['networkGroupId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      targetVirtualNetworkId: map['targetVirtualNetworkId'] == null ? null : pulumi.Output.create<String>(map['targetVirtualNetworkId'] as String),
    );
  }
}

