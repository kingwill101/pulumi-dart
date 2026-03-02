// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_list_network_manager_deployment_status_args_doc}
/// Arguments for listNetworkManagerDeploymentStatus.
/// {@endtemplate}
/// {@macro pulumi_network_list_network_manager_deployment_status_args_doc}
class ListNetworkManagerDeploymentStatusArgs {
  /// List of deployment types.
  final pulumi.Input<List<String>>? deploymentTypes;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// List of locations.
  final pulumi.Input<List<String>>? regions;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Continuation token for pagination, capturing the next page size and offset, as well as the context of the query.
  final pulumi.Input<String>? skipToken;
  /// An optional query parameter which specifies the maximum number of records to be returned by the server.
  final pulumi.Input<int>? top;

  /// Creates a new [ListNetworkManagerDeploymentStatusArgs].
  /// [deploymentTypes] List of deployment types.
  /// [networkManagerName] The name of the network manager.
  /// [regions] List of locations.
  /// [resourceGroupName] The name of the resource group.
  /// [skipToken] Continuation token for pagination, capturing the next page size and offset, as well as the context of the query.
  /// [top] An optional query parameter which specifies the maximum number of records to be returned by the server.
  ListNetworkManagerDeploymentStatusArgs({
    this.deploymentTypes,
    required this.networkManagerName,
    this.regions,
    required this.resourceGroupName,
    this.skipToken,
    this.top,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentTypes': ?deploymentTypes,
      'networkManagerName': networkManagerName,
      'regions': ?regions,
      'resourceGroupName': resourceGroupName,
      'skipToken': ?skipToken,
      'top': ?top,
    };
  }

  factory ListNetworkManagerDeploymentStatusArgs.fromMap(Map<String, dynamic> map) {
    return ListNetworkManagerDeploymentStatusArgs(
      deploymentTypes: map['deploymentTypes'] == null ? null : ((map['deploymentTypes']! as List).cast<String>()).input(),
      networkManagerName: (map['networkManagerName'] as String).input(),
      regions: map['regions'] == null ? null : ((map['regions']! as List).cast<String>()).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      skipToken: map['skipToken'] == null ? null : (map['skipToken']! as String).input(),
      top: map['top'] == null ? null : (map['top']! as int).input(),
    );
  }
}

