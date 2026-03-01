// ignore_for_file: unused_element, unnecessary_cast


/// Represents details of a single instance in a server farm.
class ServerFarmInstanceResponse {
  /// The instance name.
  final String? instanceName;
  /// The instance IP address.
  final String? ipAddress;
  /// The instance status.
  final String? status;

  /// Creates a new [ServerFarmInstanceResponse].
  /// [instanceName] The instance name.
  /// [ipAddress] The instance IP address.
  /// [status] The instance status.
  ServerFarmInstanceResponse({
    this.instanceName,
    this.ipAddress,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceName': ?instanceName,
      'ipAddress': ?ipAddress,
      'status': ?status,
    };
  }

  factory ServerFarmInstanceResponse.fromMap(Map<String, dynamic> map) {
    return ServerFarmInstanceResponse(
      instanceName: map['instanceName'] == null ? null : map['instanceName'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

