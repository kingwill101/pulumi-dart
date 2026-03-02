// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSpacesBucketsBucket {
  /// The FQDN of the bucket (e.g. bucket-name.nyc3.digitaloceanspaces.com)
  final pulumi.Input<String> bucketDomainName;
  /// The FQDN of the bucket without the bucket name (e.g. nyc3.digitaloceanspaces.com)
  final pulumi.Input<String> endpoint;
  /// The name of the Spaces bucket
  final pulumi.Input<String> name;
  /// The slug of the region where the bucket is stored.
  final pulumi.Input<String> region;
  /// The uniform resource name of the bucket
  final pulumi.Input<String> urn;

  /// Creates a new [GetSpacesBucketsBucket].
  /// [bucketDomainName] The FQDN of the bucket (e.g. bucket-name.nyc3.digitaloceanspaces.com)
  /// [endpoint] The FQDN of the bucket without the bucket name (e.g. nyc3.digitaloceanspaces.com)
  /// [name] The name of the Spaces bucket
  /// [region] The slug of the region where the bucket is stored.
  /// [urn] The uniform resource name of the bucket
  GetSpacesBucketsBucket({
    required this.bucketDomainName,
    required this.endpoint,
    required this.name,
    required this.region,
    required this.urn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketDomainName': bucketDomainName,
      'endpoint': endpoint,
      'name': name,
      'region': region,
      'urn': urn,
    };
  }

  factory GetSpacesBucketsBucket.fromMap(Map<String, dynamic> map) {
    return GetSpacesBucketsBucket(
      bucketDomainName: (map['bucketDomainName'] as String).input(),
      endpoint: (map['endpoint'] as String).input(),
      name: (map['name'] as String).input(),
      region: (map['region'] as String).input(),
      urn: (map['urn'] as String).input(),
    );
  }
}

