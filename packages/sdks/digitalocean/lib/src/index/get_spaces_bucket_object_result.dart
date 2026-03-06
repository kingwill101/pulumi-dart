// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSpacesBucketObject.
class GetSpacesBucketObjectResult {
  /// Object data (see **limitations above** to understand cases in which this field is actually available)
  final String body;
  final String bucket;
  /// Specifies caching behavior along the request/reply chain.
  final String cacheControl;
  /// Specifies presentational information for the object.
  final String contentDisposition;
  /// Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.
  final String contentEncoding;
  /// The language the content is in.
  final String contentLanguage;
  /// Size of the body in bytes.
  final int contentLength;
  /// A standard MIME type describing the format of the object data.
  final String contentType;
  /// [ETag](https://en.wikipedia.org/wiki/HTTP_ETag) generated for the object (an MD5 sum of the object content in case it's not encrypted)
  final String etag;
  /// If the object expiration is configured (see [object lifecycle management](http://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html)), the field includes this header. It includes the expiry-date and rule-id key value pairs providing object expiration information. The value of the rule-id is URL encoded.
  final String expiration;
  /// The date and time at which the object is no longer cacheable.
  final String expires;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String key;
  /// Last modified date of the object in RFC1123 format (e.g. `Mon, 02 Jan 2006 15:04:05 MST`)
  final String lastModified;
  /// A map of metadata stored with the object in Spaces
  final Map<String, String> metadata;
  final String? range;
  final String region;
  /// The latest version ID of the object returned.
  final String versionId;
  /// If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Spaces stores the value of this header in the object metadata.
  final String websiteRedirectLocation;

  /// Creates a new [GetSpacesBucketObjectResult].
  /// [body] Object data (see **limitations above** to understand cases in which this field is actually available)
  /// [bucket] Required.
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
  /// [key] Required.
  /// [lastModified] Last modified date of the object in RFC1123 format (e.g. `Mon, 02 Jan 2006 15:04:05 MST`)
  /// [metadata] A map of metadata stored with the object in Spaces
  /// [range] Optional.
  /// [region] Required.
  /// [versionId] The latest version ID of the object returned.
  /// [websiteRedirectLocation] If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Spaces stores the value of this header in the object metadata.
  const GetSpacesBucketObjectResult({
    required this.body,
    required this.bucket,
    required this.cacheControl,
    required this.contentDisposition,
    required this.contentEncoding,
    required this.contentLanguage,
    required this.contentLength,
    required this.contentType,
    required this.etag,
    required this.expiration,
    required this.expires,
    required this.id,
    required this.key,
    required this.lastModified,
    required this.metadata,
    this.range,
    required this.region,
    required this.versionId,
    required this.websiteRedirectLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': body,
      'bucket': bucket,
      'cacheControl': cacheControl,
      'contentDisposition': contentDisposition,
      'contentEncoding': contentEncoding,
      'contentLanguage': contentLanguage,
      'contentLength': contentLength,
      'contentType': contentType,
      'etag': etag,
      'expiration': expiration,
      'expires': expires,
      'id': id,
      'key': key,
      'lastModified': lastModified,
      'metadata': metadata,
      'range': ?range,
      'region': region,
      'versionId': versionId,
      'websiteRedirectLocation': websiteRedirectLocation,
    };
  }

  factory GetSpacesBucketObjectResult.fromMap(Map<String, dynamic> map) {
    return GetSpacesBucketObjectResult(
      body: map['body'] as String,
      bucket: map['bucket'] as String,
      cacheControl: map['cacheControl'] as String,
      contentDisposition: map['contentDisposition'] as String,
      contentEncoding: map['contentEncoding'] as String,
      contentLanguage: map['contentLanguage'] as String,
      contentLength: map['contentLength'] as int,
      contentType: map['contentType'] as String,
      etag: map['etag'] as String,
      expiration: map['expiration'] as String,
      expires: map['expires'] as String,
      id: map['id'] as String,
      key: map['key'] as String,
      lastModified: map['lastModified'] as String,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      range: (() { final guardedValue = map['range']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: map['region'] as String,
      versionId: map['versionId'] as String,
      websiteRedirectLocation: map['websiteRedirectLocation'] as String,
    );
  }
}

