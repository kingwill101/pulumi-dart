// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_get_organization_bucket_view_args_doc}
/// Arguments for getOrganizationBucketView.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_get_organization_bucket_view_args_doc}
class GetOrganizationBucketViewArgs {
  final pulumi.Input<String> bucketId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> viewId;

  /// Creates a new [GetOrganizationBucketViewArgs].
  /// [bucketId] Required.
  /// [location] Required.
  /// [organizationId] Required.
  /// [viewId] Required.
  const GetOrganizationBucketViewArgs({
    required this.bucketId,
    required this.location,
    required this.organizationId,
    required this.viewId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketId': bucketId,
      'location': location,
      'organizationId': organizationId,
      'viewId': viewId,
    };
  }

  factory GetOrganizationBucketViewArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationBucketViewArgs(
      bucketId: pulumi.Input.fromValue(map['bucketId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      viewId: pulumi.Input.fromValue(map['viewId'] as String),
    );
  }
}
