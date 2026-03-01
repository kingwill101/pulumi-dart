// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkInterfaceNatRuleAssociation resources.
class NetworkInterfaceNatRuleAssociationState {
  /// The Name of the IP Configuration within the Network Interface which should be connected to the NAT Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? ipConfigurationName;
  /// The ID of the Load Balancer NAT Rule which this Network Interface which should be connected to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? natRuleId;
  /// The ID of the Network Interface. Changing this forces a new resource to be created.
  final pulumi.Input<String>? networkInterfaceId;

  /// Creates a new [NetworkInterfaceNatRuleAssociationState].
  /// [ipConfigurationName] The Name of the IP Configuration within the Network Interface which should be connected to the NAT Rule. Changing this forces a new resource to be created.
  /// [natRuleId] The ID of the Load Balancer NAT Rule which this Network Interface which should be connected to. Changing this forces a new resource to be created.
  /// [networkInterfaceId] The ID of the Network Interface. Changing this forces a new resource to be created.
  NetworkInterfaceNatRuleAssociationState({
    pulumi.Output<String>? ipConfigurationName,
    pulumi.Output<String>? natRuleId,
    pulumi.Output<String>? networkInterfaceId,
  }) :
      ipConfigurationName = pulumi.Input.asOptionalInput<String>(ipConfigurationName),
      natRuleId = pulumi.Input.asOptionalInput<String>(natRuleId),
      networkInterfaceId = pulumi.Input.asOptionalInput<String>(networkInterfaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipConfigurationName': ?ipConfigurationName,
      'natRuleId': ?natRuleId,
      'networkInterfaceId': ?networkInterfaceId,
    };
  }

  factory NetworkInterfaceNatRuleAssociationState.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceNatRuleAssociationState(
      ipConfigurationName: map['ipConfigurationName'] == null ? null : pulumi.Output.create<String>(map['ipConfigurationName'] as String),
      natRuleId: map['natRuleId'] == null ? null : pulumi.Output.create<String>(map['natRuleId'] as String),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : pulumi.Output.create<String>(map['networkInterfaceId'] as String),
    );
  }
}

