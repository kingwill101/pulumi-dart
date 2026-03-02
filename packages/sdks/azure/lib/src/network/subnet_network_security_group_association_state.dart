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
  SubnetNetworkSecurityGroupAssociationState({
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
      networkSecurityGroupId: map['networkSecurityGroupId'] == null ? null : (map['networkSecurityGroupId'] as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId'] as String).input(),
    );
  }
}

