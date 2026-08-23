// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_integrations_azure_dev_ops_integration_args_doc}
/// The set of arguments for AzureDevOpsIntegration.
/// {@endtemplate}
/// {@macro pulumi_api_integrations_azure_dev_ops_integration_args_doc}
class AzureDevOpsIntegrationArgs {
  /// Whether detailed property-level diffs are disabled for PR comments
  final pulumi.Input<bool>? disableDetailedDiff;
  /// Whether Neo AI summaries are disabled for this integration
  final pulumi.Input<bool>? disableNeoSummaries;
  /// Whether PR comments are disabled for this integration
  final pulumi.Input<bool>? disablePRComments;
  /// The Azure DevOps integration identifier
  final pulumi.Input<String> integrationId;
  /// The organization name
  final pulumi.Input<String> orgName;

  /// Creates a new [AzureDevOpsIntegrationArgs].
  /// [disableDetailedDiff] Whether detailed property-level diffs are disabled for PR comments
  /// [disableNeoSummaries] Whether Neo AI summaries are disabled for this integration
  /// [disablePRComments] Whether PR comments are disabled for this integration
  /// [integrationId] The Azure DevOps integration identifier
  /// [orgName] The organization name
  const AzureDevOpsIntegrationArgs({
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

  factory AzureDevOpsIntegrationArgs.fromMap(Map<String, dynamic> map) {
    return AzureDevOpsIntegrationArgs(
      disableDetailedDiff: (() { final guardedValue = map['disableDetailedDiff']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableNeoSummaries: (() { final guardedValue = map['disableNeoSummaries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disablePRComments: (() { final guardedValue = map['disablePRComments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      integrationId: pulumi.Input.fromValue(map['integrationId'] as String),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
    );
  }
}
