// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkInterfaceBackendAddressPoolAssociation resources.
class NetworkInterfaceBackendAddressPoolAssociationState {
  /// The ID of the Load Balancer Backend Address Pool which this Network Interface should be connected to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? backendAddressPoolId;

  /// The Name of the IP Configuration within the Network Interface which should be connected to the Backend Address Pool. Changing this forces a new resource to be created.
  final pulumi.Input<String>? ipConfigurationName;

  /// The ID of the Network Interface. Changing this forces a new resource to be created.
  final pulumi.Input<String>? networkInterfaceId;

  /// Creates a new [NetworkInterfaceBackendAddressPoolAssociationState].
  /// [backendAddressPoolId] The ID of the Load Balancer Backend Address Pool which this Network Interface should be connected to. Changing this forces a new resource to be created.
  /// [ipConfigurationName] The Name of the IP Configuration within the Network Interface which should be connected to the Backend Address Pool. Changing this forces a new resource to be created.
  /// [networkInterfaceId] The ID of the Network Interface. Changing this forces a new resource to be created.
  NetworkInterfaceBackendAddressPoolAssociationState({
    this.backendAddressPoolId,
    this.ipConfigurationName,
    this.networkInterfaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPoolId': ?backendAddressPoolId,
      'ipConfigurationName': ?ipConfigurationName,
      'networkInterfaceId': ?networkInterfaceId,
    };
  }

  factory NetworkInterfaceBackendAddressPoolAssociationState.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkInterfaceBackendAddressPoolAssociationState(
      backendAddressPoolId: (() {
        final guardedValue = map['backendAddressPoolId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipConfigurationName: (() {
        final guardedValue = map['ipConfigurationName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkInterfaceId: (() {
        final guardedValue = map['networkInterfaceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
