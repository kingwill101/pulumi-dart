// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClusterManagedPrivateEndpoint resources.
class ClusterManagedPrivateEndpointState {
  /// The name of the Kusto Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? clusterName;
  /// The group id in which the managed private endpoint is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? groupId;
  /// The name of the Managed Private Endpoints to create. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ARM resource ID of the resource for which the managed private endpoint is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? privateLinkResourceId;
  /// The region of the resource to which the managed private endpoint is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? privateLinkResourceRegion;
  /// The user request message.
  final pulumi.Input<String>? requestMessage;
  /// Specifies the Resource Group where the Kusto Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [ClusterManagedPrivateEndpointState].
  /// [clusterName] The name of the Kusto Cluster. Changing this forces a new resource to be created.
  /// [groupId] The group id in which the managed private endpoint is created. Changing this forces a new resource to be created.
  /// [name] The name of the Managed Private Endpoints to create. Changing this forces a new resource to be created.
  /// [privateLinkResourceId] The ARM resource ID of the resource for which the managed private endpoint is created. Changing this forces a new resource to be created.
  /// [privateLinkResourceRegion] The region of the resource to which the managed private endpoint is created. Changing this forces a new resource to be created.
  /// [requestMessage] The user request message.
  /// [resourceGroupName] Specifies the Resource Group where the Kusto Cluster should exist. Changing this forces a new resource to be created.
  ClusterManagedPrivateEndpointState({
    this.clusterName,
    this.groupId,
    this.name,
    this.privateLinkResourceId,
    this.privateLinkResourceRegion,
    this.requestMessage,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': ?clusterName,
      'groupId': ?groupId,
      'name': ?name,
      'privateLinkResourceId': ?privateLinkResourceId,
      'privateLinkResourceRegion': ?privateLinkResourceRegion,
      'requestMessage': ?requestMessage,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory ClusterManagedPrivateEndpointState.fromMap(Map<String, dynamic> map) {
    return ClusterManagedPrivateEndpointState(
      clusterName: map['clusterName'] == null ? null : (map['clusterName']! as String).input(),
      groupId: map['groupId'] == null ? null : (map['groupId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      privateLinkResourceId: map['privateLinkResourceId'] == null ? null : (map['privateLinkResourceId']! as String).input(),
      privateLinkResourceRegion: map['privateLinkResourceRegion'] == null ? null : (map['privateLinkResourceRegion']! as String).input(),
      requestMessage: map['requestMessage'] == null ? null : (map['requestMessage']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
    );
  }
}

