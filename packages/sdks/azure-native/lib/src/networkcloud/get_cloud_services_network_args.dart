// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkcloud_get_cloud_services_network_args_doc}
/// Arguments for getCloudServicesNetwork.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_get_cloud_services_network_args_doc}
class GetCloudServicesNetworkArgs {
  /// The name of the cloud services network.
  final pulumi.Input<String> cloudServicesNetworkName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCloudServicesNetworkArgs].
  /// [cloudServicesNetworkName] The name of the cloud services network.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCloudServicesNetworkArgs({
    required this.cloudServicesNetworkName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudServicesNetworkName': cloudServicesNetworkName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCloudServicesNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudServicesNetworkArgs(
      cloudServicesNetworkName: pulumi.Input.fromValue(map['cloudServicesNetworkName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

