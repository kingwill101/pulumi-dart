// ignore_for_file: unused_element, unnecessary_cast


/// Connection error
class ConnectionErrorResponse {
  /// Code of the status
  final String? code;
  /// Resource ETag
  final String? etag;
  /// Resource id
  final String id;
  /// Resource location
  final String? location;
  /// Description of the status
  final String? message;
  /// Resource name
  final String name;
  /// Resource tags
  final Map<String, String>? tags;
  /// Resource type
  final String type;

  /// Creates a new [ConnectionErrorResponse].
  /// [code] Code of the status
  /// [etag] Resource ETag
  /// [id] Resource id
  /// [location] Resource location
  /// [message] Description of the status
  /// [name] Resource name
  /// [tags] Resource tags
  /// [type] Resource type
  ConnectionErrorResponse({
    this.code,
    this.etag,
    required this.id,
    this.location,
    this.message,
    required this.name,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'etag': ?etag,
      'id': id,
      'location': ?location,
      'message': ?message,
      'name': name,
      'tags': ?tags,
      'type': type,
    };
  }

  factory ConnectionErrorResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionErrorResponse(
      code: map['code'] == null ? null : map['code'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      name: map['name'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

