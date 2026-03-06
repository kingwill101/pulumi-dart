// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAPICollection.
class GetAPICollectionResult {
  /// Additional data regarding the API collection.
  final Map<String, String>? additionalData;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The display name of the Azure API Management API.
  final String? displayName;
  /// Resource Id
  final String id;
  /// Resource name
  final String name;
  /// Resource type
  final String type;

  /// Creates a new [GetAPICollectionResult].
  /// [additionalData] Additional data regarding the API collection.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [displayName] The display name of the Azure API Management API.
  /// [id] Resource Id
  /// [name] Resource name
  /// [type] Resource type
  const GetAPICollectionResult({
    this.additionalData,
    required this.azureApiVersion,
    this.displayName,
    required this.id,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalData': ?additionalData,
      'azureApiVersion': azureApiVersion,
      'displayName': ?displayName,
      'id': id,
      'name': name,
      'type': type,
    };
  }

  factory GetAPICollectionResult.fromMap(Map<String, dynamic> map) {
    return GetAPICollectionResult(
      additionalData: (() { final guardedValue = map['additionalData']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

