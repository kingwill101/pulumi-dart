// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_windowsiot_get_service_args_doc}
/// Arguments for getService.
/// {@endtemplate}
/// {@macro pulumi_windowsiot_get_service_args_doc}
class GetServiceArgs {
  /// The name of the Windows IoT Device Service.
  final pulumi.Input<String> deviceName;
  /// The name of the resource group that contains the Windows IoT Device Service.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetServiceArgs].
  /// [deviceName] The name of the Windows IoT Device Service.
  /// [resourceGroupName] The name of the resource group that contains the Windows IoT Device Service.
  GetServiceArgs({
    required pulumi.Output<String> deviceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      deviceName = pulumi.Input.asInput<String>(deviceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceArgs(
      deviceName: pulumi.Output.create<String>(map['deviceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

