// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SpacesBucketObject resources.
class SpacesBucketObjectState {
  /// The canned ACL to apply. DigitalOcean supports "private" and "public-read". (Defaults to "private".)
  final pulumi.Input<String>? acl;
  /// The name of the bucket to put the file in.
  final pulumi.Input<String>? bucket;
  /// Specifies caching behavior along the request/reply chain Read [w3c cache_control](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9) for further details.
  final pulumi.Input<String>? cacheControl;
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
  /// Used to trigger updates. The only meaningful value is `${filemd5("path/to/file")}` (Terraform 0.11.12 or later) or `${md5(file("path/to/file"))}` (Terraform 0.11.11 or earlier).
  final pulumi.Input<String>? etag;
  /// Allow the object to be deleted by removing any legal hold on any object version.
  /// Default is `false`. This value should be set to `true` only if the bucket has S3 object lock enabled.
  ///
  /// If no content is provided through `source`, `content` or `content_base64`, then the object will be empty.
  ///
  /// > **Note:** Terraform ignores all leading `/`s in the object's `key` and treats multiple `/`s in the rest of the object's `key` as a single `/`, so values of `/index.html` and `index.html` correspond to the same S3 object as do `first//second///third//` and `first/second/third/`.
  final pulumi.Input<bool>? forceDestroy;
  /// The name of the object once it is in the bucket.
  final pulumi.Input<String>? key;
  /// A mapping of keys/values to provision metadata (will be automatically prefixed by `x-amz-meta-`, note that only lowercase label are currently supported by the AWS Go API).
  final pulumi.Input<Map<String, String>>? metadata;
  /// The region where the bucket resides (Defaults to `nyc3`)
  final pulumi.Input<String>? region;
  /// The path to a file that will be read and uploaded as raw bytes for the object content.
  final pulumi.Input<String>? source;
  /// A unique version ID value for the object, if bucket versioning is enabled.
  final pulumi.Input<String>? versionId;
  /// Specifies a target URL for [website redirect](http://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html).
  final pulumi.Input<String>? websiteRedirect;

  /// Creates a new [SpacesBucketObjectState].
  /// [acl] The canned ACL to apply. DigitalOcean supports "private" and "public-read". (Defaults to "private".)
  /// [bucket] The name of the bucket to put the file in.
  /// [cacheControl] Specifies caching behavior along the request/reply chain Read [w3c cache_control](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9) for further details.
  /// [content] Literal string value to use as the object content, which will be uploaded as UTF-8-encoded text.
  /// [contentBase64] Base64-encoded data that will be decoded and uploaded as raw bytes for the object content. This allows safely uploading non-UTF8 binary data, but is recommended only for small content such as the result of the `gzipbase64` function with small text strings. For larger objects, use `source` to stream the content from a disk file.
  /// [contentDisposition] Specifies presentational information for the object. Read [w3c content_disposition](http://www.w3.org/Protocols/rfc2616/rfc2616-sec19.html#sec19.5.1) for further information.
  /// [contentEncoding] Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. Read [w3c content encoding](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.11) for further information.
  /// [contentLanguage] The language the content is in e.g. en-US or en-GB.
  /// [contentType] A standard MIME type describing the format of the object data, e.g. application/octet-stream. All Valid MIME Types are valid for this input.
  /// [etag] Used to trigger updates. The only meaningful value is `${filemd5("path/to/file")}` (Terraform 0.11.12 or later) or `${md5(file("path/to/file"))}` (Terraform 0.11.11 or earlier).
  /// [forceDestroy] Allow the object to be deleted by removing any legal hold on any object version.
  /// [key] The name of the object once it is in the bucket.
  /// [metadata] A mapping of keys/values to provision metadata (will be automatically prefixed by `x-amz-meta-`, note that only lowercase label are currently supported by the AWS Go API).
  /// [region] The region where the bucket resides (Defaults to `nyc3`)
  /// [source] The path to a file that will be read and uploaded as raw bytes for the object content.
  /// [versionId] A unique version ID value for the object, if bucket versioning is enabled.
  /// [websiteRedirect] Specifies a target URL for [website redirect](http://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html).
  SpacesBucketObjectState({
    this.acl,
    this.bucket,
    this.cacheControl,
    this.content,
    this.contentBase64,
    this.contentDisposition,
    this.contentEncoding,
    this.contentLanguage,
    this.contentType,
    this.etag,
    this.forceDestroy,
    this.key,
    this.metadata,
    this.region,
    this.source,
    this.versionId,
    this.websiteRedirect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acl': ?acl,
      'bucket': ?bucket,
      'cacheControl': ?cacheControl,
      'content': ?content,
      'contentBase64': ?contentBase64,
      'contentDisposition': ?contentDisposition,
      'contentEncoding': ?contentEncoding,
      'contentLanguage': ?contentLanguage,
      'contentType': ?contentType,
      'etag': ?etag,
      'forceDestroy': ?forceDestroy,
      'key': ?key,
      'metadata': ?metadata,
      'region': ?region,
      'source': ?source,
      'versionId': ?versionId,
      'websiteRedirect': ?websiteRedirect,
    };
  }

  factory SpacesBucketObjectState.fromMap(Map<String, dynamic> map) {
    return SpacesBucketObjectState(
      acl: map['acl'] == null ? null : (map['acl'] as String).input(),
      bucket: map['bucket'] == null ? null : (map['bucket'] as String).input(),
      cacheControl: map['cacheControl'] == null ? null : (map['cacheControl'] as String).input(),
      content: map['content'] == null ? null : (map['content'] as String).input(),
      contentBase64: map['contentBase64'] == null ? null : (map['contentBase64'] as String).input(),
      contentDisposition: map['contentDisposition'] == null ? null : (map['contentDisposition'] as String).input(),
      contentEncoding: map['contentEncoding'] == null ? null : (map['contentEncoding'] as String).input(),
      contentLanguage: map['contentLanguage'] == null ? null : (map['contentLanguage'] as String).input(),
      contentType: map['contentType'] == null ? null : (map['contentType'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      forceDestroy: map['forceDestroy'] == null ? null : (map['forceDestroy'] as bool).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      source: map['source'] == null ? null : (map['source'] as String).input(),
      versionId: map['versionId'] == null ? null : (map['versionId'] as String).input(),
      websiteRedirect: map['websiteRedirect'] == null ? null : (map['websiteRedirect'] as String).input(),
    );
  }
}

