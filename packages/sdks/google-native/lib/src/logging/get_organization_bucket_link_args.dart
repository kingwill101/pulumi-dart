// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_get_organization_bucket_link_args_doc}
/// Arguments for getOrganizationBucketLink.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_get_organization_bucket_link_args_doc}
class GetOrganizationBucketLinkArgs {
  final pulumi.Input<String> bucketId;
  final pulumi.Input<String> linkId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetOrganizationBucketLinkArgs].
  /// [bucketId] Required.
  /// [linkId] Required.
  /// [location] Required.
  /// [organizationId] Required.
  GetOrganizationBucketLinkArgs({
    required this.bucketId,
    required this.linkId,
    required this.location,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketId': bucketId,
      'linkId': linkId,
      'location': location,
      'organizationId': organizationId,
    };
  }

  factory GetOrganizationBucketLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationBucketLinkArgs(
      bucketId: (map['bucketId'] as String).input(),
      linkId: (map['linkId'] as String).input(),
      location: (map['location'] as String).input(),
      organizationId: (map['organizationId'] as String).input(),
    );
  }
}

