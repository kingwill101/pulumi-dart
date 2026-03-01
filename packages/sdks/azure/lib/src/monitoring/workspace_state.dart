// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Workspace resources.
class WorkspaceState {
  /// The ID of the managed default Data Collection Endpoint created with the Azure Monitor Workspace.
  final pulumi.Input<String>? defaultDataCollectionEndpointId;
  /// The ID of the managed default Data Collection Rule created with the Azure Monitor Workspace.
  final pulumi.Input<String>? defaultDataCollectionRuleId;
  /// Specifies the Azure Region where the Azure Monitor Workspace should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name which should be used for this Azure Monitor Workspace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Is public network access enabled? Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The query endpoint for the Azure Monitor Workspace.
  final pulumi.Input<String>? queryEndpoint;
  /// Specifies the name of the Resource Group where the Azure Monitor Workspace should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Azure Monitor Workspace.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [WorkspaceState].
  /// [defaultDataCollectionEndpointId] The ID of the managed default Data Collection Endpoint created with the Azure Monitor Workspace.
  /// [defaultDataCollectionRuleId] The ID of the managed default Data Collection Rule created with the Azure Monitor Workspace.
  /// [location] Specifies the Azure Region where the Azure Monitor Workspace should exist. Changing this forces a new resource to be created.
  /// [name] Specifies the name which should be used for this Azure Monitor Workspace. Changing this forces a new resource to be created.
  /// [publicNetworkAccessEnabled] Is public network access enabled? Defaults to `true`.
  /// [queryEndpoint] The query endpoint for the Azure Monitor Workspace.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Azure Monitor Workspace should exist. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Azure Monitor Workspace.
  WorkspaceState({
    pulumi.Output<String>? defaultDataCollectionEndpointId,
    pulumi.Output<String>? defaultDataCollectionRuleId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<String>? queryEndpoint,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      defaultDataCollectionEndpointId = pulumi.Input.asOptionalInput<String>(defaultDataCollectionEndpointId),
      defaultDataCollectionRuleId = pulumi.Input.asOptionalInput<String>(defaultDataCollectionRuleId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      queryEndpoint = pulumi.Input.asOptionalInput<String>(queryEndpoint),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultDataCollectionEndpointId': ?defaultDataCollectionEndpointId,
      'defaultDataCollectionRuleId': ?defaultDataCollectionRuleId,
      'location': ?location,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'queryEndpoint': ?queryEndpoint,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory WorkspaceState.fromMap(Map<String, dynamic> map) {
    return WorkspaceState(
      defaultDataCollectionEndpointId: map['defaultDataCollectionEndpointId'] == null ? null : pulumi.Output.create<String>(map['defaultDataCollectionEndpointId'] as String),
      defaultDataCollectionRuleId: map['defaultDataCollectionRuleId'] == null ? null : pulumi.Output.create<String>(map['defaultDataCollectionRuleId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      queryEndpoint: map['queryEndpoint'] == null ? null : pulumi.Output.create<String>(map['queryEndpoint'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

