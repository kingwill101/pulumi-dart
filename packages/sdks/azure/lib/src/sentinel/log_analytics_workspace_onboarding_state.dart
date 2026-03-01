// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LogAnalyticsWorkspaceOnboarding resources.
class LogAnalyticsWorkspaceOnboardingState {
  /// Specifies if the Workspace is using Customer managed key. Defaults to `false`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** To set up Microsoft Sentinel customer-managed key it needs to enable CMK on the workspace and add access policy to your Azure Key Vault. Details could be found on [this document](https://learn.microsoft.com/en-us/azure/sentinel/customer-managed-keys)
  ///
  /// > **Note:** Once a workspace is onboarded to Microsoft Sentinel with `customer_managed_key_enabled` set to true, it will not be able to be onboarded again with `customer_managed_key_enabled` set to false.
  final pulumi.Input<bool>? customerManagedKeyEnabled;
  /// Specifies the Workspace Id. Changing this forces the Log Analytics Workspace off the board and onboard again. Changing this forces a new resource to be created.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [LogAnalyticsWorkspaceOnboardingState].
  /// [customerManagedKeyEnabled] Specifies if the Workspace is using Customer managed key. Defaults to `false`. Changing this forces a new resource to be created.
  /// [workspaceId] Specifies the Workspace Id. Changing this forces the Log Analytics Workspace off the board and onboard again. Changing this forces a new resource to be created.
  LogAnalyticsWorkspaceOnboardingState({
    pulumi.Output<bool>? customerManagedKeyEnabled,
    pulumi.Output<String>? workspaceId,
  }) :
      customerManagedKeyEnabled = pulumi.Input.asOptionalInput<bool>(customerManagedKeyEnabled),
      workspaceId = pulumi.Input.asOptionalInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyEnabled': ?customerManagedKeyEnabled,
      'workspaceId': ?workspaceId,
    };
  }

  factory LogAnalyticsWorkspaceOnboardingState.fromMap(Map<String, dynamic> map) {
    return LogAnalyticsWorkspaceOnboardingState(
      customerManagedKeyEnabled: map['customerManagedKeyEnabled'] == null ? null : pulumi.Output.create<bool>(map['customerManagedKeyEnabled'] as bool),
      workspaceId: map['workspaceId'] == null ? null : pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

