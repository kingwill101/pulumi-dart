// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNetworkAllowedSubnet {
  /// Indicates if this subnet allows public IP addresses. Possible values are `Allow`, `Default` and `Deny`.
  final pulumi.Input<String> allowPublicIp;
  /// The name of the subnet.
  final pulumi.Input<String> labSubnetName;
  /// The resource identifier for the subnet.
  final pulumi.Input<String> resourceId;

  /// Creates a new [GetVirtualNetworkAllowedSubnet].
  /// [allowPublicIp] Indicates if this subnet allows public IP addresses. Possible values are `Allow`, `Default` and `Deny`.
  /// [labSubnetName] The name of the subnet.
  /// [resourceId] The resource identifier for the subnet.
  const GetVirtualNetworkAllowedSubnet({
    required this.allowPublicIp,
    required this.labSubnetName,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPublicIp': allowPublicIp,
      'labSubnetName': labSubnetName,
      'resourceId': resourceId,
    };
  }

  factory GetVirtualNetworkAllowedSubnet.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkAllowedSubnet(
      allowPublicIp: pulumi.Input.fromValue(map['allowPublicIp'] as String),
      labSubnetName: pulumi.Input.fromValue(map['labSubnetName'] as String),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
    );
  }
}
