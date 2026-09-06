// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of an add vCenter request.
class AddVCenterRequestProperties {
  /// The friendly name of the vCenter.
  final pulumi.Input<String?>? friendlyName;
  /// The IP address of the vCenter to be discovered.
  final pulumi.Input<String?>? ipAddress;
  /// The port number for discovery.
  final pulumi.Input<String?>? port;
  /// The process server Id from where the discovery is orchestrated.
  final pulumi.Input<String?>? processServerId;
  /// The account Id which has privileges to discover the vCenter.
  final pulumi.Input<String?>? runAsAccountId;

  /// Creates a new [AddVCenterRequestProperties].
  /// [friendlyName] The friendly name of the vCenter.
  /// [ipAddress] The IP address of the vCenter to be discovered.
  /// [port] The port number for discovery.
  /// [processServerId] The process server Id from where the discovery is orchestrated.
  /// [runAsAccountId] The account Id which has privileges to discover the vCenter.
  const AddVCenterRequestProperties({
    this.friendlyName,
    this.ipAddress,
    this.port,
    this.processServerId,
    this.runAsAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'friendlyName': ?friendlyName,
      'ipAddress': ?ipAddress,
      'port': ?port,
      'processServerId': ?processServerId,
      'runAsAccountId': ?runAsAccountId,
    };
  }

  factory AddVCenterRequestProperties.fromMap(Map<String, dynamic> map) {
    return AddVCenterRequestProperties(
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      processServerId: (() { final guardedValue = map['processServerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runAsAccountId: (() { final guardedValue = map['runAsAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
