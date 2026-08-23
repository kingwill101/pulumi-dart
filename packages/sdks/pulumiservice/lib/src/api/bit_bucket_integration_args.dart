// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_integrations_bit_bucket_integration_args_doc}
/// The set of arguments for BitBucketIntegration.
/// {@endtemplate}
/// {@macro pulumi_api_integrations_bit_bucket_integration_args_doc}
class BitBucketIntegrationArgs {
  /// If true, disable detailed property-level diffs in PR comments.
  final pulumi.Input<bool>? disableDetailedDiff;
  /// If true, disable Neo AI-generated deployment summaries in PR comments.
  final pulumi.Input<bool>? disableNeoSummaries;
  /// If true, disable automatic PR comments on deployments.
  final pulumi.Input<bool>? disablePRComments;
  /// The BitBucket integration identifier
  final pulumi.Input<String> integrationId;
  /// The organization name
  final pulumi.Input<String> orgName;

  /// Creates a new [BitBucketIntegrationArgs].
  /// [disableDetailedDiff] If true, disable detailed property-level diffs in PR comments.
  /// [disableNeoSummaries] If true, disable Neo AI-generated deployment summaries in PR comments.
  /// [disablePRComments] If true, disable automatic PR comments on deployments.
  /// [integrationId] The BitBucket integration identifier
  /// [orgName] The organization name
  const BitBucketIntegrationArgs({
    this.disableDetailedDiff,
    this.disableNeoSummaries,
    this.disablePRComments,
    required this.integrationId,
    required this.orgName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableDetailedDiff': ?disableDetailedDiff,
      'disableNeoSummaries': ?disableNeoSummaries,
      'disablePRComments': ?disablePRComments,
      'integrationId': integrationId,
      'orgName': orgName,
    };
  }

  factory BitBucketIntegrationArgs.fromMap(Map<String, dynamic> map) {
    return BitBucketIntegrationArgs(
      disableDetailedDiff: (() { final guardedValue = map['disableDetailedDiff']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableNeoSummaries: (() { final guardedValue = map['disableNeoSummaries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disablePRComments: (() { final guardedValue = map['disablePRComments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      integrationId: pulumi.Input.fromValue(map['integrationId'] as String),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
    );
  }
}
