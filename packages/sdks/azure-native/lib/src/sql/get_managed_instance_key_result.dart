// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getManagedInstanceKey.
class GetManagedInstanceKeyResult {
  /// Key auto rotation opt-in flag. Either true or false.
  final bool? autoRotationEnabled;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The key creation date.
  final String? creationDate;
  /// Resource ID.
  final String? id;
  /// Kind of encryption protector. This is metadata used for the Azure portal experience.
  final String? kind;
  /// Resource name.
  final String? name;
  /// Thumbprint of the key.
  final String? thumbprint;
  /// Resource type.
  final String? type;

  /// Creates a new [GetManagedInstanceKeyResult].
  /// [autoRotationEnabled] Key auto rotation opt-in flag. Either true or false.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationDate] The key creation date.
  /// [id] Resource ID.
  /// [kind] Kind of encryption protector. This is metadata used for the Azure portal experience.
  /// [name] Resource name.
  /// [thumbprint] Thumbprint of the key.
  /// [type] Resource type.
  const GetManagedInstanceKeyResult({
    this.autoRotationEnabled,
    this.azureApiVersion,
    this.creationDate,
    this.id,
    this.kind,
    this.name,
    this.thumbprint,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRotationEnabled': ?autoRotationEnabled,
      'azureApiVersion': ?azureApiVersion,
      'creationDate': ?creationDate,
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'thumbprint': ?thumbprint,
      'type': ?type,
    };
  }

  factory GetManagedInstanceKeyResult.fromMap(Map<String, dynamic> map) {
    return GetManagedInstanceKeyResult(
      autoRotationEnabled: (() { final guardedValue = map['autoRotationEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationDate: (() { final guardedValue = map['creationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
