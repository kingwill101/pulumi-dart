// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Connection error
class ConnectionError {
  /// Code of the status
  final pulumi.Input<String?>? code;
  /// Resource ETag
  final pulumi.Input<String?>? etag;
  /// Resource location
  final pulumi.Input<String?>? location;
  /// Description of the status
  final pulumi.Input<String?>? message;
  /// Resource tags
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ConnectionError].
  /// [code] Code of the status
  /// [etag] Resource ETag
  /// [location] Resource location
  /// [message] Description of the status
  /// [tags] Resource tags
  const ConnectionError({
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
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
