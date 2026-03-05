// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_get_quota_v2_get_quota_v2_args_doc}
/// Arguments for getQuotaV2.
/// {@endtemplate}
/// {@macro pulumi_networking_get_quota_v2_get_quota_v2_args_doc}
class GetQuotaV2Args {
  /// The id of the project to retrieve the quota.
  final pulumi.Input<String> projectId;
  /// The region in which to obtain the V2 Network client.
  /// If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;

  /// Creates a new [GetQuotaV2Args].
  /// [projectId] The id of the project to retrieve the quota.
  /// [region] The region in which to obtain the V2 Network client.
  GetQuotaV2Args({
    required this.projectId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectId': projectId,
      'region': ?region,
    };
  }

  factory GetQuotaV2Args.fromMap(Map<String, dynamic> map) {
    return GetQuotaV2Args(
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

