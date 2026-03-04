// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_error_response.dart';

/// vCenter properties.
class VCenterPropertiesResponse {
  /// The VCenter discovery status.
  final pulumi.Input<String>? discoveryStatus;

  /// The ARM resource name of the fabric containing this VCenter.
  final pulumi.Input<String>? fabricArmResourceName;

  /// Friendly name of the vCenter.
  final pulumi.Input<String>? friendlyName;

  /// The health errors for this VCenter.
  final pulumi.Input<List<HealthErrorResponse>>? healthErrors;

  /// The infrastructure Id of vCenter.
  final pulumi.Input<String>? infrastructureId;

  /// VCenter internal ID.
  final pulumi.Input<String>? internalId;

  /// The IP address of the vCenter.
  final pulumi.Input<String>? ipAddress;

  /// The time when the last heartbeat was received by vCenter.
  final pulumi.Input<String>? lastHeartbeat;

  /// The port number for discovery.
  final pulumi.Input<String>? port;

  /// The process server Id.
  final pulumi.Input<String>? processServerId;

  /// The account Id which has privileges to discover the vCenter.
  final pulumi.Input<String>? runAsAccountId;

  /// Creates a new [VCenterPropertiesResponse].
  /// [discoveryStatus] The VCenter discovery status.
  /// [fabricArmResourceName] The ARM resource name of the fabric containing this VCenter.
  /// [friendlyName] Friendly name of the vCenter.
  /// [healthErrors] The health errors for this VCenter.
  /// [infrastructureId] The infrastructure Id of vCenter.
  /// [internalId] VCenter internal ID.
  /// [ipAddress] The IP address of the vCenter.
  /// [lastHeartbeat] The time when the last heartbeat was received by vCenter.
  /// [port] The port number for discovery.
  /// [processServerId] The process server Id.
  /// [runAsAccountId] The account Id which has privileges to discover the vCenter.
  VCenterPropertiesResponse({
    this.discoveryStatus,
    this.fabricArmResourceName,
    this.friendlyName,
    this.healthErrors,
    this.infrastructureId,
    this.internalId,
    this.ipAddress,
    this.lastHeartbeat,
    this.port,
    this.processServerId,
    this.runAsAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discoveryStatus': ?discoveryStatus,
      'fabricArmResourceName': ?fabricArmResourceName,
      'friendlyName': ?friendlyName,
      'healthErrors':
          ?pulumi.Input.mapOptionalInputValue<
            List<HealthErrorResponse>,
            List<Map<String, dynamic>>
          >(
            healthErrors,
            (value) =>
                pulumi.Input.encodeList<
                  HealthErrorResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'infrastructureId': ?infrastructureId,
      'internalId': ?internalId,
      'ipAddress': ?ipAddress,
      'lastHeartbeat': ?lastHeartbeat,
      'port': ?port,
      'processServerId': ?processServerId,
      'runAsAccountId': ?runAsAccountId,
    };
  }

  factory VCenterPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VCenterPropertiesResponse(
      discoveryStatus: (() {
        final guardedValue = map['discoveryStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fabricArmResourceName: (() {
        final guardedValue = map['fabricArmResourceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      friendlyName: (() {
        final guardedValue = map['friendlyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      healthErrors: (() {
        final guardedValue = map['healthErrors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<HealthErrorResponse>(
            guardedValue,
            (value) => HealthErrorResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      infrastructureId: (() {
        final guardedValue = map['infrastructureId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      internalId: (() {
        final guardedValue = map['internalId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipAddress: (() {
        final guardedValue = map['ipAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastHeartbeat: (() {
        final guardedValue = map['lastHeartbeat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      processServerId: (() {
        final guardedValue = map['processServerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      runAsAccountId: (() {
        final guardedValue = map['runAsAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
