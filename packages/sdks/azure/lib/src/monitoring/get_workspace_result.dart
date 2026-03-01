// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkspace.
class GetWorkspaceResult {
  /// The ID of the managed default Data Collection Endpoint created with the Azure Monitor Workspace.
  final String defaultDataCollectionEndpointId;
  /// The ID of the managed default Data Collection Rule created with the Azure Monitor Workspace.
  final String defaultDataCollectionRuleId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure Region where the Workspace is located.
  final String location;
  final String name;
  /// Whether network access from public internet to the Workspace are allowed.
  final bool publicNetworkAccessEnabled;
  /// The query endpoint for the Azure Monitor Workspace.
  final String queryEndpoint;
  final String resourceGroupName;
  /// A mapping of tags that are assigned to the Workspace.
  final Map<String, String> tags;

  /// Creates a new [GetWorkspaceResult].
  /// [defaultDataCollectionEndpointId] The ID of the managed default Data Collection Endpoint created with the Azure Monitor Workspace.
  /// [defaultDataCollectionRuleId] The ID of the managed default Data Collection Rule created with the Azure Monitor Workspace.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Workspace is located.
  /// [name] Required.
  /// [publicNetworkAccessEnabled] Whether network access from public internet to the Workspace are allowed.
  /// [queryEndpoint] The query endpoint for the Azure Monitor Workspace.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags that are assigned to the Workspace.
  GetWorkspaceResult({
    required this.defaultDataCollectionEndpointId,
    required this.defaultDataCollectionRuleId,
    required this.id,
    required this.location,
    required this.name,
    required this.publicNetworkAccessEnabled,
    required this.queryEndpoint,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultDataCollectionEndpointId': defaultDataCollectionEndpointId,
      'defaultDataCollectionRuleId': defaultDataCollectionRuleId,
      'id': id,
      'location': location,
      'name': name,
      'publicNetworkAccessEnabled': publicNetworkAccessEnabled,
      'queryEndpoint': queryEndpoint,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceResult(
      defaultDataCollectionEndpointId: map['defaultDataCollectionEndpointId'] as String,
      defaultDataCollectionRuleId: map['defaultDataCollectionRuleId'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] as bool,
      queryEndpoint: map['queryEndpoint'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

