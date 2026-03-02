// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_virtual_router_args_doc}
/// Arguments for getVirtualRouter.
/// {@endtemplate}
/// {@macro pulumi_network_get_virtual_router_args_doc}
class GetVirtualRouterArgs {
  /// Expands referenced resources.
  final pulumi.Input<String>? expand;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Virtual Router.
  final pulumi.Input<String> virtualRouterName;

  /// Creates a new [GetVirtualRouterArgs].
  /// [expand] Expands referenced resources.
  /// [resourceGroupName] The name of the resource group.
  /// [virtualRouterName] The name of the Virtual Router.
  GetVirtualRouterArgs({
    this.expand,
    required this.resourceGroupName,
    required this.virtualRouterName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'resourceGroupName': resourceGroupName,
      'virtualRouterName': virtualRouterName,
    };
  }

  factory GetVirtualRouterArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualRouterArgs(
      expand: map['expand'] == null ? null : (map['expand'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      virtualRouterName: (map['virtualRouterName'] as String).input(),
    );
  }
}

