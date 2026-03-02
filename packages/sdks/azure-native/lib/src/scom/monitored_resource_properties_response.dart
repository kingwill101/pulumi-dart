// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of a monitored resource.
class MonitoredResourcePropertiesResponse {
  /// The version of the monitored resource agent version.
  final pulumi.Input<String> agentVersion;
  /// ComputerName of the monitored resource.
  final pulumi.Input<String>? computerName;
  /// The connection status of the monitored resource.
  final pulumi.Input<String> connectionStatus;
  /// The domain name associated with the monitored resource.
  final pulumi.Input<String>? domainName;
  /// The health status of the monitored resource.
  final pulumi.Input<String> healthStatus;
  /// Install type of monitored resource.
  final pulumi.Input<String> installType;
  /// The management server endpoint to which the monitored resource is directed.
  final pulumi.Input<String> managementServerEndpoint;
  final pulumi.Input<String> provisioningState;
  /// ArmId of the monitored resource.
  final pulumi.Input<String>? resourceId;
  /// Location of the monitored resource.
  final pulumi.Input<String>? resourceLocation;

  /// Creates a new [MonitoredResourcePropertiesResponse].
  /// [agentVersion] The version of the monitored resource agent version.
  /// [computerName] ComputerName of the monitored resource.
  /// [connectionStatus] The connection status of the monitored resource.
  /// [domainName] The domain name associated with the monitored resource.
  /// [healthStatus] The health status of the monitored resource.
  /// [installType] Install type of monitored resource.
  /// [managementServerEndpoint] The management server endpoint to which the monitored resource is directed.
  /// [provisioningState] Required.
  /// [resourceId] ArmId of the monitored resource.
  /// [resourceLocation] Location of the monitored resource.
  MonitoredResourcePropertiesResponse({
    required this.agentVersion,
    this.computerName,
    required this.connectionStatus,
    this.domainName,
    required this.healthStatus,
    required this.installType,
    required this.managementServerEndpoint,
    required this.provisioningState,
    this.resourceId,
    this.resourceLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentVersion': agentVersion,
      'computerName': ?computerName,
      'connectionStatus': connectionStatus,
      'domainName': ?domainName,
      'healthStatus': healthStatus,
      'installType': installType,
      'managementServerEndpoint': managementServerEndpoint,
      'provisioningState': provisioningState,
      'resourceId': ?resourceId,
      'resourceLocation': ?resourceLocation,
    };
  }

  factory MonitoredResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MonitoredResourcePropertiesResponse(
      agentVersion: (map['agentVersion'] as String).input(),
      computerName: map['computerName'] == null ? null : (map['computerName'] as String).input(),
      connectionStatus: (map['connectionStatus'] as String).input(),
      domainName: map['domainName'] == null ? null : (map['domainName'] as String).input(),
      healthStatus: (map['healthStatus'] as String).input(),
      installType: (map['installType'] as String).input(),
      managementServerEndpoint: (map['managementServerEndpoint'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
      resourceLocation: map['resourceLocation'] == null ? null : (map['resourceLocation'] as String).input(),
    );
  }
}

