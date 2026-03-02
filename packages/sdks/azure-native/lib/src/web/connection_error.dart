// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Connection error
class ConnectionError {
  /// Code of the status
  final pulumi.Input<String>? code;
  /// Resource ETag
  final pulumi.Input<String>? etag;
  /// Resource location
  final pulumi.Input<String>? location;
  /// Description of the status
  final pulumi.Input<String>? message;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;

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
      code: map['code'] == null ? null : (map['code']! as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

