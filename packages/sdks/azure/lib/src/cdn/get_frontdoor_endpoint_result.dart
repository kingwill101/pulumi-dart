// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getFrontdoorEndpoint.
class GetFrontdoorEndpointResult {
  /// Specifies whether this Front Door Endpoint is enabled or not.
  final bool enabled;

  /// Specifies the host name of the Front Door Endpoint, in the format `{endpointName}.{dnsZone}` (for example, `contoso.azureedge.net`).
  final String hostName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String profileName;
  final String resourceGroupName;

  /// Specifies a mapping of Tags assigned to this Front Door Endpoint.
  final Map<String, String> tags;

  /// Creates a new [GetFrontdoorEndpointResult].
  /// [enabled] Specifies whether this Front Door Endpoint is enabled or not.
  /// [hostName] Specifies the host name of the Front Door Endpoint, in the format `{endpointName}.{dnsZone}` (for example, `contoso.azureedge.net`).
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [profileName] Required.
  /// [resourceGroupName] Required.
  /// [tags] Specifies a mapping of Tags assigned to this Front Door Endpoint.
  GetFrontdoorEndpointResult({
    required this.enabled,
    required this.hostName,
    required this.id,
    required this.name,
    required this.profileName,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'hostName': hostName,
      'id': id,
      'name': name,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetFrontdoorEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorEndpointResult(
      enabled: map['enabled'] as bool,
      hostName: map['hostName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      profileName: map['profileName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
