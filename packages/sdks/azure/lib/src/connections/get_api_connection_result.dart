// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApiConnection.
class GetApiConnectionResult {
  /// The display name of the API Connection.
  final String displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure Region where the API Connection exists.
  final String location;
  /// The ID of the Managed API that this connection is linked to.
  final String managedApiId;
  final String name;
  /// A mapping of parameter names to their values for the API Connection.
  final Map<String, String> parameterValues;
  final String resourceGroupName;
  /// A mapping of tags assigned to the API Connection.
  final Map<String, String> tags;

  /// Creates a new [GetApiConnectionResult].
  /// [displayName] The display name of the API Connection.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the API Connection exists.
  /// [managedApiId] The ID of the Managed API that this connection is linked to.
  /// [name] Required.
  /// [parameterValues] A mapping of parameter names to their values for the API Connection.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the API Connection.
  const GetApiConnectionResult({
    required this.displayName,
    required this.id,
    required this.location,
    required this.managedApiId,
    required this.name,
    required this.parameterValues,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'id': id,
      'location': location,
      'managedApiId': managedApiId,
      'name': name,
      'parameterValues': parameterValues,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetApiConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetApiConnectionResult(
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      managedApiId: map['managedApiId'] as String,
      name: map['name'] as String,
      parameterValues: (map['parameterValues'] as Map).cast<String, String>(),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

