// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkInterfaceSecurityGroupAssociation resources.
class NetworkInterfaceSecurityGroupAssociationState {
  /// The ID of the Network Interface. Changing this forces a new resource to be created.
  final pulumi.Input<String>? networkInterfaceId;
  /// The ID of the Network Security Group which should be attached to the Network Interface. Changing this forces a new resource to be created.
  final pulumi.Input<String>? networkSecurityGroupId;

  /// Creates a new [NetworkInterfaceSecurityGroupAssociationState].
  /// [networkInterfaceId] The ID of the Network Interface. Changing this forces a new resource to be created.
  /// [networkSecurityGroupId] The ID of the Network Security Group which should be attached to the Network Interface. Changing this forces a new resource to be created.
  NetworkInterfaceSecurityGroupAssociationState({
    this.networkInterfaceId,
    this.networkSecurityGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkInterfaceId': ?networkInterfaceId,
      'networkSecurityGroupId': ?networkSecurityGroupId,
    };
  }

  factory NetworkInterfaceSecurityGroupAssociationState.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceSecurityGroupAssociationState(
      networkInterfaceId: map['networkInterfaceId'] == null ? null : (map['networkInterfaceId'] as String).input(),
      networkSecurityGroupId: map['networkSecurityGroupId'] == null ? null : (map['networkSecurityGroupId'] as String).input(),
    );
  }
}

