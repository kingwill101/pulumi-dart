// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_subnet_network_security_group_association_subnet_network_security_group_association_args_doc}
/// The set of arguments for SubnetNetworkSecurityGroupAssociation.
/// {@endtemplate}
/// {@macro pulumi_network_subnet_network_security_group_association_subnet_network_security_group_association_args_doc}
class SubnetNetworkSecurityGroupAssociationArgs {
  /// The ID of the Network Security Group which should be associated with the Subnet. Changing this forces a new resource to be created.
  final pulumi.Input<String> networkSecurityGroupId;
  /// The ID of the Subnet. Changing this forces a new resource to be created.
  final pulumi.Input<String> subnetId;

  /// Creates a new [SubnetNetworkSecurityGroupAssociationArgs].
  /// [networkSecurityGroupId] The ID of the Network Security Group which should be associated with the Subnet. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the Subnet. Changing this forces a new resource to be created.
  SubnetNetworkSecurityGroupAssociationArgs({
    required this.networkSecurityGroupId,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkSecurityGroupId': networkSecurityGroupId,
      'subnetId': subnetId,
    };
  }

  factory SubnetNetworkSecurityGroupAssociationArgs.fromMap(Map<String, dynamic> map) {
    return SubnetNetworkSecurityGroupAssociationArgs(
      networkSecurityGroupId: pulumi.Input.fromValue(map['networkSecurityGroupId'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}

