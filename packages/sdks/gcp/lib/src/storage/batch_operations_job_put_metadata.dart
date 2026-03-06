// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BatchOperationsJobPutMetadata {
  /// Cache-Control directive to specify caching behavior of object data. If omitted and object is accessible to all anonymous users, the default will be public, max-age=3600
  final pulumi.Input<String>? cacheControl;
  /// Content-Disposition of the object data.
  final pulumi.Input<String>? contentDisposition;
  /// Content Encoding of the object data.
  final pulumi.Input<String>? contentEncoding;
  /// Content-Language of the object data.
  final pulumi.Input<String>? contentLanguage;
  /// Content-Type of the object data.
  final pulumi.Input<String>? contentType;
  /// User-provided metadata, in key/value pairs.
  final pulumi.Input<Map<String, String>>? customMetadata;
  /// Updates the objects fixed custom time metadata.
  final pulumi.Input<String>? customTime;

  /// Creates a new [BatchOperationsJobPutMetadata].
  /// [cacheControl] Cache-Control directive to specify caching behavior of object data. If omitted and object is accessible to all anonymous users, the default will be public, max-age=3600
  /// [contentDisposition] Content-Disposition of the object data.
  /// [contentEncoding] Content Encoding of the object data.
  /// [contentLanguage] Content-Language of the object data.
  /// [contentType] Content-Type of the object data.
  /// [customMetadata] User-provided metadata, in key/value pairs.
  /// [customTime] Updates the objects fixed custom time metadata.
  const BatchOperationsJobPutMetadata({
    this.cacheControl,
    this.contentDisposition,
    this.contentEncoding,
    this.contentLanguage,
    this.contentType,
    this.customMetadata,
    this.customTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheControl': ?cacheControl,
      'contentDisposition': ?contentDisposition,
      'contentEncoding': ?contentEncoding,
      'contentLanguage': ?contentLanguage,
      'contentType': ?contentType,
      'customMetadata': ?customMetadata,
      'customTime': ?customTime,
    };
  }

  factory BatchOperationsJobPutMetadata.fromMap(Map<String, dynamic> map) {
    return BatchOperationsJobPutMetadata(
      cacheControl: (() { final guardedValue = map['cacheControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentDisposition: (() { final guardedValue = map['contentDisposition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentEncoding: (() { final guardedValue = map['contentEncoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentLanguage: (() { final guardedValue = map['contentLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customMetadata: (() { final guardedValue = map['customMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      customTime: (() { final guardedValue = map['customTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

