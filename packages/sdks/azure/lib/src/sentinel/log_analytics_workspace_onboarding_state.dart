// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LogAnalyticsWorkspaceOnboarding resources.
class LogAnalyticsWorkspaceOnboardingState {
  /// Specifies if the Workspace is using Customer managed key. Defaults to `false`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** To set up Microsoft Sentinel customer-managed key it needs to enable CMK on the workspace and add access policy to your Azure Key Vault. Details could be found on [this document](https://learn.microsoft.com/en-us/azure/sentinel/customer-managed-keys)
  ///
  /// &gt; **Note:** Once a workspace is onboarded to Microsoft Sentinel with `customerManagedKeyEnabled` set to true, it will not be able to be onboarded again with `customerManagedKeyEnabled` set to false.
  final pulumi.Input<bool?>? customerManagedKeyEnabled;
  /// Specifies the Workspace Id. Changing this forces the Log Analytics Workspace off the board and onboard again. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? workspaceId;

  /// Creates a new [LogAnalyticsWorkspaceOnboardingState].
  /// [customerManagedKeyEnabled] Specifies if the Workspace is using Customer managed key. Defaults to `false`. Changing this forces a new resource to be created.
  /// [workspaceId] Specifies the Workspace Id. Changing this forces the Log Analytics Workspace off the board and onboard again. Changing this forces a new resource to be created.
  const LogAnalyticsWorkspaceOnboardingState({
    this.customerManagedKeyEnabled,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyEnabled': ?customerManagedKeyEnabled,
      'workspaceId': ?workspaceId,
    };
  }

  factory LogAnalyticsWorkspaceOnboardingState.fromMap(Map<String, dynamic> map) {
    return LogAnalyticsWorkspaceOnboardingState(
      customerManagedKeyEnabled: (() { final guardedValue = map['customerManagedKeyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
