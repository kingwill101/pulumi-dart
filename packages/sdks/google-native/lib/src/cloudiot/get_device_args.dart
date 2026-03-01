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
    required pulumi.Output<String> deviceId,
    pulumi.Output<String>? fieldMask,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> registryId,
  }) :
      deviceId = pulumi.Input.asInput<String>(deviceId),
      fieldMask = pulumi.Input.asOptionalInput<String>(fieldMask),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      registryId = pulumi.Input.asInput<String>(registryId);

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
      deviceId: pulumi.Output.create<String>(map['deviceId'] as String),
      fieldMask: map['fieldMask'] == null ? null : pulumi.Output.create<String>(map['fieldMask'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      registryId: pulumi.Output.create<String>(map['registryId'] as String),
    );
  }
}

