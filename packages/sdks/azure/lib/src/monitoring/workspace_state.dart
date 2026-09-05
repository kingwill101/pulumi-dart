// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Workspace resources.
class WorkspaceState {
  /// The ID of the managed default Data Collection Endpoint created with the Azure Monitor Workspace.
  final pulumi.Input<String?>? defaultDataCollectionEndpointId;
  /// The ID of the managed default Data Collection Rule created with the Azure Monitor Workspace.
  final pulumi.Input<String?>? defaultDataCollectionRuleId;
  /// Specifies the Azure Region where the Azure Monitor Workspace should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// Specifies the name which should be used for this Azure Monitor Workspace. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// Is public network access enabled? Defaults to `true`.
  final pulumi.Input<bool?>? publicNetworkAccessEnabled;
  /// The query endpoint for the Azure Monitor Workspace.
  final pulumi.Input<String?>? queryEndpoint;
  /// Specifies the name of the Resource Group where the Azure Monitor Workspace should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Azure Monitor Workspace.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [WorkspaceState].
  /// [defaultDataCollectionEndpointId] The ID of the managed default Data Collection Endpoint created with the Azure Monitor Workspace.
  /// [defaultDataCollectionRuleId] The ID of the managed default Data Collection Rule created with the Azure Monitor Workspace.
  /// [location] Specifies the Azure Region where the Azure Monitor Workspace should exist. Changing this forces a new resource to be created.
  /// [name] Specifies the name which should be used for this Azure Monitor Workspace. Changing this forces a new resource to be created.
  /// [publicNetworkAccessEnabled] Is public network access enabled? Defaults to `true`.
  /// [queryEndpoint] The query endpoint for the Azure Monitor Workspace.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Azure Monitor Workspace should exist. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Azure Monitor Workspace.
  const WorkspaceState({
    this.defaultDataCollectionEndpointId,
    this.defaultDataCollectionRuleId,
    this.location,
    this.name,
    this.publicNetworkAccessEnabled,
    this.queryEndpoint,
    this.resourceGroupName,
    this.tags,
  });

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
      defaultDataCollectionEndpointId: (() { final guardedValue = map['defaultDataCollectionEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultDataCollectionRuleId: (() { final guardedValue = map['defaultDataCollectionRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      queryEndpoint: (() { final guardedValue = map['queryEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
