// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getObjectSignedUrl.
class GetObjectSignedUrlResult {
  final String? bucket;
  final String? contentMd5;
  final String? contentType;
  final String? credentials;
  final String? duration;
  final Map<String, String>? extensionHeaders;
  final String? httpMethod;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? path;
  /// The signed URL that can be used to access the storage object without authentication.
  final String? signedUrl;

  /// Creates a new [GetObjectSignedUrlResult].
  /// [bucket] Optional.
  /// [contentMd5] Optional.
  /// [contentType] Optional.
  /// [credentials] Optional.
  /// [duration] Optional.
  /// [extensionHeaders] Optional.
  /// [httpMethod] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [path] Optional.
  /// [signedUrl] The signed URL that can be used to access the storage object without authentication.
  const GetObjectSignedUrlResult({
    this.bucket,
    this.contentMd5,
    this.contentType,
    this.credentials,
    this.duration,
    this.extensionHeaders,
    this.httpMethod,
    this.id,
    this.path,
    this.signedUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'contentMd5': ?contentMd5,
      'contentType': ?contentType,
      'credentials': ?credentials,
      'duration': ?duration,
      'extensionHeaders': ?extensionHeaders,
      'httpMethod': ?httpMethod,
      'id': ?id,
      'path': ?path,
      'signedUrl': ?signedUrl,
    };
  }

  factory GetObjectSignedUrlResult.fromMap(Map<String, dynamic> map) {
    return GetObjectSignedUrlResult(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentMd5: (() { final guardedValue = map['contentMd5']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return guardedValue as String; })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extensionHeaders: (() { final guardedValue = map['extensionHeaders']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      httpMethod: (() { final guardedValue = map['httpMethod']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return guardedValue as String; })(),
      signedUrl: (() { final guardedValue = map['signedUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
