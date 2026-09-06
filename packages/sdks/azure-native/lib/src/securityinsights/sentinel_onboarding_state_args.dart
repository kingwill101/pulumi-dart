// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_sentinel_onboarding_state_args_doc}
/// The set of arguments for SentinelOnboardingState.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_sentinel_onboarding_state_args_doc}
class SentinelOnboardingStateArgs {
  /// Flag that indicates the status of the CMK setting
  final pulumi.Input<bool?>? customerManagedKey;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The Sentinel onboarding state name. Supports - default
  final pulumi.Input<String?>? sentinelOnboardingStateName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [SentinelOnboardingStateArgs].
  /// [customerManagedKey] Flag that indicates the status of the CMK setting
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sentinelOnboardingStateName] The Sentinel onboarding state name. Supports - default
  /// [workspaceName] The name of the workspace.
  const SentinelOnboardingStateArgs({
    this.customerManagedKey,
    required this.resourceGroupName,
    this.sentinelOnboardingStateName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKey': ?customerManagedKey,
      'resourceGroupName': resourceGroupName,
      'sentinelOnboardingStateName': ?sentinelOnboardingStateName,
      'workspaceName': workspaceName,
    };
  }

  factory SentinelOnboardingStateArgs.fromMap(Map<String, dynamic> map) {
    return SentinelOnboardingStateArgs(
      customerManagedKey: (() { final guardedValue = map['customerManagedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sentinelOnboardingStateName: (() { final guardedValue = map['sentinelOnboardingStateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
