// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAPICollection.
class GetAPICollectionResult {
  /// Additional data regarding the API collection.
  final Map<String, String>? additionalData;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The display name of the Azure API Management API.
  final String? displayName;
  /// Resource Id
  final String? id;
  /// Resource name
  final String? name;
  /// Resource type
  final String? type;

  /// Creates a new [GetAPICollectionResult].
  /// [additionalData] Additional data regarding the API collection.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [displayName] The display name of the Azure API Management API.
  /// [id] Resource Id
  /// [name] Resource name
  /// [type] Resource type
  const GetAPICollectionResult({
    this.additionalData,
    this.azureApiVersion,
    this.displayName,
    this.id,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalData': ?additionalData,
      'azureApiVersion': ?azureApiVersion,
      'displayName': ?displayName,
      'id': ?id,
      'name': ?name,
      'type': ?type,
    };
  }

  factory GetAPICollectionResult.fromMap(Map<String, dynamic> map) {
    return GetAPICollectionResult(
      additionalData: (() { final guardedValue = map['additionalData']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
