// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_network_interface_nat_rule_association_network_interface_nat_rule_association_args_doc}
/// The set of arguments for NetworkInterfaceNatRuleAssociation.
/// {@endtemplate}
/// {@macro pulumi_network_network_interface_nat_rule_association_network_interface_nat_rule_association_args_doc}
class NetworkInterfaceNatRuleAssociationArgs {
  /// The Name of the IP Configuration within the Network Interface which should be connected to the NAT Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String> ipConfigurationName;
  /// The ID of the Load Balancer NAT Rule which this Network Interface which should be connected to. Changing this forces a new resource to be created.
  final pulumi.Input<String> natRuleId;
  /// The ID of the Network Interface. Changing this forces a new resource to be created.
  final pulumi.Input<String> networkInterfaceId;

  /// Creates a new [NetworkInterfaceNatRuleAssociationArgs].
  /// [ipConfigurationName] The Name of the IP Configuration within the Network Interface which should be connected to the NAT Rule. Changing this forces a new resource to be created.
  /// [natRuleId] The ID of the Load Balancer NAT Rule which this Network Interface which should be connected to. Changing this forces a new resource to be created.
  /// [networkInterfaceId] The ID of the Network Interface. Changing this forces a new resource to be created.
  NetworkInterfaceNatRuleAssociationArgs({
    required this.ipConfigurationName,
    required this.natRuleId,
    required this.networkInterfaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipConfigurationName': ipConfigurationName,
      'natRuleId': natRuleId,
      'networkInterfaceId': networkInterfaceId,
    };
  }

  factory NetworkInterfaceNatRuleAssociationArgs.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceNatRuleAssociationArgs(
      ipConfigurationName: pulumi.Input.fromValue(map['ipConfigurationName'] as String),
      natRuleId: pulumi.Input.fromValue(map['natRuleId'] as String),
      networkInterfaceId: pulumi.Input.fromValue(map['networkInterfaceId'] as String),
    );
  }
}

