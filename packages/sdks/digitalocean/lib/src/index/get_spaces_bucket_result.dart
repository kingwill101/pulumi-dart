// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSpacesBucket.
class GetSpacesBucketResult {
  /// The FQDN of the bucket (e.g. bucket-name.nyc3.digitaloceanspaces.com)
  final String? bucketDomainName;
  /// The FQDN of the bucket without the bucket name (e.g. nyc3.digitaloceanspaces.com)
  final String? endpoint;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The name of the Spaces bucket
  final String? name;
  /// The slug of the region where the bucket is stored.
  final String? region;
  /// The uniform resource name of the bucket
  final String? urn;

  /// Creates a new [GetSpacesBucketResult].
  /// [bucketDomainName] The FQDN of the bucket (e.g. bucket-name.nyc3.digitaloceanspaces.com)
  /// [endpoint] The FQDN of the bucket without the bucket name (e.g. nyc3.digitaloceanspaces.com)
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The name of the Spaces bucket
  /// [region] The slug of the region where the bucket is stored.
  /// [urn] The uniform resource name of the bucket
  const GetSpacesBucketResult({
    this.bucketDomainName,
    this.endpoint,
    this.id,
    this.name,
    this.region,
    this.urn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketDomainName': ?bucketDomainName,
      'endpoint': ?endpoint,
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'urn': ?urn,
    };
  }

  factory GetSpacesBucketResult.fromMap(Map<String, dynamic> map) {
    return GetSpacesBucketResult(
      bucketDomainName: (() { final guardedValue = map['bucketDomainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      urn: (() { final guardedValue = map['urn']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
