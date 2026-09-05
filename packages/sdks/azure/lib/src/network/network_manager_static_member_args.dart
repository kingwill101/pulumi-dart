// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_network_manager_static_member_network_manager_static_member_args_doc}
/// The set of arguments for NetworkManagerStaticMember.
/// {@endtemplate}
/// {@macro pulumi_network_network_manager_static_member_network_manager_static_member_args_doc}
class NetworkManagerStaticMemberArgs {
  /// Specifies the name which should be used for this Network Manager Static Member. Changing this forces a new Network Manager Static Member to be created.
  final pulumi.Input<String?>? name;
  /// Specifies the ID of the Network Manager Group. Changing this forces a new Network Manager Static Member to be created.
  final pulumi.Input<String> networkGroupId;
  /// Specifies the Resource ID of the Virtual Network or Subnet used as the Static Member. Changing this forces a new Network Manager Static Member to be created.
  ///
  /// &gt; **Note:** Subnet is supported only if the Network Manager has added `Routing` to `scopeAccesses` and the Network Group has set `Subnet` as the `memberType` value.
  final pulumi.Input<String> targetVirtualNetworkId;

  /// Creates a new [NetworkManagerStaticMemberArgs].
  /// [name] Specifies the name which should be used for this Network Manager Static Member. Changing this forces a new Network Manager Static Member to be created.
  /// [networkGroupId] Specifies the ID of the Network Manager Group. Changing this forces a new Network Manager Static Member to be created.
  /// [targetVirtualNetworkId] Specifies the Resource ID of the Virtual Network or Subnet used as the Static Member. Changing this forces a new Network Manager Static Member to be created.
  const NetworkManagerStaticMemberArgs({
    this.name,
    required this.networkGroupId,
    required this.targetVirtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'networkGroupId': networkGroupId,
      'targetVirtualNetworkId': targetVirtualNetworkId,
    };
  }

  factory NetworkManagerStaticMemberArgs.fromMap(Map<String, dynamic> map) {
    return NetworkManagerStaticMemberArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkGroupId: pulumi.Input.fromValue(map['networkGroupId'] as String),
      targetVirtualNetworkId: pulumi.Input.fromValue(map['targetVirtualNetworkId'] as String),
    );
  }
}
