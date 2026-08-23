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
  const GetCloudArgs({
    required this.cloudName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudName': cloudName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCloudArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudArgs(
      cloudName: pulumi.Input.fromValue(map['cloudName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
