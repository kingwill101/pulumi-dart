// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkspace.
class GetWorkspaceResult {
  /// The ID of the managed default Data Collection Endpoint created with the Azure Monitor Workspace.
  final String? defaultDataCollectionEndpointId;
  /// The ID of the managed default Data Collection Rule created with the Azure Monitor Workspace.
  final String? defaultDataCollectionRuleId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region where the Workspace is located.
  final String? location;
  final String? name;
  /// Whether network access from public internet to the Workspace are allowed.
  final bool? publicNetworkAccessEnabled;
  /// The query endpoint for the Azure Monitor Workspace.
  final String? queryEndpoint;
  final String? resourceGroupName;
  /// A mapping of tags that are assigned to the Workspace.
  final Map<String, String>? tags;

  /// Creates a new [GetWorkspaceResult].
  /// [defaultDataCollectionEndpointId] The ID of the managed default Data Collection Endpoint created with the Azure Monitor Workspace.
  /// [defaultDataCollectionRuleId] The ID of the managed default Data Collection Rule created with the Azure Monitor Workspace.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Workspace is located.
  /// [name] Optional.
  /// [publicNetworkAccessEnabled] Whether network access from public internet to the Workspace are allowed.
  /// [queryEndpoint] The query endpoint for the Azure Monitor Workspace.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags that are assigned to the Workspace.
  const GetWorkspaceResult({
    this.defaultDataCollectionEndpointId,
    this.defaultDataCollectionRuleId,
    this.id,
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
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'queryEndpoint': ?queryEndpoint,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceResult(
      defaultDataCollectionEndpointId: (() { final guardedValue = map['defaultDataCollectionEndpointId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultDataCollectionRuleId: (() { final guardedValue = map['defaultDataCollectionRuleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      queryEndpoint: (() { final guardedValue = map['queryEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
