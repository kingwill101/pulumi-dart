// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents details of a single instance in a server farm.
class ServerFarmInstanceResponse {
  /// The instance name.
  final pulumi.Input<String>? instanceName;

  /// The instance IP address.
  final pulumi.Input<String>? ipAddress;

  /// The instance status.
  final pulumi.Input<String>? status;

  /// Creates a new [ServerFarmInstanceResponse].
  /// [instanceName] The instance name.
  /// [ipAddress] The instance IP address.
  /// [status] The instance status.
  ServerFarmInstanceResponse({this.instanceName, this.ipAddress, this.status});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceName': ?instanceName,
      'ipAddress': ?ipAddress,
      'status': ?status,
    };
  }

  factory ServerFarmInstanceResponse.fromMap(Map<String, dynamic> map) {
    return ServerFarmInstanceResponse(
      instanceName: (() {
        final guardedValue = map['instanceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipAddress: (() {
        final guardedValue = map['ipAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
