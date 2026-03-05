// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sentinel_log_analytics_workspace_onboarding_log_analytics_workspace_onboarding_args_doc}
/// The set of arguments for LogAnalyticsWorkspaceOnboarding.
/// {@endtemplate}
/// {@macro pulumi_sentinel_log_analytics_workspace_onboarding_log_analytics_workspace_onboarding_args_doc}
class LogAnalyticsWorkspaceOnboardingArgs {
  /// Specifies if the Workspace is using Customer managed key. Defaults to `false`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** To set up Microsoft Sentinel customer-managed key it needs to enable CMK on the workspace and add access policy to your Azure Key Vault. Details could be found on [this document](https://learn.microsoft.com/en-us/azure/sentinel/customer-managed-keys)
  ///
  /// &gt; **Note:** Once a workspace is onboarded to Microsoft Sentinel with `customer_managed_key_enabled` set to true, it will not be able to be onboarded again with `customer_managed_key_enabled` set to false.
  final pulumi.Input<bool>? customerManagedKeyEnabled;
  /// Specifies the Workspace Id. Changing this forces the Log Analytics Workspace off the board and onboard again. Changing this forces a new resource to be created.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [LogAnalyticsWorkspaceOnboardingArgs].
  /// [customerManagedKeyEnabled] Specifies if the Workspace is using Customer managed key. Defaults to `false`. Changing this forces a new resource to be created.
  /// [workspaceId] Specifies the Workspace Id. Changing this forces the Log Analytics Workspace off the board and onboard again. Changing this forces a new resource to be created.
  LogAnalyticsWorkspaceOnboardingArgs({
    this.customerManagedKeyEnabled,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyEnabled': ?customerManagedKeyEnabled,
      'workspaceId': workspaceId,
    };
  }

  factory LogAnalyticsWorkspaceOnboardingArgs.fromMap(Map<String, dynamic> map) {
    return LogAnalyticsWorkspaceOnboardingArgs(
      customerManagedKeyEnabled: (() { final guardedValue = map['customerManagedKeyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}

