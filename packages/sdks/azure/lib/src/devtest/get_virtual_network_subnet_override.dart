// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNetworkSubnetOverride {
  /// The name of the subnet.
  final pulumi.Input<String> labSubnetName;

  /// The resource identifier for the subnet.
  final pulumi.Input<String> resourceId;

  /// Indicates if the subnet can be used for VM creation.  Possible values are `Allow`, `Default` and `Deny`.
  final pulumi.Input<String> useInVmCreationPermission;
  final pulumi.Input<String> usePublicIpAddressPermission;

  /// The virtual network pool associated with this subnet.
  final pulumi.Input<String> virtualNetworkPoolName;

  /// Creates a new [GetVirtualNetworkSubnetOverride].
  /// [labSubnetName] The name of the subnet.
  /// [resourceId] The resource identifier for the subnet.
  /// [useInVmCreationPermission] Indicates if the subnet can be used for VM creation.  Possible values are `Allow`, `Default` and `Deny`.
  /// [usePublicIpAddressPermission] Required.
  /// [virtualNetworkPoolName] The virtual network pool associated with this subnet.
  GetVirtualNetworkSubnetOverride({
    required this.labSubnetName,
    required this.resourceId,
    required this.useInVmCreationPermission,
    required this.usePublicIpAddressPermission,
    required this.virtualNetworkPoolName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labSubnetName': labSubnetName,
      'resourceId': resourceId,
      'useInVmCreationPermission': useInVmCreationPermission,
      'usePublicIpAddressPermission': usePublicIpAddressPermission,
      'virtualNetworkPoolName': virtualNetworkPoolName,
    };
  }

  factory GetVirtualNetworkSubnetOverride.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkSubnetOverride(
      labSubnetName: pulumi.Input.fromValue(map['labSubnetName'] as String),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      useInVmCreationPermission: pulumi.Input.fromValue(
        map['useInVmCreationPermission'] as String,
      ),
      usePublicIpAddressPermission: pulumi.Input.fromValue(
        map['usePublicIpAddressPermission'] as String,
      ),
      virtualNetworkPoolName: pulumi.Input.fromValue(
        map['virtualNetworkPoolName'] as String,
      ),
    );
  }
}
