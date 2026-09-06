// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTransparentDataEncryption.
class GetTransparentDataEncryptionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource ID.
  final String? id;
  /// Resource name.
  final String? name;
  /// Specifies the state of the transparent data encryption.
  final String? state;
  /// Resource type.
  final String? type;

  /// Creates a new [GetTransparentDataEncryptionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [state] Specifies the state of the transparent data encryption.
  /// [type] Resource type.
  const GetTransparentDataEncryptionResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.state,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'state': ?state,
      'type': ?type,
    };
  }

  factory GetTransparentDataEncryptionResult.fromMap(Map<String, dynamic> map) {
    return GetTransparentDataEncryptionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
