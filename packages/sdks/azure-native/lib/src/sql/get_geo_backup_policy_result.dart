// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGeoBackupPolicy.
class GetGeoBackupPolicyResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource ID.
  final String? id;
  /// Kind of geo backup policy.  This is metadata used for the Azure portal experience.
  final String? kind;
  /// Backup policy location.
  final String? location;
  /// Resource name.
  final String? name;
  /// The state of the geo backup policy.
  final String? state;
  /// The storage type of the geo backup policy.
  final String? storageType;
  /// Resource type.
  final String? type;

  /// Creates a new [GetGeoBackupPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [kind] Kind of geo backup policy.  This is metadata used for the Azure portal experience.
  /// [location] Backup policy location.
  /// [name] Resource name.
  /// [state] The state of the geo backup policy.
  /// [storageType] The storage type of the geo backup policy.
  /// [type] Resource type.
  const GetGeoBackupPolicyResult({
    this.azureApiVersion,
    this.id,
    this.kind,
    this.location,
    this.name,
    this.state,
    this.storageType,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'state': ?state,
      'storageType': ?storageType,
      'type': ?type,
    };
  }

  factory GetGeoBackupPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetGeoBackupPolicyResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
