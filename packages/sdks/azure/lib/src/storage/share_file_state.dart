// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ShareFile resources.
class ShareFileState {
  /// Sets the file’s Content-Disposition header.
  final pulumi.Input<String>? contentDisposition;
  /// Specifies which content encodings have been applied to the file.
  final pulumi.Input<String>? contentEncoding;
  /// The length in bytes of the file content
  final pulumi.Input<int>? contentLength;
  /// The MD5 sum of the file contents. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This property is intended to be used with the Terraform internal filemd5 and md5 functions when `source` is defined.
  final pulumi.Input<String>? contentMd5;
  /// The content type of the share file. Defaults to `application/octet-stream`.
  final pulumi.Input<String>? contentType;
  /// A mapping of metadata to assign to this file.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The name (or path) of the File that should be created within this File Share. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The storage share directory that you would like the file placed into. Changing this forces a new resource to be created. Defaults to `""`.
  final pulumi.Input<String>? path;
  /// An absolute path to a file on the local system. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The file specified with `source` can not be empty.
  final pulumi.Input<String>? source;
  final pulumi.Input<String>? storageShareId;
  /// The Storage Share URL in which this file will be placed into. Changing this forces a new resource to be created.
  final pulumi.Input<String>? storageShareUrl;

  /// Creates a new [ShareFileState].
  /// [contentDisposition] Sets the file’s Content-Disposition header.
  /// [contentEncoding] Specifies which content encodings have been applied to the file.
  /// [contentLength] The length in bytes of the file content
  /// [contentMd5] The MD5 sum of the file contents. Changing this forces a new resource to be created.
  /// [contentType] The content type of the share file. Defaults to `application/octet-stream`.
  /// [metadata] A mapping of metadata to assign to this file.
  /// [name] The name (or path) of the File that should be created within this File Share. Changing this forces a new resource to be created.
  /// [path] The storage share directory that you would like the file placed into. Changing this forces a new resource to be created. Defaults to `""`.
  /// [source] An absolute path to a file on the local system. Changing this forces a new resource to be created.
  /// [storageShareId] Optional.
  /// [storageShareUrl] The Storage Share URL in which this file will be placed into. Changing this forces a new resource to be created.
  ShareFileState({
    this.contentDisposition,
    this.contentEncoding,
    this.contentLength,
    this.contentMd5,
    this.contentType,
    this.metadata,
    this.name,
    this.path,
    this.source,
    this.storageShareId,
    this.storageShareUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentDisposition': ?contentDisposition,
      'contentEncoding': ?contentEncoding,
      'contentLength': ?contentLength,
      'contentMd5': ?contentMd5,
      'contentType': ?contentType,
      'metadata': ?metadata,
      'name': ?name,
      'path': ?path,
      'source': ?source,
      'storageShareId': ?storageShareId,
      'storageShareUrl': ?storageShareUrl,
    };
  }

  factory ShareFileState.fromMap(Map<String, dynamic> map) {
    return ShareFileState(
      contentDisposition: map['contentDisposition'] == null ? null : (map['contentDisposition'] as String).input(),
      contentEncoding: map['contentEncoding'] == null ? null : (map['contentEncoding'] as String).input(),
      contentLength: map['contentLength'] == null ? null : (map['contentLength'] as int).input(),
      contentMd5: map['contentMd5'] == null ? null : (map['contentMd5'] as String).input(),
      contentType: map['contentType'] == null ? null : (map['contentType'] as String).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
      source: map['source'] == null ? null : (map['source'] as String).input(),
      storageShareId: map['storageShareId'] == null ? null : (map['storageShareId'] as String).input(),
      storageShareUrl: map['storageShareUrl'] == null ? null : (map['storageShareUrl'] as String).input(),
    );
  }
}

