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

  factory ListNetworkManagerDeploymentStatusArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListNetworkManagerDeploymentStatusArgs(
      deploymentTypes: (() {
        final guardedValue = map['deploymentTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      networkManagerName: pulumi.Input.fromValue(
        map['networkManagerName'] as String,
      ),
      regions: (() {
        final guardedValue = map['regions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      skipToken: (() {
        final guardedValue = map['skipToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      top: (() {
        final guardedValue = map['top'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
