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
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sentinelOnboardingStateName,
    required pulumi.Output<String> workspaceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sentinelOnboardingStateName = pulumi.Input.asInput<String>(sentinelOnboardingStateName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'sentinelOnboardingStateName': sentinelOnboardingStateName,
      'workspaceName': workspaceName,
    };
  }

  factory GetSentinelOnboardingStateArgs.fromMap(Map<String, dynamic> map) {
    return GetSentinelOnboardingStateArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sentinelOnboardingStateName: pulumi.Output.create<String>(map['sentinelOnboardingStateName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

