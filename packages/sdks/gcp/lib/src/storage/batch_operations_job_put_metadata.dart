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
  BatchOperationsJobPutMetadata({
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
      cacheControl: map['cacheControl'] == null ? null : (map['cacheControl']! as String).input(),
      contentDisposition: map['contentDisposition'] == null ? null : (map['contentDisposition']! as String).input(),
      contentEncoding: map['contentEncoding'] == null ? null : (map['contentEncoding']! as String).input(),
      contentLanguage: map['contentLanguage'] == null ? null : (map['contentLanguage']! as String).input(),
      contentType: map['contentType'] == null ? null : (map['contentType']! as String).input(),
      customMetadata: map['customMetadata'] == null ? null : ((map['customMetadata']! as Map).cast<String, String>()).input(),
      customTime: map['customTime'] == null ? null : (map['customTime']! as String).input(),
    );
  }
}

