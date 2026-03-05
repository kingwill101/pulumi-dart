// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getApiVersionSet.
class GetApiVersionSetResult {
  final String apiManagementName;

  /// The description of API Version Set.
  final String description;

  /// The display name of this API Version Set.
  final String displayName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String resourceGroupName;

  /// The name of the Header which should be read from Inbound Requests which defines the API Version.
  final String versionHeaderName;

  /// The name of the Query String which should be read from Inbound Requests which defines the API Version.
  final String versionQueryName;
  final String versioningScheme;

  /// Creates a new [GetApiVersionSetResult].
  /// [apiManagementName] Required.
  /// [description] The description of API Version Set.
  /// [displayName] The display name of this API Version Set.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [versionHeaderName] The name of the Header which should be read from Inbound Requests which defines the API Version.
  /// [versionQueryName] The name of the Query String which should be read from Inbound Requests which defines the API Version.
  /// [versioningScheme] Required.
  GetApiVersionSetResult({
    required this.apiManagementName,
    required this.description,
    required this.displayName,
    required this.id,
    required this.name,
    required this.resourceGroupName,
    required this.versionHeaderName,
    required this.versionQueryName,
    required this.versioningScheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'description': description,
      'displayName': displayName,
      'id': id,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'versionHeaderName': versionHeaderName,
      'versionQueryName': versionQueryName,
      'versioningScheme': versioningScheme,
    };
  }

  factory GetApiVersionSetResult.fromMap(Map<String, dynamic> map) {
    return GetApiVersionSetResult(
      apiManagementName: map['apiManagementName'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      versionHeaderName: map['versionHeaderName'] as String,
      versionQueryName: map['versionQueryName'] as String,
      versioningScheme: map['versioningScheme'] as String,
    );
  }
}
