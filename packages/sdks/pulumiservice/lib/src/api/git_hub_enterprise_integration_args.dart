// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_integrations_git_hub_enterprise_integration_args_doc}
/// The set of arguments for GitHubEnterpriseIntegration.
/// {@endtemplate}
/// {@macro pulumi_api_integrations_git_hub_enterprise_integration_args_doc}
class GitHubEnterpriseIntegrationArgs {
  /// Whether to disable code access for AI reviews
  final pulumi.Input<bool>? disableCodeAccessForReviews;
  /// Whether to disable detailed property-level diffs in PR comments
  final pulumi.Input<bool>? disableDetailedDiff;
  /// Whether to disable Neo AI summaries on PRs
  final pulumi.Input<bool>? disableNeoSummaries;
  /// Whether to disable PR comments from the Pulumi GitHub App
  final pulumi.Input<bool>? disablePRComments;
  /// The GitHub Enterprise integration identifier
  final pulumi.Input<String> integrationId;
  /// The organization name
  final pulumi.Input<String> orgName;

  /// Creates a new [GitHubEnterpriseIntegrationArgs].
  /// [disableCodeAccessForReviews] Whether to disable code access for AI reviews
  /// [disableDetailedDiff] Whether to disable detailed property-level diffs in PR comments
  /// [disableNeoSummaries] Whether to disable Neo AI summaries on PRs
  /// [disablePRComments] Whether to disable PR comments from the Pulumi GitHub App
  /// [integrationId] The GitHub Enterprise integration identifier
  /// [orgName] The organization name
  const GitHubEnterpriseIntegrationArgs({
    this.disableCodeAccessForReviews,
    this.disableDetailedDiff,
    this.disableNeoSummaries,
    this.disablePRComments,
    required this.integrationId,
    required this.orgName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableCodeAccessForReviews': ?disableCodeAccessForReviews,
      'disableDetailedDiff': ?disableDetailedDiff,
      'disableNeoSummaries': ?disableNeoSummaries,
      'disablePRComments': ?disablePRComments,
      'integrationId': integrationId,
      'orgName': orgName,
    };
  }

  factory GitHubEnterpriseIntegrationArgs.fromMap(Map<String, dynamic> map) {
    return GitHubEnterpriseIntegrationArgs(
      disableCodeAccessForReviews: (() { final guardedValue = map['disableCodeAccessForReviews']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableDetailedDiff: (() { final guardedValue = map['disableDetailedDiff']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableNeoSummaries: (() { final guardedValue = map['disableNeoSummaries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disablePRComments: (() { final guardedValue = map['disablePRComments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      integrationId: pulumi.Input.fromValue(map['integrationId'] as String),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
    );
  }
}
