// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_cluster_managed_private_endpoint_cluster_managed_private_endpoint_args_doc}
/// The set of arguments for ClusterManagedPrivateEndpoint.
/// {@endtemplate}
/// {@macro pulumi_kusto_cluster_managed_private_endpoint_cluster_managed_private_endpoint_args_doc}
class ClusterManagedPrivateEndpointArgs {
  /// The name of the Kusto Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String> clusterName;
  /// The group id in which the managed private endpoint is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> groupId;
  /// The name of the Managed Private Endpoints to create. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ARM resource ID of the resource for which the managed private endpoint is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> privateLinkResourceId;
  /// The region of the resource to which the managed private endpoint is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? privateLinkResourceRegion;
  /// The user request message.
  final pulumi.Input<String>? requestMessage;
  /// Specifies the Resource Group where the Kusto Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ClusterManagedPrivateEndpointArgs].
  /// [clusterName] The name of the Kusto Cluster. Changing this forces a new resource to be created.
  /// [groupId] The group id in which the managed private endpoint is created. Changing this forces a new resource to be created.
  /// [name] The name of the Managed Private Endpoints to create. Changing this forces a new resource to be created.
  /// [privateLinkResourceId] The ARM resource ID of the resource for which the managed private endpoint is created. Changing this forces a new resource to be created.
  /// [privateLinkResourceRegion] The region of the resource to which the managed private endpoint is created. Changing this forces a new resource to be created.
  /// [requestMessage] The user request message.
  /// [resourceGroupName] Specifies the Resource Group where the Kusto Cluster should exist. Changing this forces a new resource to be created.
  ClusterManagedPrivateEndpointArgs({
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> groupId,
    pulumi.Output<String>? name,
    required pulumi.Output<String> privateLinkResourceId,
    pulumi.Output<String>? privateLinkResourceRegion,
    pulumi.Output<String>? requestMessage,
    required pulumi.Output<String> resourceGroupName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      groupId = pulumi.Input.asInput<String>(groupId),
      name = pulumi.Input.asOptionalInput<String>(name),
      privateLinkResourceId = pulumi.Input.asInput<String>(privateLinkResourceId),
      privateLinkResourceRegion = pulumi.Input.asOptionalInput<String>(privateLinkResourceRegion),
      requestMessage = pulumi.Input.asOptionalInput<String>(requestMessage),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'groupId': groupId,
      'name': ?name,
      'privateLinkResourceId': privateLinkResourceId,
      'privateLinkResourceRegion': ?privateLinkResourceRegion,
      'requestMessage': ?requestMessage,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ClusterManagedPrivateEndpointArgs.fromMap(Map<String, dynamic> map) {
    return ClusterManagedPrivateEndpointArgs(
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      groupId: pulumi.Output.create<String>(map['groupId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      privateLinkResourceId: pulumi.Output.create<String>(map['privateLinkResourceId'] as String),
      privateLinkResourceRegion: map['privateLinkResourceRegion'] == null ? null : pulumi.Output.create<String>(map['privateLinkResourceRegion'] as String),
      requestMessage: map['requestMessage'] == null ? null : pulumi.Output.create<String>(map['requestMessage'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

