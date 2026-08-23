// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_network_interface_security_group_association_network_interface_security_group_association_args_doc}
/// The set of arguments for NetworkInterfaceSecurityGroupAssociation.
/// {@endtemplate}
/// {@macro pulumi_network_network_interface_security_group_association_network_interface_security_group_association_args_doc}
class NetworkInterfaceSecurityGroupAssociationArgs {
  /// The ID of the Network Interface. Changing this forces a new resource to be created.
  final pulumi.Input<String> networkInterfaceId;
  /// The ID of the Network Security Group which should be attached to the Network Interface. Changing this forces a new resource to be created.
  final pulumi.Input<String> networkSecurityGroupId;

  /// Creates a new [NetworkInterfaceSecurityGroupAssociationArgs].
  /// [networkInterfaceId] The ID of the Network Interface. Changing this forces a new resource to be created.
  /// [networkSecurityGroupId] The ID of the Network Security Group which should be attached to the Network Interface. Changing this forces a new resource to be created.
  const NetworkInterfaceSecurityGroupAssociationArgs({
    required this.networkInterfaceId,
    required this.networkSecurityGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkInterfaceId': networkInterfaceId,
      'networkSecurityGroupId': networkSecurityGroupId,
    };
  }

  factory NetworkInterfaceSecurityGroupAssociationArgs.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceSecurityGroupAssociationArgs(
      networkInterfaceId: pulumi.Input.fromValue(map['networkInterfaceId'] as String),
      networkSecurityGroupId: pulumi.Input.fromValue(map['networkSecurityGroupId'] as String),
    );
  }
}
