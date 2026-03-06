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
  const GetOrganizationBucketLinkArgs({
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
      bucketId: pulumi.Input.fromValue(map['bucketId'] as String),
      linkId: pulumi.Input.fromValue(map['linkId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}

