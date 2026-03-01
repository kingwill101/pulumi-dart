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
  NetworkInterfaceApplicationSecurityGroupAssociationState({
    pulumi.Output<String>? applicationSecurityGroupId,
    pulumi.Output<String>? networkInterfaceId,
  }) :
      applicationSecurityGroupId = pulumi.Input.asOptionalInput<String>(applicationSecurityGroupId),
      networkInterfaceId = pulumi.Input.asOptionalInput<String>(networkInterfaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationSecurityGroupId': ?applicationSecurityGroupId,
      'networkInterfaceId': ?networkInterfaceId,
    };
  }

  factory NetworkInterfaceApplicationSecurityGroupAssociationState.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceApplicationSecurityGroupAssociationState(
      applicationSecurityGroupId: map['applicationSecurityGroupId'] == null ? null : pulumi.Output.create<String>(map['applicationSecurityGroupId'] as String),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : pulumi.Output.create<String>(map['networkInterfaceId'] as String),
    );
  }
}

