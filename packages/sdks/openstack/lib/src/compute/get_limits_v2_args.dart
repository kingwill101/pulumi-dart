// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_limits_v2_get_limits_v2_args_doc}
/// Arguments for getLimitsV2.
/// {@endtemplate}
/// {@macro pulumi_compute_get_limits_v2_get_limits_v2_args_doc}
class GetLimitsV2Args {
  /// The id of the project to retrieve the limits.
  final pulumi.Input<String> projectId;
  /// The region in which to obtain the V2 Compute client.
  /// If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;

  /// Creates a new [GetLimitsV2Args].
  /// [projectId] The id of the project to retrieve the limits.
  /// [region] The region in which to obtain the V2 Compute client.
  GetLimitsV2Args({
    required this.projectId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectId': projectId,
      'region': ?region,
    };
  }

  factory GetLimitsV2Args.fromMap(Map<String, dynamic> map) {
    return GetLimitsV2Args(
      projectId: (map['projectId'] as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
    );
  }
}

