// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'android_device.dart';

/// {@template pulumi_testing_v1_device_session_args_doc}
/// The set of arguments for DeviceSession.
/// {@endtemplate}
/// {@macro pulumi_testing_v1_device_session_args_doc}
class DeviceSessionArgs {
  /// The requested device
  final pulumi.Input<AndroidDevice> androidDevice;
  /// Optional. If the device is still in use at this time, any connections will be ended and the SessionState will transition from ACTIVE to FINISHED.
  final pulumi.Input<String>? expireTime;
  /// Optional. Name of the DeviceSession, e.g. "projects/{project_id}/deviceSessions/{session_id}"
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Optional. The amount of time that a device will be initially allocated for. This can eventually be extended with the UpdateDeviceSession RPC. Default: 30 minutes.
  final pulumi.Input<String>? ttl;

  /// Creates a new [DeviceSessionArgs].
  /// [androidDevice] The requested device
  /// [expireTime] Optional. If the device is still in use at this time, any connections will be ended and the SessionState will transition from ACTIVE to FINISHED.
  /// [name] Optional. Name of the DeviceSession, e.g. "projects/{project_id}/deviceSessions/{session_id}"
  /// [project] Optional.
  /// [ttl] Optional. The amount of time that a device will be initially allocated for. This can eventually be extended with the UpdateDeviceSession RPC. Default: 30 minutes.
  DeviceSessionArgs({
    required this.androidDevice,
    this.expireTime,
    this.name,
    this.project,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'androidDevice': pulumi.Input.mapInputValue<AndroidDevice, Map<String, dynamic>>(androidDevice, (value) => value.toMap()),
      'expireTime': ?expireTime,
      'name': ?name,
      'project': ?project,
      'ttl': ?ttl,
    };
  }

  factory DeviceSessionArgs.fromMap(Map<String, dynamic> map) {
    return DeviceSessionArgs(
      androidDevice: (AndroidDevice.fromMap((map['androidDevice'] as Map).cast<String, dynamic>())).input(),
      expireTime: map['expireTime'] == null ? null : (map['expireTime'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      ttl: map['ttl'] == null ? null : (map['ttl'] as String).input(),
    );
  }
}

