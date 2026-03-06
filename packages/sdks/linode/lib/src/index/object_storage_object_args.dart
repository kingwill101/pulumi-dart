// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_object_storage_object_object_storage_object_args_doc}
/// The set of arguments for ObjectStorageObject.
/// {@endtemplate}
/// {@macro pulumi_index_object_storage_object_object_storage_object_args_doc}
class ObjectStorageObjectArgs {
  /// The REQUIRED access key to authenticate with. If it's not specified with the resource, you must provide its value by
  /// * configuring the `obj_access_key` in the provider configuration;
  /// * or, opting-in generating it implicitly at apply-time using `obj_use_temp_keys` at provider-level.
  final pulumi.Input<String>? accessKey;
  /// The canned ACL to apply. (`private`, `public-read`, `authenticated-read`, `public-read-write`, `custom`) (defaults to `private`).
  final pulumi.Input<String>? acl;
  /// The name of the bucket to put the object in.
  final pulumi.Input<String> bucket;
  /// Specifies caching behavior along the request/reply chain Read [w3c cache_control](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9) for further details.
  final pulumi.Input<String>? cacheControl;
  /// The cluster the bucket is in. Required if `region` is not configured. Deprecated in favor of `region`.
  final pulumi.Input<String>? cluster;
  /// Literal string value to use as the object content, which will be uploaded as UTF-8-encoded text.
  final pulumi.Input<String>? content;
  /// Base64-encoded data that will be decoded and uploaded as raw bytes for the object content. This allows safely uploading non-UTF8 binary data, but is recommended only for small content such as the result of the `gzipbase64` function with small text strings. For larger objects, use `source` to stream the content from a disk file.
  final pulumi.Input<String>? contentBase64;
  /// Specifies presentational information for the object. Read [w3c content_disposition](http://www.w3.org/Protocols/rfc2616/rfc2616-sec19.html#sec19.5.1) for further information.
  final pulumi.Input<String>? contentDisposition;
  /// Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. Read [w3c content encoding](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.11) for further information.
  final pulumi.Input<String>? contentEncoding;
  /// The language the content is in e.g. en-US or en-GB.
  final pulumi.Input<String>? contentLanguage;
  /// A standard MIME type describing the format of the object data, e.g. application/octet-stream. All Valid MIME Types are valid for this input.
  final pulumi.Input<String>? contentType;
  /// Used with the s3 client to make bucket changes and will be computed automatically if left blank, override for testing/debug purposes.
  final pulumi.Input<String>? endpoint;
  /// Used to trigger updates. The only meaningful value is `${filemd5("path/to/file")}` (Terraform 0.11.12 or later) or `${md5(file("path/to/file"))}` (Terraform 0.11.11 or earlier).
  final pulumi.Input<String>? etag;
  /// Allow the object to be deleted regardless of any legal hold or object lock (defaults to `false`).
  final pulumi.Input<bool>? forceDestroy;
  /// They name of the object once it is in the bucket.
  final pulumi.Input<String> key;
  /// A map of keys/values to provision metadata.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The cluster the bucket is in. Required if `cluster` is not configured.
  final pulumi.Input<String>? region;
  /// The REQUIRED secret key to authenticate with. If it's not specified with the resource, you must provide its value by
  /// * configuring the `obj_secret_key` in the provider configuration;
  /// * or, opting-in generating it implicitly at apply-time using `obj_use_temp_keys` at provider-level.
  final pulumi.Input<String>? secretKey;
  /// The path to a file that will be read and uploaded as raw bytes for the object content. The path must either be relative to the root module or absolute.
  final pulumi.Input<String>? source;
  /// Specifies a target URL for website redirect.
  final pulumi.Input<String>? websiteRedirect;

  /// Creates a new [ObjectStorageObjectArgs].
  /// [accessKey] The REQUIRED access key to authenticate with. If it's not specified with the resource, you must provide its value by
  /// [acl] The canned ACL to apply. (`private`, `public-read`, `authenticated-read`, `public-read-write`, `custom`) (defaults to `private`).
  /// [bucket] The name of the bucket to put the object in.
  /// [cacheControl] Specifies caching behavior along the request/reply chain Read [w3c cache_control](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9) for further details.
  /// [cluster] The cluster the bucket is in. Required if `region` is not configured. Deprecated in favor of `region`.
  /// [content] Literal string value to use as the object content, which will be uploaded as UTF-8-encoded text.
  /// [contentBase64] Base64-encoded data that will be decoded and uploaded as raw bytes for the object content. This allows safely uploading non-UTF8 binary data, but is recommended only for small content such as the result of the `gzipbase64` function with small text strings. For larger objects, use `source` to stream the content from a disk file.
  /// [contentDisposition] Specifies presentational information for the object. Read [w3c content_disposition](http://www.w3.org/Protocols/rfc2616/rfc2616-sec19.html#sec19.5.1) for further information.
  /// [contentEncoding] Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. Read [w3c content encoding](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.11) for further information.
  /// [contentLanguage] The language the content is in e.g. en-US or en-GB.
  /// [contentType] A standard MIME type describing the format of the object data, e.g. application/octet-stream. All Valid MIME Types are valid for this input.
  /// [endpoint] Used with the s3 client to make bucket changes and will be computed automatically if left blank, override for testing/debug purposes.
  /// [etag] Used to trigger updates. The only meaningful value is `${filemd5("path/to/file")}` (Terraform 0.11.12 or later) or `${md5(file("path/to/file"))}` (Terraform 0.11.11 or earlier).
  /// [forceDestroy] Allow the object to be deleted regardless of any legal hold or object lock (defaults to `false`).
  /// [key] They name of the object once it is in the bucket.
  /// [metadata] A map of keys/values to provision metadata.
  /// [region] The cluster the bucket is in. Required if `cluster` is not configured.
  /// [secretKey] The REQUIRED secret key to authenticate with. If it's not specified with the resource, you must provide its value by
  /// [source] The path to a file that will be read and uploaded as raw bytes for the object content. The path must either be relative to the root module or absolute.
  /// [websiteRedirect] Specifies a target URL for website redirect.
  const ObjectStorageObjectArgs({
    this.accessKey,
    this.acl,
    required this.bucket,
    this.cacheControl,
    this.cluster,
    this.content,
    this.contentBase64,
    this.contentDisposition,
    this.contentEncoding,
    this.contentLanguage,
    this.contentType,
    this.endpoint,
    this.etag,
    this.forceDestroy,
    required this.key,
    this.metadata,
    this.region,
    this.secretKey,
    this.source,
    this.websiteRedirect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': ?accessKey,
      'acl': ?acl,
      'bucket': bucket,
      'cacheControl': ?cacheControl,
      'cluster': ?cluster,
      'content': ?content,
      'contentBase64': ?contentBase64,
      'contentDisposition': ?contentDisposition,
      'contentEncoding': ?contentEncoding,
      'contentLanguage': ?contentLanguage,
      'contentType': ?contentType,
      'endpoint': ?endpoint,
      'etag': ?etag,
      'forceDestroy': ?forceDestroy,
      'key': key,
      'metadata': ?metadata,
      'region': ?region,
      'secretKey': ?secretKey,
      'source': ?source,
      'websiteRedirect': ?websiteRedirect,
    };
  }

  factory ObjectStorageObjectArgs.fromMap(Map<String, dynamic> map) {
    return ObjectStorageObjectArgs(
      accessKey: (() { final guardedValue = map['accessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      acl: (() { final guardedValue = map['acl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      cacheControl: (() { final guardedValue = map['cacheControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cluster: (() { final guardedValue = map['cluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentBase64: (() { final guardedValue = map['contentBase64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentDisposition: (() { final guardedValue = map['contentDisposition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentEncoding: (() { final guardedValue = map['contentEncoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentLanguage: (() { final guardedValue = map['contentLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forceDestroy: (() { final guardedValue = map['forceDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretKey: (() { final guardedValue = map['secretKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      websiteRedirect: (() { final guardedValue = map['websiteRedirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

