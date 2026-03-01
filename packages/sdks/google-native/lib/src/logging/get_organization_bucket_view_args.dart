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
  GetOrganizationBucketViewArgs({
    required pulumi.Output<String> bucketId,
    required pulumi.Output<String> location,
    required pulumi.Output<String> organizationId,
    required pulumi.Output<String> viewId,
  }) :
      bucketId = pulumi.Input.asInput<String>(bucketId),
      location = pulumi.Input.asInput<String>(location),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      viewId = pulumi.Input.asInput<String>(viewId);

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
      bucketId: pulumi.Output.create<String>(map['bucketId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
      viewId: pulumi.Output.create<String>(map['viewId'] as String),
    );
  }
}

