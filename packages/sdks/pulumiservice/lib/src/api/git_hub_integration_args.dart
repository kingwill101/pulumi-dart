// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_integrations_git_hub_integration_args_doc}
/// The set of arguments for GitHubIntegration.
/// {@endtemplate}
/// {@macro pulumi_api_integrations_git_hub_integration_args_doc}
class GitHubIntegrationArgs {
  /// Whether to disable code access for AI reviews
  final pulumi.Input<bool?>? disableCodeAccessForReviews;
  /// Whether to disable detailed property-level diffs in PR comments
  final pulumi.Input<bool?>? disableDetailedDiff;
  /// Whether to disable PR comments while a pull request is in draft
  final pulumi.Input<bool?>? disableDraftPRComments;
  /// Whether to disable Neo AI summaries on PRs
  final pulumi.Input<bool?>? disableNeoSummaries;
  /// Whether to disable PR comments from the Pulumi GitHub App
  final pulumi.Input<bool?>? disablePRComments;
  /// Whether per-user (individual) GitHub Enterprise authentication is enabled. Only applies to self-hosted GitHub Enterprise installations.
  final pulumi.Input<bool?>? individualAuthEnabled;
  /// The GitHub App integration identifier
  final pulumi.Input<String> integrationId;
  /// The organization name
  final pulumi.Input<String> orgName;

  /// Creates a new [GitHubIntegrationArgs].
  /// [disableCodeAccessForReviews] Whether to disable code access for AI reviews
  /// [disableDetailedDiff] Whether to disable detailed property-level diffs in PR comments
  /// [disableDraftPRComments] Whether to disable PR comments while a pull request is in draft
  /// [disableNeoSummaries] Whether to disable Neo AI summaries on PRs
  /// [disablePRComments] Whether to disable PR comments from the Pulumi GitHub App
  /// [individualAuthEnabled] Whether per-user (individual) GitHub Enterprise authentication is enabled. Only applies to self-hosted GitHub Enterprise installations.
  /// [integrationId] The GitHub App integration identifier
  /// [orgName] The organization name
  const GitHubIntegrationArgs({
    this.disableCodeAccessForReviews,
    this.disableDetailedDiff,
    this.disableDraftPRComments,
    this.disableNeoSummaries,
    this.disablePRComments,
    this.individualAuthEnabled,
    required this.integrationId,
    required this.orgName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableCodeAccessForReviews': ?disableCodeAccessForReviews,
      'disableDetailedDiff': ?disableDetailedDiff,
      'disableDraftPRComments': ?disableDraftPRComments,
      'disableNeoSummaries': ?disableNeoSummaries,
      'disablePRComments': ?disablePRComments,
      'individualAuthEnabled': ?individualAuthEnabled,
      'integrationId': integrationId,
      'orgName': orgName,
    };
  }

  factory GitHubIntegrationArgs.fromMap(Map<String, dynamic> map) {
    return GitHubIntegrationArgs(
      disableCodeAccessForReviews: (() { final guardedValue = map['disableCodeAccessForReviews']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableDetailedDiff: (() { final guardedValue = map['disableDetailedDiff']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableDraftPRComments: (() { final guardedValue = map['disableDraftPRComments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableNeoSummaries: (() { final guardedValue = map['disableNeoSummaries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disablePRComments: (() { final guardedValue = map['disablePRComments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      individualAuthEnabled: (() { final guardedValue = map['individualAuthEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      integrationId: pulumi.Input.fromValue(map['integrationId'] as String),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
    );
  }
}
