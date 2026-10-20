// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getHmacKey.
class GetHmacKeyResult {
  /// The ID of the HMAC Key.
  final String? accessId;
  /// HTTP 1.1 Entity tag for the HMAC key.
  final String? etag;
  /// The kind of item this is. For HMAC Key metadata, this is always storage#hmacKeyMetadata.
  final String? kind;
  /// Project ID owning the service account to which the key authenticates.
  final String? project;
  /// The link to this resource.
  final String? selfLink;
  /// The email address of the key's associated service account.
  final String? serviceAccountEmail;
  /// The state of the key. Can be one of ACTIVE, INACTIVE, or DELETED.
  final String? state;
  /// The creation time of the HMAC key in RFC 3339 format.
  final String? timeCreated;
  /// The last modification time of the HMAC key metadata in RFC 3339 format.
  final String? updated;

  /// Creates a new [GetHmacKeyResult].
  /// [accessId] The ID of the HMAC Key.
  /// [etag] HTTP 1.1 Entity tag for the HMAC key.
  /// [kind] The kind of item this is. For HMAC Key metadata, this is always storage#hmacKeyMetadata.
  /// [project] Project ID owning the service account to which the key authenticates.
  /// [selfLink] The link to this resource.
  /// [serviceAccountEmail] The email address of the key's associated service account.
  /// [state] The state of the key. Can be one of ACTIVE, INACTIVE, or DELETED.
  /// [timeCreated] The creation time of the HMAC key in RFC 3339 format.
  /// [updated] The last modification time of the HMAC key metadata in RFC 3339 format.
  const GetHmacKeyResult({
    this.accessId,
    this.etag,
    this.kind,
    this.project,
    this.selfLink,
    this.serviceAccountEmail,
    this.state,
    this.timeCreated,
    this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessId': ?accessId,
      'etag': ?etag,
      'kind': ?kind,
      'project': ?project,
      'selfLink': ?selfLink,
      'serviceAccountEmail': ?serviceAccountEmail,
      'state': ?state,
      'timeCreated': ?timeCreated,
      'updated': ?updated,
    };
  }

  factory GetHmacKeyResult.fromMap(Map<String, dynamic> map) {
    return GetHmacKeyResult(
      accessId: (() { final guardedValue = map['accessId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceAccountEmail: (() { final guardedValue = map['serviceAccountEmail']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeCreated: (() { final guardedValue = map['timeCreated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updated: (() { final guardedValue = map['updated']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
