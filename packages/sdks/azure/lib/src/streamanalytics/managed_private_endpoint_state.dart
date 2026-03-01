// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ManagedPrivateEndpoint resources.
class ManagedPrivateEndpointState {
  /// The name which should be used for this Stream Analytics Managed Private Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Stream Analytics Managed Private Endpoint should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The name of the Stream Analytics Cluster where the Managed Private Endpoint should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? streamAnalyticsClusterName;
  /// Specifies the sub resource name which the Stream Analytics Private Endpoint is able to connect to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? subresourceName;
  /// The ID of the Private Link Enabled Remote Resource which this Stream Analytics Private endpoint should be connected to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? targetResourceId;

  /// Creates a new [ManagedPrivateEndpointState].
  /// [name] The name which should be used for this Stream Analytics Managed Private Endpoint. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Stream Analytics Managed Private Endpoint should exist. Changing this forces a new resource to be created.
  /// [streamAnalyticsClusterName] The name of the Stream Analytics Cluster where the Managed Private Endpoint should be created. Changing this forces a new resource to be created.
  /// [subresourceName] Specifies the sub resource name which the Stream Analytics Private Endpoint is able to connect to. Changing this forces a new resource to be created.
  /// [targetResourceId] The ID of the Private Link Enabled Remote Resource which this Stream Analytics Private endpoint should be connected to. Changing this forces a new resource to be created.
  ManagedPrivateEndpointState({
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? streamAnalyticsClusterName,
    pulumi.Output<String>? subresourceName,
    pulumi.Output<String>? targetResourceId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      streamAnalyticsClusterName = pulumi.Input.asOptionalInput<String>(streamAnalyticsClusterName),
      subresourceName = pulumi.Input.asOptionalInput<String>(subresourceName),
      targetResourceId = pulumi.Input.asOptionalInput<String>(targetResourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'streamAnalyticsClusterName': ?streamAnalyticsClusterName,
      'subresourceName': ?subresourceName,
      'targetResourceId': ?targetResourceId,
    };
  }

  factory ManagedPrivateEndpointState.fromMap(Map<String, dynamic> map) {
    return ManagedPrivateEndpointState(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      streamAnalyticsClusterName: map['streamAnalyticsClusterName'] == null ? null : pulumi.Output.create<String>(map['streamAnalyticsClusterName'] as String),
      subresourceName: map['subresourceName'] == null ? null : pulumi.Output.create<String>(map['subresourceName'] as String),
      targetResourceId: map['targetResourceId'] == null ? null : pulumi.Output.create<String>(map['targetResourceId'] as String),
    );
  }
}

