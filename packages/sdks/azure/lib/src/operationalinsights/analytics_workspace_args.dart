// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_workspace_identity.dart';

/// {@template pulumi_operationalinsights_analytics_workspace_analytics_workspace_args_doc}
/// The set of arguments for AnalyticsWorkspace.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_analytics_workspace_analytics_workspace_args_doc}
class AnalyticsWorkspaceArgs {
  /// Specifies if the log Analytics Workspace allows users accessing to data associated with the resources they have permission to view, without permission to workspace. Defaults to `true`.
  final pulumi.Input<bool>? allowResourceOnlyPermissions;
  /// Is Customer Managed Storage mandatory for query management?
  final pulumi.Input<bool>? cmkForQueryForced;
  /// The workspace daily quota for ingestion in GB. Defaults to `-1` (unlimited) if omitted.
  final pulumi.Input<double>? dailyQuotaGb;
  /// The ID of the Data Collection Rule to use for this workspace.
  final pulumi.Input<String>? dataCollectionRuleId;
  /// An `identity` block as defined below.
  final pulumi.Input<AnalyticsWorkspaceIdentity>? identity;
  /// Whether to remove the data in the Log Analytics Workspace immediately after 30 days.
  final pulumi.Input<bool>? immediateDataPurgeOn30DaysEnabled;
  /// Should the Log Analytics Workspace support ingestion over the Public Internet? Defaults to `true`.
  final pulumi.Input<bool>? internetIngestionEnabled;
  /// Should the Log Analytics Workspace support querying over the Public Internet? Defaults to `true`.
  final pulumi.Input<bool>? internetQueryEnabled;
  final pulumi.Input<bool>? localAuthenticationDisabled;
  /// Specifies if the log Analytics workspace should allow local authentication methods in addition to Microsoft Entra (Azure AD). Defaults to `true`.
  final pulumi.Input<bool>? localAuthenticationEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Log Analytics Workspace. Workspace name should include 4-63 letters, digits or '-'. The '-' shouldn't be the first or the last symbol. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The capacity reservation level in GB for this workspace. Possible values are `100`, `200`, `300`, `400`, `500`, `1000`, `2000` and `5000`.
  ///
  /// &gt; **Note:** `reservation_capacity_in_gb_per_day` can only be used when the `sku` is set to `CapacityReservation`.
  final pulumi.Input<int>? reservationCapacityInGbPerDay;
  /// The name of the resource group in which the Log Analytics workspace is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The workspace data retention in days. Possible values are between `30` and `730`.
  final pulumi.Input<int>? retentionInDays;
  /// Specifies the SKU of the Log Analytics Workspace. Possible values are `PerGB2018`, `PerNode`, `Premium`, `Standalone`, `Standard`, `CapacityReservation`, `LACluster` and `Unlimited`. Defaults to `PerGB2018`.
  ///
  /// &gt; **Note:** `sku` should only be set to `LACluster` when the Log Analytics Workspace is linked to a Log Analytics Cluster. Additionally, `sku` cannot be modified while linked.
  ///
  /// &gt; **Note:** Changing `sku` forces a new Log Analytics Workspace to be created, except when changing between `PerGB2018` and `CapacityReservation`. Changing `sku` to `CapacityReservation` or changing `reservation_capacity_in_gb_per_day` to a higher tier will lead to a 31-days commitment period, during which the SKU cannot be changed to a lower one. Please refer to [official documentation](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/cost-logs#commitment-tiers) for further information.
  ///
  /// &gt; **Note:** A new pricing model took effect on `2018-04-03`, which requires the SKU `PerGB2018`. If you've provisioned resources before this date you have the option of remaining with the previous Pricing SKU and using the other SKUs defined above. More information about [the Pricing SKUs is available at the following URI](https://aka.ms/PricingTierWarning).
  final pulumi.Input<String>? sku;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AnalyticsWorkspaceArgs].
  /// [allowResourceOnlyPermissions] Specifies if the log Analytics Workspace allows users accessing to data associated with the resources they have permission to view, without permission to workspace. Defaults to `true`.
  /// [cmkForQueryForced] Is Customer Managed Storage mandatory for query management?
  /// [dailyQuotaGb] The workspace daily quota for ingestion in GB. Defaults to `-1` (unlimited) if omitted.
  /// [dataCollectionRuleId] The ID of the Data Collection Rule to use for this workspace.
  /// [identity] An `identity` block as defined below.
  /// [immediateDataPurgeOn30DaysEnabled] Whether to remove the data in the Log Analytics Workspace immediately after 30 days.
  /// [internetIngestionEnabled] Should the Log Analytics Workspace support ingestion over the Public Internet? Defaults to `true`.
  /// [internetQueryEnabled] Should the Log Analytics Workspace support querying over the Public Internet? Defaults to `true`.
  /// [localAuthenticationDisabled] Optional.
  /// [localAuthenticationEnabled] Specifies if the log Analytics workspace should allow local authentication methods in addition to Microsoft Entra (Azure AD). Defaults to `true`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Log Analytics Workspace. Workspace name should include 4-63 letters, digits or '-'. The '-' shouldn't be the first or the last symbol. Changing this forces a new resource to be created.
  /// [reservationCapacityInGbPerDay] The capacity reservation level in GB for this workspace. Possible values are `100`, `200`, `300`, `400`, `500`, `1000`, `2000` and `5000`.
  /// [resourceGroupName] The name of the resource group in which the Log Analytics workspace is created. Changing this forces a new resource to be created.
  /// [retentionInDays] The workspace data retention in days. Possible values are between `30` and `730`.
  /// [sku] Specifies the SKU of the Log Analytics Workspace. Possible values are `PerGB2018`, `PerNode`, `Premium`, `Standalone`, `Standard`, `CapacityReservation`, `LACluster` and `Unlimited`. Defaults to `PerGB2018`.
  /// [tags] A mapping of tags to assign to the resource.
  const AnalyticsWorkspaceArgs({
    this.allowResourceOnlyPermissions,
    this.cmkForQueryForced,
    this.dailyQuotaGb,
    this.dataCollectionRuleId,
    this.identity,
    this.immediateDataPurgeOn30DaysEnabled,
    this.internetIngestionEnabled,
    this.internetQueryEnabled,
    this.localAuthenticationDisabled,
    this.localAuthenticationEnabled,
    this.location,
    this.name,
    this.reservationCapacityInGbPerDay,
    required this.resourceGroupName,
    this.retentionInDays,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowResourceOnlyPermissions': ?allowResourceOnlyPermissions,
      'cmkForQueryForced': ?cmkForQueryForced,
      'dailyQuotaGb': ?dailyQuotaGb,
      'dataCollectionRuleId': ?dataCollectionRuleId,
      'identity': ?pulumi.Input.mapOptionalInputValue<AnalyticsWorkspaceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'immediateDataPurgeOn30DaysEnabled': ?immediateDataPurgeOn30DaysEnabled,
      'internetIngestionEnabled': ?internetIngestionEnabled,
      'internetQueryEnabled': ?internetQueryEnabled,
      'localAuthenticationDisabled': ?localAuthenticationDisabled,
      'localAuthenticationEnabled': ?localAuthenticationEnabled,
      'location': ?location,
      'name': ?name,
      'reservationCapacityInGbPerDay': ?reservationCapacityInGbPerDay,
      'resourceGroupName': resourceGroupName,
      'retentionInDays': ?retentionInDays,
      'sku': ?sku,
      'tags': ?tags,
    };
  }

  factory AnalyticsWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return AnalyticsWorkspaceArgs(
      allowResourceOnlyPermissions: (() { final guardedValue = map['allowResourceOnlyPermissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cmkForQueryForced: (() { final guardedValue = map['cmkForQueryForced']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dailyQuotaGb: (() { final guardedValue = map['dailyQuotaGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      dataCollectionRuleId: (() { final guardedValue = map['dataCollectionRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalyticsWorkspaceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      immediateDataPurgeOn30DaysEnabled: (() { final guardedValue = map['immediateDataPurgeOn30DaysEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      internetIngestionEnabled: (() { final guardedValue = map['internetIngestionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      internetQueryEnabled: (() { final guardedValue = map['internetQueryEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      localAuthenticationDisabled: (() { final guardedValue = map['localAuthenticationDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      localAuthenticationEnabled: (() { final guardedValue = map['localAuthenticationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservationCapacityInGbPerDay: (() { final guardedValue = map['reservationCapacityInGbPerDay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      retentionInDays: (() { final guardedValue = map['retentionInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

