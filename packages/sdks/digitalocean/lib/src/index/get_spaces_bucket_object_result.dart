// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSpacesBucketObject.
class GetSpacesBucketObjectResult {
  /// Object data (see **limitations above** to understand cases in which this field is actually available)
  final String? body;
  final String? bucket;
  /// Specifies caching behavior along the request/reply chain.
  final String? cacheControl;
  /// Specifies presentational information for the object.
  final String? contentDisposition;
  /// Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.
  final String? contentEncoding;
  /// The language the content is in.
  final String? contentLanguage;
  /// Size of the body in bytes.
  final int? contentLength;
  /// A standard MIME type describing the format of the object data.
  final String? contentType;
  /// [ETag](https://en.wikipedia.org/wiki/HTTP_ETag) generated for the object (an MD5 sum of the object content in case it's not encrypted)
  final String? etag;
  /// If the object expiration is configured (see [object lifecycle management](http://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html)), the field includes this header. It includes the expiry-date and rule-id key value pairs providing object expiration information. The value of the rule-id is URL encoded.
  final String? expiration;
  /// The date and time at which the object is no longer cacheable.
  final String? expires;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? key;
  /// Last modified date of the object in RFC1123 format (e.g. `Mon, 02 Jan 2006 15:04:05 MST`)
  final String? lastModified;
  /// A map of metadata stored with the object in Spaces
  final Map<String, String>? metadata;
  final String? range;
  final String? region;
  /// The latest version ID of the object returned.
  final String? versionId;
  /// If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Spaces stores the value of this header in the object metadata.
  final String? websiteRedirectLocation;

  /// Creates a new [GetSpacesBucketObjectResult].
  /// [body] Object data (see **limitations above** to understand cases in which this field is actually available)
  /// [bucket] Optional.
  /// [cacheControl] Specifies caching behavior along the request/reply chain.
  /// [contentDisposition] Specifies presentational information for the object.
  /// [contentEncoding] Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.
  /// [contentLanguage] The language the content is in.
  /// [contentLength] Size of the body in bytes.
  /// [contentType] A standard MIME type describing the format of the object data.
  /// [etag] [ETag](https://en.wikipedia.org/wiki/HTTP_ETag) generated for the object (an MD5 sum of the object content in case it's not encrypted)
  /// [expiration] If the object expiration is configured (see [object lifecycle management](http://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html)), the field includes this header. It includes the expiry-date and rule-id key value pairs providing object expiration information. The value of the rule-id is URL encoded.
  /// [expires] The date and time at which the object is no longer cacheable.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [key] Optional.
  /// [lastModified] Last modified date of the object in RFC1123 format (e.g. `Mon, 02 Jan 2006 15:04:05 MST`)
  /// [metadata] A map of metadata stored with the object in Spaces
  /// [range] Optional.
  /// [region] Optional.
  /// [versionId] The latest version ID of the object returned.
  /// [websiteRedirectLocation] If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Spaces stores the value of this header in the object metadata.
  const GetSpacesBucketObjectResult({
    this.body,
    this.bucket,
    this.cacheControl,
    this.contentDisposition,
    this.contentEncoding,
    this.contentLanguage,
    this.contentLength,
    this.contentType,
    this.etag,
    this.expiration,
    this.expires,
    this.id,
    this.key,
    this.lastModified,
    this.metadata,
    this.range,
    this.region,
    this.versionId,
    this.websiteRedirectLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': ?body,
      'bucket': ?bucket,
      'cacheControl': ?cacheControl,
      'contentDisposition': ?contentDisposition,
      'contentEncoding': ?contentEncoding,
      'contentLanguage': ?contentLanguage,
      'contentLength': ?contentLength,
      'contentType': ?contentType,
      'etag': ?etag,
      'expiration': ?expiration,
      'expires': ?expires,
      'id': ?id,
      'key': ?key,
      'lastModified': ?lastModified,
      'metadata': ?metadata,
      'range': ?range,
      'region': ?region,
      'versionId': ?versionId,
      'websiteRedirectLocation': ?websiteRedirectLocation,
    };
  }

  factory GetSpacesBucketObjectResult.fromMap(Map<String, dynamic> map) {
    return GetSpacesBucketObjectResult(
      body: (() { final guardedValue = map['body']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cacheControl: (() { final guardedValue = map['cacheControl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentDisposition: (() { final guardedValue = map['contentDisposition']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentEncoding: (() { final guardedValue = map['contentEncoding']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentLanguage: (() { final guardedValue = map['contentLanguage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentLength: (() { final guardedValue = map['contentLength']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiration: (() { final guardedValue = map['expiration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expires: (() { final guardedValue = map['expires']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModified: (() { final guardedValue = map['lastModified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      range: (() { final guardedValue = map['range']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionId: (() { final guardedValue = map['versionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      websiteRedirectLocation: (() { final guardedValue = map['websiteRedirectLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
