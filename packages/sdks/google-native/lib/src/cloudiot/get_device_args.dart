// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudiot_v1_get_device_args_doc}
/// Arguments for getDevice.
/// {@endtemplate}
/// {@macro pulumi_cloudiot_v1_get_device_args_doc}
class GetDeviceArgs {
  final pulumi.Input<String> deviceId;
  final pulumi.Input<String>? fieldMask;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> registryId;

  /// Creates a new [GetDeviceArgs].
  /// [deviceId] Required.
  /// [fieldMask] Optional.
  /// [location] Required.
  /// [project] Optional.
  /// [registryId] Required.
  GetDeviceArgs({
    required this.deviceId,
    this.fieldMask,
    required this.location,
    this.project,
    required this.registryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceId': deviceId,
      'fieldMask': ?fieldMask,
      'location': location,
      'project': ?project,
      'registryId': registryId,
    };
  }

  factory GetDeviceArgs.fromMap(Map<String, dynamic> map) {
    return GetDeviceArgs(
      deviceId: pulumi.Input.fromValue(map['deviceId'] as String),
      fieldMask: (() {
        final guardedValue = map['fieldMask'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      registryId: pulumi.Input.fromValue(map['registryId'] as String),
    );
  }
}
