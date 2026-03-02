// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of an add vCenter request.
class AddVCenterRequestProperties {
  /// The friendly name of the vCenter.
  final pulumi.Input<String>? friendlyName;
  /// The IP address of the vCenter to be discovered.
  final pulumi.Input<String>? ipAddress;
  /// The port number for discovery.
  final pulumi.Input<String>? port;
  /// The process server Id from where the discovery is orchestrated.
  final pulumi.Input<String>? processServerId;
  /// The account Id which has privileges to discover the vCenter.
  final pulumi.Input<String>? runAsAccountId;

  /// Creates a new [AddVCenterRequestProperties].
  /// [friendlyName] The friendly name of the vCenter.
  /// [ipAddress] The IP address of the vCenter to be discovered.
  /// [port] The port number for discovery.
  /// [processServerId] The process server Id from where the discovery is orchestrated.
  /// [runAsAccountId] The account Id which has privileges to discover the vCenter.
  AddVCenterRequestProperties({
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
      friendlyName: map['friendlyName'] == null ? null : (map['friendlyName'] as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as String).input(),
      processServerId: map['processServerId'] == null ? null : (map['processServerId'] as String).input(),
      runAsAccountId: map['runAsAccountId'] == null ? null : (map['runAsAccountId'] as String).input(),
    );
  }
}

