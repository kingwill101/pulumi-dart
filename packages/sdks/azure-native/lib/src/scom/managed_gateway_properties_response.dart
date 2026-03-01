// ignore_for_file: unused_element, unnecessary_cast


/// The properties of a gateway resource.
class ManagedGatewayPropertiesResponse {
  /// ComputerName of the gateway to be monitored.
  final String? computerName;
  /// The connection status of the gateway resource.
  final String connectionStatus;
  /// The domain name associated with the gateway to be monitored.
  final String? domainName;
  /// The health status of the gateway resource.
  final String healthStatus;
  /// Install type of gateway resource.
  final String installType;
  /// The management server endpoint to which the gateway is directed.
  final String managementServerEndpoint;
  final String provisioningState;
  /// ArmId of the gateway to be monitored.
  final String? resourceId;
  /// Location of the gateway to be monitored.
  final String? resourceLocation;
  /// The version of the gateway resource.
  final String version;

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
      computerName: map['computerName'] == null ? null : map['computerName'] as String,
      connectionStatus: map['connectionStatus'] as String,
      domainName: map['domainName'] == null ? null : map['domainName'] as String,
      healthStatus: map['healthStatus'] as String,
      installType: map['installType'] as String,
      managementServerEndpoint: map['managementServerEndpoint'] as String,
      provisioningState: map['provisioningState'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
      resourceLocation: map['resourceLocation'] == null ? null : map['resourceLocation'] as String,
      version: map['version'] as String,
    );
  }
}

