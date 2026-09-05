// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApiVersionSet.
class GetApiVersionSetResult {
  final String? apiManagementName;
  /// The description of API Version Set.
  final String? description;
  /// The display name of this API Version Set.
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? resourceGroupName;
  /// The name of the Header which should be read from Inbound Requests which defines the API Version.
  final String? versionHeaderName;
  /// The name of the Query String which should be read from Inbound Requests which defines the API Version.
  final String? versionQueryName;
  final String? versioningScheme;

  /// Creates a new [GetApiVersionSetResult].
  /// [apiManagementName] Optional.
  /// [description] The description of API Version Set.
  /// [displayName] The display name of this API Version Set.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [versionHeaderName] The name of the Header which should be read from Inbound Requests which defines the API Version.
  /// [versionQueryName] The name of the Query String which should be read from Inbound Requests which defines the API Version.
  /// [versioningScheme] Optional.
  const GetApiVersionSetResult({
    this.apiManagementName,
    this.description,
    this.displayName,
    this.id,
    this.name,
    this.resourceGroupName,
    this.versionHeaderName,
    this.versionQueryName,
    this.versioningScheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': ?apiManagementName,
      'description': ?description,
      'displayName': ?displayName,
      'id': ?id,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'versionHeaderName': ?versionHeaderName,
      'versionQueryName': ?versionQueryName,
      'versioningScheme': ?versioningScheme,
    };
  }

  factory GetApiVersionSetResult.fromMap(Map<String, dynamic> map) {
    return GetApiVersionSetResult(
      apiManagementName: (() { final guardedValue = map['apiManagementName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionHeaderName: (() { final guardedValue = map['versionHeaderName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionQueryName: (() { final guardedValue = map['versionQueryName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versioningScheme: (() { final guardedValue = map['versioningScheme']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
