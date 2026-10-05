// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRepository.
class GetRepositoryResult {
  /// Allows clients to store small amounts of arbitrary data.
  final Map<String, String>? annotations;
  /// Server assigned timestamp for when the connection was created.
  final String? createTime;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final String? etag;
  /// Immutable. Resource name of the repository, in the format `projects/*/locations/*/connections/*/repositories/*`.
  final String? name;
  /// Git Clone HTTPS URI.
  final String? remoteUri;
  /// Server assigned timestamp for when the connection was updated.
  final String? updateTime;
  /// External ID of the webhook created for the repository.
  final String? webhookId;

  /// Creates a new [GetRepositoryResult].
  /// [annotations] Allows clients to store small amounts of arbitrary data.
  /// [createTime] Server assigned timestamp for when the connection was created.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [name] Immutable. Resource name of the repository, in the format `projects/*/locations/*/connections/*/repositories/*`.
  /// [remoteUri] Git Clone HTTPS URI.
  /// [updateTime] Server assigned timestamp for when the connection was updated.
  /// [webhookId] External ID of the webhook created for the repository.
  const GetRepositoryResult({
    this.annotations,
    this.createTime,
    this.etag,
    this.name,
    this.remoteUri,
    this.updateTime,
    this.webhookId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'createTime': ?createTime,
      'etag': ?etag,
      'name': ?name,
      'remoteUri': ?remoteUri,
      'updateTime': ?updateTime,
      'webhookId': ?webhookId,
    };
  }

  factory GetRepositoryResult.fromMap(Map<String, dynamic> map) {
    return GetRepositoryResult(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      remoteUri: (() { final guardedValue = map['remoteUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      webhookId: (() { final guardedValue = map['webhookId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
