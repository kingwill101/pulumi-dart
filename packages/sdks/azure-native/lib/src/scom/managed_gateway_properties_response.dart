// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of a gateway resource.
class ManagedGatewayPropertiesResponse {
  /// ComputerName of the gateway to be monitored.
  final pulumi.Input<String?>? computerName;
  /// The connection status of the gateway resource.
  final pulumi.Input<String> connectionStatus;
  /// The domain name associated with the gateway to be monitored.
  final pulumi.Input<String?>? domainName;
  /// The health status of the gateway resource.
  final pulumi.Input<String> healthStatus;
  /// Install type of gateway resource.
  final pulumi.Input<String> installType;
  /// The management server endpoint to which the gateway is directed.
  final pulumi.Input<String> managementServerEndpoint;
  final pulumi.Input<String> provisioningState;
  /// ArmId of the gateway to be monitored.
  final pulumi.Input<String?>? resourceId;
  /// Location of the gateway to be monitored.
  final pulumi.Input<String?>? resourceLocation;
  /// The version of the gateway resource.
  final pulumi.Input<String> version;

  /// Creates a new [ManagedGatewayPropertiesResponse].
  /// [computerName] ComputerName of the gateway to be monitored.
  /// [connectionStatus] The connection status of the gateway resource.
  /// [domainName] The domain name associated with the gateway to be monitored.
  /// [healthStatus] The health status of the gateway resource.
  /// [installType] Install type of gateway resource.
  /// [managementServerEndpoint] The management server endpoint to which the gateway is directed.
  /// [provisioningState] Required.
  /// [resourceId] ArmId of the gateway to be monitored.
  /// [resourceLocation] Location of the gateway to be monitored.
  /// [version] The version of the gateway resource.
  const ManagedGatewayPropertiesResponse({
    this.computerName,
    required this.connectionStatus,
    this.domainName,
    required this.healthStatus,
    required this.installType,
    required this.managementServerEndpoint,
    required this.provisioningState,
    this.resourceId,
    this.resourceLocation,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computerName': ?computerName,
      'connectionStatus': connectionStatus,
      'domainName': ?domainName,
      'healthStatus': healthStatus,
      'installType': installType,
      'managementServerEndpoint': managementServerEndpoint,
      'provisioningState': provisioningState,
      'resourceId': ?resourceId,
      'resourceLocation': ?resourceLocation,
      'version': version,
    };
  }

  factory ManagedGatewayPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ManagedGatewayPropertiesResponse(
      computerName: (() { final guardedValue = map['computerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionStatus: pulumi.Input.fromValue(map['connectionStatus'] as String),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthStatus: pulumi.Input.fromValue(map['healthStatus'] as String),
      installType: pulumi.Input.fromValue(map['installType'] as String),
      managementServerEndpoint: pulumi.Input.fromValue(map['managementServerEndpoint'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceLocation: (() { final guardedValue = map['resourceLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
