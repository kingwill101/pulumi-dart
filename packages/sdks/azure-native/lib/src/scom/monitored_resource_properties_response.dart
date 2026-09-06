// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of a monitored resource.
class MonitoredResourcePropertiesResponse {
  /// The version of the monitored resource agent version.
  final pulumi.Input<String> agentVersion;
  /// ComputerName of the monitored resource.
  final pulumi.Input<String?>? computerName;
  /// The connection status of the monitored resource.
  final pulumi.Input<String> connectionStatus;
  /// The domain name associated with the monitored resource.
  final pulumi.Input<String?>? domainName;
  /// The health status of the monitored resource.
  final pulumi.Input<String> healthStatus;
  /// Install type of monitored resource.
  final pulumi.Input<String> installType;
  /// The management server endpoint to which the monitored resource is directed.
  final pulumi.Input<String> managementServerEndpoint;
  final pulumi.Input<String> provisioningState;
  /// ArmId of the monitored resource.
  final pulumi.Input<String?>? resourceId;
  /// Location of the monitored resource.
  final pulumi.Input<String?>? resourceLocation;

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
  const MonitoredResourcePropertiesResponse({
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
      agentVersion: pulumi.Input.fromValue(map['agentVersion'] as String),
      computerName: (() { final guardedValue = map['computerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionStatus: pulumi.Input.fromValue(map['connectionStatus'] as String),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthStatus: pulumi.Input.fromValue(map['healthStatus'] as String),
      installType: pulumi.Input.fromValue(map['installType'] as String),
      managementServerEndpoint: pulumi.Input.fromValue(map['managementServerEndpoint'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceLocation: (() { final guardedValue = map['resourceLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
