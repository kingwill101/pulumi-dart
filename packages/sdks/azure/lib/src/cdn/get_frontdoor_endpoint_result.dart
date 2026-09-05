// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFrontdoorEndpoint.
class GetFrontdoorEndpointResult {
  /// Specifies whether this Front Door Endpoint is enabled or not.
  final bool? enabled;
  /// Specifies the host name of the Front Door Endpoint, in the format `{endpointName}.{dnsZone}` (for example, `contoso.azureedge.net`).
  final String? hostName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? profileName;
  final String? resourceGroupName;
  /// Specifies a mapping of Tags assigned to this Front Door Endpoint.
  final Map<String, String>? tags;

  /// Creates a new [GetFrontdoorEndpointResult].
  /// [enabled] Specifies whether this Front Door Endpoint is enabled or not.
  /// [hostName] Specifies the host name of the Front Door Endpoint, in the format `{endpointName}.{dnsZone}` (for example, `contoso.azureedge.net`).
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [profileName] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] Specifies a mapping of Tags assigned to this Front Door Endpoint.
  const GetFrontdoorEndpointResult({
    this.enabled,
    this.hostName,
    this.id,
    this.name,
    this.profileName,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'hostName': ?hostName,
      'id': ?id,
      'name': ?name,
      'profileName': ?profileName,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetFrontdoorEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorEndpointResult(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      profileName: (() { final guardedValue = map['profileName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
