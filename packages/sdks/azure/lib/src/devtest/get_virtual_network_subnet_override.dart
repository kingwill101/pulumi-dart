// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualNetworkSubnetOverride {
  /// The name of the subnet.
  final String labSubnetName;
  /// The resource identifier for the subnet.
  final String resourceId;
  /// Indicates if the subnet can be used for VM creation.  Possible values are `Allow`, `Default` and `Deny`.
  final String useInVmCreationPermission;
  final String usePublicIpAddressPermission;
  /// The virtual network pool associated with this subnet.
  final String virtualNetworkPoolName;

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
      labSubnetName: map['labSubnetName'] as String,
      resourceId: map['resourceId'] as String,
      useInVmCreationPermission: map['useInVmCreationPermission'] as String,
      usePublicIpAddressPermission: map['usePublicIpAddressPermission'] as String,
      virtualNetworkPoolName: map['virtualNetworkPoolName'] as String,
    );
  }
}

