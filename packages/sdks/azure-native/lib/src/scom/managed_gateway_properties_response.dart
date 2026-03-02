// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of a gateway resource.
class ManagedGatewayPropertiesResponse {
  /// ComputerName of the gateway to be monitored.
  final pulumi.Input<String>? computerName;
  /// The connection status of the gateway resource.
  final pulumi.Input<String> connectionStatus;
  /// The domain name associated with the gateway to be monitored.
  final pulumi.Input<String>? domainName;
  /// The health status of the gateway resource.
  final pulumi.Input<String> healthStatus;
  /// Install type of gateway resource.
  final pulumi.Input<String> installType;
  /// The management server endpoint to which the gateway is directed.
  final pulumi.Input<String> managementServerEndpoint;
  final pulumi.Input<String> provisioningState;
  /// ArmId of the gateway to be monitored.
  final pulumi.Input<String>? resourceId;
  /// Location of the gateway to be monitored.
  final pulumi.Input<String>? resourceLocation;
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
  ManagedGatewayPropertiesResponse({
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
      computerName: map['computerName'] == null ? null : (map['computerName'] as String).input(),
      connectionStatus: (map['connectionStatus'] as String).input(),
      domainName: map['domainName'] == null ? null : (map['domainName'] as String).input(),
      healthStatus: (map['healthStatus'] as String).input(),
      installType: (map['installType'] as String).input(),
      managementServerEndpoint: (map['managementServerEndpoint'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
      resourceLocation: map['resourceLocation'] == null ? null : (map['resourceLocation'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

