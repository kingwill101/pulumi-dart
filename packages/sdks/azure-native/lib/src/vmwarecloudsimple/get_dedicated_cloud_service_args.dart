// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwarecloudsimple_get_dedicated_cloud_service_args_doc}
/// Arguments for getDedicatedCloudService.
/// {@endtemplate}
/// {@macro pulumi_vmwarecloudsimple_get_dedicated_cloud_service_args_doc}
class GetDedicatedCloudServiceArgs {
  /// dedicated cloud Service name
  final pulumi.Input<String> dedicatedCloudServiceName;
  /// The name of the resource group
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDedicatedCloudServiceArgs].
  /// [dedicatedCloudServiceName] dedicated cloud Service name
  /// [resourceGroupName] The name of the resource group
  GetDedicatedCloudServiceArgs({
    required pulumi.Output<String> dedicatedCloudServiceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      dedicatedCloudServiceName = pulumi.Input.asInput<String>(dedicatedCloudServiceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedCloudServiceName': dedicatedCloudServiceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDedicatedCloudServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetDedicatedCloudServiceArgs(
      dedicatedCloudServiceName: pulumi.Output.create<String>(map['dedicatedCloudServiceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

