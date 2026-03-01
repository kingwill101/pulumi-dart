// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_scvmm_get_cloud_args_doc}
/// Arguments for getCloud.
/// {@endtemplate}
/// {@macro pulumi_scvmm_get_cloud_args_doc}
class GetCloudArgs {
  /// Name of the Cloud.
  final pulumi.Input<String> cloudName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCloudArgs].
  /// [cloudName] Name of the Cloud.
  /// [resourceGroupName] The name of the resource group.
  GetCloudArgs({
    required pulumi.Output<String> cloudName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      cloudName = pulumi.Input.asInput<String>(cloudName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudName': cloudName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCloudArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudArgs(
      cloudName: pulumi.Output.create<String>(map['cloudName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

