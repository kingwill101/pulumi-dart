// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getGeoBackupPolicy.
class GetGeoBackupPolicyResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Resource ID.
  final String id;

  /// Kind of geo backup policy.  This is metadata used for the Azure portal experience.
  final String kind;

  /// Backup policy location.
  final String location;

  /// Resource name.
  final String name;

  /// The state of the geo backup policy.
  final String state;

  /// The storage type of the geo backup policy.
  final String storageType;

  /// Resource type.
  final String type;

  /// Creates a new [GetGeoBackupPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [kind] Kind of geo backup policy.  This is metadata used for the Azure portal experience.
  /// [location] Backup policy location.
  /// [name] Resource name.
  /// [state] The state of the geo backup policy.
  /// [storageType] The storage type of the geo backup policy.
  /// [type] Resource type.
  GetGeoBackupPolicyResult({
    required this.azureApiVersion,
    required this.id,
    required this.kind,
    required this.location,
    required this.name,
    required this.state,
    required this.storageType,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'kind': kind,
      'location': location,
      'name': name,
      'state': state,
      'storageType': storageType,
      'type': type,
    };
  }

  factory GetGeoBackupPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetGeoBackupPolicyResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      kind: map['kind'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      state: map['state'] as String,
      storageType: map['storageType'] as String,
      type: map['type'] as String,
    );
  }
}
