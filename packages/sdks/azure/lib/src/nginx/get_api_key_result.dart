// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApiKey.
class GetApiKeyResult {
  /// The RFC3339 formatted time after which this Dataplane API Key is no longer valid.
  final String? endDateTime;
  /// The first three characters of the secret text to help identify it in use.
  final String? hint;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? nginxDeploymentId;

  /// Creates a new [GetApiKeyResult].
  /// [endDateTime] The RFC3339 formatted time after which this Dataplane API Key is no longer valid.
  /// [hint] The first three characters of the secret text to help identify it in use.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [nginxDeploymentId] Optional.
  const GetApiKeyResult({
    this.endDateTime,
    this.hint,
    this.id,
    this.name,
    this.nginxDeploymentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endDateTime': ?endDateTime,
      'hint': ?hint,
      'id': ?id,
      'name': ?name,
      'nginxDeploymentId': ?nginxDeploymentId,
    };
  }

  factory GetApiKeyResult.fromMap(Map<String, dynamic> map) {
    return GetApiKeyResult(
      endDateTime: (() { final guardedValue = map['endDateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hint: (() { final guardedValue = map['hint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nginxDeploymentId: (() { final guardedValue = map['nginxDeploymentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
