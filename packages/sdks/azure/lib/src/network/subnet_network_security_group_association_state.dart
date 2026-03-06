// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SubnetNetworkSecurityGroupAssociation resources.
class SubnetNetworkSecurityGroupAssociationState {
  /// The ID of the Network Security Group which should be associated with the Subnet. Changing this forces a new resource to be created.
  final pulumi.Input<String>? networkSecurityGroupId;
  /// The ID of the Subnet. Changing this forces a new resource to be created.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [SubnetNetworkSecurityGroupAssociationState].
  /// [networkSecurityGroupId] The ID of the Network Security Group which should be associated with the Subnet. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the Subnet. Changing this forces a new resource to be created.
  const SubnetNetworkSecurityGroupAssociationState({
    this.networkSecurityGroupId,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkSecurityGroupId': ?networkSecurityGroupId,
      'subnetId': ?subnetId,
    };
  }

  factory SubnetNetworkSecurityGroupAssociationState.fromMap(Map<String, dynamic> map) {
    return SubnetNetworkSecurityGroupAssociationState(
      networkSecurityGroupId: (() { final guardedValue = map['networkSecurityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

