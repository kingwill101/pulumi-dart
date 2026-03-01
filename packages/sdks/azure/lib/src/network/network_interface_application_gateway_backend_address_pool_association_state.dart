// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkInterfaceApplicationGatewayBackendAddressPoolAssociation resources.
class NetworkInterfaceApplicationGatewayBackendAddressPoolAssociationState {
  /// The ID of the Application Gateway's Backend Address Pool which this Network Interface which should be connected to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? backendAddressPoolId;
  /// The Name of the IP Configuration within the Network Interface which should be connected to the Backend Address Pool. Changing this forces a new resource to be created.
  final pulumi.Input<String>? ipConfigurationName;
  /// The ID of the Network Interface. Changing this forces a new resource to be created.
  final pulumi.Input<String>? networkInterfaceId;

  /// Creates a new [NetworkInterfaceApplicationGatewayBackendAddressPoolAssociationState].
  /// [backendAddressPoolId] The ID of the Application Gateway's Backend Address Pool which this Network Interface which should be connected to. Changing this forces a new resource to be created.
  /// [ipConfigurationName] The Name of the IP Configuration within the Network Interface which should be connected to the Backend Address Pool. Changing this forces a new resource to be created.
  /// [networkInterfaceId] The ID of the Network Interface. Changing this forces a new resource to be created.
  NetworkInterfaceApplicationGatewayBackendAddressPoolAssociationState({
    pulumi.Output<String>? backendAddressPoolId,
    pulumi.Output<String>? ipConfigurationName,
    pulumi.Output<String>? networkInterfaceId,
  }) :
      backendAddressPoolId = pulumi.Input.asOptionalInput<String>(backendAddressPoolId),
      ipConfigurationName = pulumi.Input.asOptionalInput<String>(ipConfigurationName),
      networkInterfaceId = pulumi.Input.asOptionalInput<String>(networkInterfaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPoolId': ?backendAddressPoolId,
      'ipConfigurationName': ?ipConfigurationName,
      'networkInterfaceId': ?networkInterfaceId,
    };
  }

  factory NetworkInterfaceApplicationGatewayBackendAddressPoolAssociationState.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceApplicationGatewayBackendAddressPoolAssociationState(
      backendAddressPoolId: map['backendAddressPoolId'] == null ? null : pulumi.Output.create<String>(map['backendAddressPoolId'] as String),
      ipConfigurationName: map['ipConfigurationName'] == null ? null : pulumi.Output.create<String>(map['ipConfigurationName'] as String),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : pulumi.Output.create<String>(map['networkInterfaceId'] as String),
    );
  }
}

