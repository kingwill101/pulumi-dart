// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databoxedge_get_device_get_device_args_doc}
/// Arguments for getDevice.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_get_device_get_device_args_doc}
class GetDeviceArgs {
  /// The name which should be used for this Databox Edge Device. Changing this forces a new Databox Edge Device to be created.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Databox Edge Device should exist. Changing this forces a new Databox Edge Device to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDeviceArgs].
  /// [name] The name which should be used for this Databox Edge Device. Changing this forces a new Databox Edge Device to be created.
  /// [resourceGroupName] The name of the Resource Group where the Databox Edge Device should exist. Changing this forces a new Databox Edge Device to be created.
  const GetDeviceArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDeviceArgs.fromMap(Map<String, dynamic> map) {
    return GetDeviceArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

