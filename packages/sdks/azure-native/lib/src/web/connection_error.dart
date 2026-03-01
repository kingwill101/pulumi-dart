// ignore_for_file: unused_element, unnecessary_cast


/// Connection error
class ConnectionError {
  /// Code of the status
  final String? code;
  /// Resource ETag
  final String? etag;
  /// Resource location
  final String? location;
  /// Description of the status
  final String? message;
  /// Resource tags
  final Map<String, String>? tags;

  /// Creates a new [ConnectionError].
  /// [code] Code of the status
  /// [etag] Resource ETag
  /// [location] Resource location
  /// [message] Description of the status
  /// [tags] Resource tags
  ConnectionError({
    this.code,
    this.etag,
    this.location,
    this.message,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'etag': ?etag,
      'location': ?location,
      'message': ?message,
      'tags': ?tags,
    };
  }

  factory ConnectionError.fromMap(Map<String, dynamic> map) {
    return ConnectionError(
      code: map['code'] == null ? null : map['code'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

