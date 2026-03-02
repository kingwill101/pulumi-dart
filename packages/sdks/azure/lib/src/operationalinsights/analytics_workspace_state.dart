// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_workspace_identity.dart';

/// Input properties used for looking up and filtering AnalyticsWorkspace resources.
class AnalyticsWorkspaceState {
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
  /// The Primary shared key for the Log Analytics Workspace.
  final pulumi.Input<String>? primarySharedKey;
  /// The capacity reservation level in GB for this workspace. Possible values are `100`, `200`, `300`, `400`, `500`, `1000`, `2000` and `5000`.
  ///
  /// > **Note:** `reservation_capacity_in_gb_per_day` can only be used when the `sku` is set to `CapacityReservation`.
  final pulumi.Input<int>? reservationCapacityInGbPerDay;
  /// The name of the resource group in which the Log Analytics workspace is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The workspace data retention in days. Possible values are between `30` and `730`.
  final pulumi.Input<int>? retentionInDays;
  /// The Secondary shared key for the Log Analytics Workspace.
  final pulumi.Input<String>? secondarySharedKey;
  /// Specifies the SKU of the Log Analytics Workspace. Possible values are `PerGB2018`, `PerNode`, `Premium`, `Standalone`, `Standard`, `CapacityReservation`, `LACluster` and `Unlimited`. Defaults to `PerGB2018`.
  ///
  /// > **Note:** `sku` should only be set to `LACluster` when the Log Analytics Workspace is linked to a Log Analytics Cluster. Additionally, `sku` cannot be modified while linked.
  ///
  /// > **Note:** Changing `sku` forces a new Log Analytics Workspace to be created, except when changing between `PerGB2018` and `CapacityReservation`. Changing `sku` to `CapacityReservation` or changing `reservation_capacity_in_gb_per_day` to a higher tier will lead to a 31-days commitment period, during which the SKU cannot be changed to a lower one. Please refer to [official documentation](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/cost-logs#commitment-tiers) for further information.
  ///
  /// > **Note:** A new pricing model took effect on `2018-04-03`, which requires the SKU `PerGB2018`. If you've provisioned resources before this date you have the option of remaining with the previous Pricing SKU and using the other SKUs defined above. More information about [the Pricing SKUs is available at the following URI](https://aka.ms/PricingTierWarning).
  final pulumi.Input<String>? sku;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Workspace (or Customer) ID for the Log Analytics Workspace.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [AnalyticsWorkspaceState].
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
  /// [primarySharedKey] The Primary shared key for the Log Analytics Workspace.
  /// [reservationCapacityInGbPerDay] The capacity reservation level in GB for this workspace. Possible values are `100`, `200`, `300`, `400`, `500`, `1000`, `2000` and `5000`.
  /// [resourceGroupName] The name of the resource group in which the Log Analytics workspace is created. Changing this forces a new resource to be created.
  /// [retentionInDays] The workspace data retention in days. Possible values are between `30` and `730`.
  /// [secondarySharedKey] The Secondary shared key for the Log Analytics Workspace.
  /// [sku] Specifies the SKU of the Log Analytics Workspace. Possible values are `PerGB2018`, `PerNode`, `Premium`, `Standalone`, `Standard`, `CapacityReservation`, `LACluster` and `Unlimited`. Defaults to `PerGB2018`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [workspaceId] The Workspace (or Customer) ID for the Log Analytics Workspace.
  AnalyticsWorkspaceState({
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
    this.primarySharedKey,
    this.reservationCapacityInGbPerDay,
    this.resourceGroupName,
    this.retentionInDays,
    this.secondarySharedKey,
    this.sku,
    this.tags,
    this.workspaceId,
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
      'primarySharedKey': ?primarySharedKey,
      'reservationCapacityInGbPerDay': ?reservationCapacityInGbPerDay,
      'resourceGroupName': ?resourceGroupName,
      'retentionInDays': ?retentionInDays,
      'secondarySharedKey': ?secondarySharedKey,
      'sku': ?sku,
      'tags': ?tags,
      'workspaceId': ?workspaceId,
    };
  }

  factory AnalyticsWorkspaceState.fromMap(Map<String, dynamic> map) {
    return AnalyticsWorkspaceState(
      allowResourceOnlyPermissions: map['allowResourceOnlyPermissions'] == null ? null : (map['allowResourceOnlyPermissions']! as bool).input(),
      cmkForQueryForced: map['cmkForQueryForced'] == null ? null : (map['cmkForQueryForced']! as bool).input(),
      dailyQuotaGb: map['dailyQuotaGb'] == null ? null : (map['dailyQuotaGb']! as double).input(),
      dataCollectionRuleId: map['dataCollectionRuleId'] == null ? null : (map['dataCollectionRuleId']! as String).input(),
      identity: map['identity'] == null ? null : (AnalyticsWorkspaceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      immediateDataPurgeOn30DaysEnabled: map['immediateDataPurgeOn30DaysEnabled'] == null ? null : (map['immediateDataPurgeOn30DaysEnabled']! as bool).input(),
      internetIngestionEnabled: map['internetIngestionEnabled'] == null ? null : (map['internetIngestionEnabled']! as bool).input(),
      internetQueryEnabled: map['internetQueryEnabled'] == null ? null : (map['internetQueryEnabled']! as bool).input(),
      localAuthenticationDisabled: map['localAuthenticationDisabled'] == null ? null : (map['localAuthenticationDisabled']! as bool).input(),
      localAuthenticationEnabled: map['localAuthenticationEnabled'] == null ? null : (map['localAuthenticationEnabled']! as bool).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      primarySharedKey: map['primarySharedKey'] == null ? null : (map['primarySharedKey']! as String).input(),
      reservationCapacityInGbPerDay: map['reservationCapacityInGbPerDay'] == null ? null : (map['reservationCapacityInGbPerDay']! as int).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      retentionInDays: map['retentionInDays'] == null ? null : (map['retentionInDays']! as int).input(),
      secondarySharedKey: map['secondarySharedKey'] == null ? null : (map['secondarySharedKey']! as String).input(),
      sku: map['sku'] == null ? null : (map['sku']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      workspaceId: map['workspaceId'] == null ? null : (map['workspaceId']! as String).input(),
    );
  }
}

