// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Connection error
class ConnectionErrorResponse {
  /// Code of the status
  final pulumi.Input<String>? code;
  /// Resource ETag
  final pulumi.Input<String>? etag;
  /// Resource id
  final pulumi.Input<String> id;
  /// Resource location
  final pulumi.Input<String>? location;
  /// Description of the status
  final pulumi.Input<String>? message;
  /// Resource name
  final pulumi.Input<String> name;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;
  /// Resource type
  final pulumi.Input<String> type;

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
      code: map['code'] == null ? null : (map['code'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      id: (map['id'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
      name: (map['name'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      type: (map['type'] as String).input(),
    );
  }
}

