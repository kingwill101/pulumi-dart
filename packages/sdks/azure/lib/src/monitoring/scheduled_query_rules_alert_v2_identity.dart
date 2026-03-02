// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduledQueryRulesAlertV2Identity {
  /// A list of User Assigned Managed Identity IDs to be assigned to this Scheduled Query Rule.
  ///
  /// > **Note:** This is required when `type` is set to `UserAssigned`. The identity associated must have required roles, read the [Azure documentation](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/alerts-create-log-alert-rule#configure-the-alert-rule-details) for more information.
  final pulumi.Input<List<String>>? identityIds;
  /// The Principal ID for the Service Principal associated with the Managed Service Identity of this App Service slot.
  final pulumi.Input<String>? principalId;
  /// The Tenant ID for the Service Principal associated with the Managed Service Identity of this App Service slot.
  final pulumi.Input<String>? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on this Scheduled Query Rule. Possible values are `SystemAssigned`, `UserAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [ScheduledQueryRulesAlertV2Identity].
  /// [identityIds] A list of User Assigned Managed Identity IDs to be assigned to this Scheduled Query Rule.
  /// [principalId] The Principal ID for the Service Principal associated with the Managed Service Identity of this App Service slot.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Managed Service Identity of this App Service slot.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this Scheduled Query Rule. Possible values are `SystemAssigned`, `UserAssigned`.
  ScheduledQueryRulesAlertV2Identity({
    this.identityIds,
    this.principalId,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': ?identityIds,
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory ScheduledQueryRulesAlertV2Identity.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryRulesAlertV2Identity(
      identityIds: map['identityIds'] == null ? null : ((map['identityIds']! as List).cast<String>()).input(),
      principalId: map['principalId'] == null ? null : (map['principalId']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

