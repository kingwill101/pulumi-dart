// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkInterfaceApplicationSecurityGroupAssociation resources.
class NetworkInterfaceApplicationSecurityGroupAssociationState {
  /// The ID of the Application Security Group which this Network Interface which should be connected to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? applicationSecurityGroupId;
  /// The ID of the Network Interface. Changing this forces a new resource to be created.
  final pulumi.Input<String>? networkInterfaceId;

  /// Creates a new [NetworkInterfaceApplicationSecurityGroupAssociationState].
  /// [applicationSecurityGroupId] The ID of the Application Security Group which this Network Interface which should be connected to. Changing this forces a new resource to be created.
  /// [networkInterfaceId] The ID of the Network Interface. Changing this forces a new resource to be created.
  const NetworkInterfaceApplicationSecurityGroupAssociationState({
    this.applicationSecurityGroupId,
    this.networkInterfaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationSecurityGroupId': ?applicationSecurityGroupId,
      'networkInterfaceId': ?networkInterfaceId,
    };
  }

  factory NetworkInterfaceApplicationSecurityGroupAssociationState.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceApplicationSecurityGroupAssociationState(
      applicationSecurityGroupId: (() { final guardedValue = map['applicationSecurityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaceId: (() { final guardedValue = map['networkInterfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
