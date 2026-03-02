// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_sentinel_onboarding_state_args_doc}
/// Arguments for getSentinelOnboardingState.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_sentinel_onboarding_state_args_doc}
class GetSentinelOnboardingStateArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The Sentinel onboarding state name. Supports - default
  final pulumi.Input<String> sentinelOnboardingStateName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetSentinelOnboardingStateArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sentinelOnboardingStateName] The Sentinel onboarding state name. Supports - default
  /// [workspaceName] The name of the workspace.
  GetSentinelOnboardingStateArgs({
    required this.resourceGroupName,
    required this.sentinelOnboardingStateName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'sentinelOnboardingStateName': sentinelOnboardingStateName,
      'workspaceName': workspaceName,
    };
  }

  factory GetSentinelOnboardingStateArgs.fromMap(Map<String, dynamic> map) {
    return GetSentinelOnboardingStateArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sentinelOnboardingStateName: (map['sentinelOnboardingStateName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

