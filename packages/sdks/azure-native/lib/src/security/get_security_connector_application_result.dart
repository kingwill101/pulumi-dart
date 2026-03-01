// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSecurityConnectorApplication.
class GetSecurityConnectorApplicationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// description of the application
  final String? description;
  /// display name of the application
  final String? displayName;
  /// Resource Id
  final String id;
  /// Resource name
  final String name;
  /// The application source, what it affects, e.g. Assessments
  final String sourceResourceType;
  /// Resource type
  final String type;

  /// Creates a new [GetSecurityConnectorApplicationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] description of the application
  /// [displayName] display name of the application
  /// [id] Resource Id
  /// [name] Resource name
  /// [sourceResourceType] The application source, what it affects, e.g. Assessments
  /// [type] Resource type
  GetSecurityConnectorApplicationResult({
    required this.azureApiVersion,
    this.description,
    this.displayName,
    required this.id,
    required this.name,
    required this.sourceResourceType,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'displayName': ?displayName,
      'id': id,
      'name': name,
      'sourceResourceType': sourceResourceType,
      'type': type,
    };
  }

  factory GetSecurityConnectorApplicationResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityConnectorApplicationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      sourceResourceType: map['sourceResourceType'] as String,
      type: map['type'] as String,
    );
  }
}

