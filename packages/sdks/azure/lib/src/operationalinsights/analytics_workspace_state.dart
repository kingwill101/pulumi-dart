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
    pulumi.Output<bool>? allowResourceOnlyPermissions,
    pulumi.Output<bool>? cmkForQueryForced,
    pulumi.Output<double>? dailyQuotaGb,
    pulumi.Output<String>? dataCollectionRuleId,
    pulumi.Output<AnalyticsWorkspaceIdentity>? identity,
    pulumi.Output<bool>? immediateDataPurgeOn30DaysEnabled,
    pulumi.Output<bool>? internetIngestionEnabled,
    pulumi.Output<bool>? internetQueryEnabled,
    pulumi.Output<bool>? localAuthenticationDisabled,
    pulumi.Output<bool>? localAuthenticationEnabled,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? primarySharedKey,
    pulumi.Output<int>? reservationCapacityInGbPerDay,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<int>? retentionInDays,
    pulumi.Output<String>? secondarySharedKey,
    pulumi.Output<String>? sku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? workspaceId,
  }) :
      allowResourceOnlyPermissions = pulumi.Input.asOptionalInput<bool>(allowResourceOnlyPermissions),
      cmkForQueryForced = pulumi.Input.asOptionalInput<bool>(cmkForQueryForced),
      dailyQuotaGb = pulumi.Input.asOptionalInput<double>(dailyQuotaGb),
      dataCollectionRuleId = pulumi.Input.asOptionalInput<String>(dataCollectionRuleId),
      identity = pulumi.Input.asOptionalInput<AnalyticsWorkspaceIdentity>(identity),
      immediateDataPurgeOn30DaysEnabled = pulumi.Input.asOptionalInput<bool>(immediateDataPurgeOn30DaysEnabled),
      internetIngestionEnabled = pulumi.Input.asOptionalInput<bool>(internetIngestionEnabled),
      internetQueryEnabled = pulumi.Input.asOptionalInput<bool>(internetQueryEnabled),
      localAuthenticationDisabled = pulumi.Input.asOptionalInput<bool>(localAuthenticationDisabled),
      localAuthenticationEnabled = pulumi.Input.asOptionalInput<bool>(localAuthenticationEnabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      primarySharedKey = pulumi.Input.asOptionalInput<String>(primarySharedKey),
      reservationCapacityInGbPerDay = pulumi.Input.asOptionalInput<int>(reservationCapacityInGbPerDay),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      retentionInDays = pulumi.Input.asOptionalInput<int>(retentionInDays),
      secondarySharedKey = pulumi.Input.asOptionalInput<String>(secondarySharedKey),
      sku = pulumi.Input.asOptionalInput<String>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceId = pulumi.Input.asOptionalInput<String>(workspaceId);

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
      allowResourceOnlyPermissions: map['allowResourceOnlyPermissions'] == null ? null : pulumi.Output.create<bool>(map['allowResourceOnlyPermissions'] as bool),
      cmkForQueryForced: map['cmkForQueryForced'] == null ? null : pulumi.Output.create<bool>(map['cmkForQueryForced'] as bool),
      dailyQuotaGb: map['dailyQuotaGb'] == null ? null : pulumi.Output.create<double>(map['dailyQuotaGb'] as double),
      dataCollectionRuleId: map['dataCollectionRuleId'] == null ? null : pulumi.Output.create<String>(map['dataCollectionRuleId'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<AnalyticsWorkspaceIdentity>(AnalyticsWorkspaceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      immediateDataPurgeOn30DaysEnabled: map['immediateDataPurgeOn30DaysEnabled'] == null ? null : pulumi.Output.create<bool>(map['immediateDataPurgeOn30DaysEnabled'] as bool),
      internetIngestionEnabled: map['internetIngestionEnabled'] == null ? null : pulumi.Output.create<bool>(map['internetIngestionEnabled'] as bool),
      internetQueryEnabled: map['internetQueryEnabled'] == null ? null : pulumi.Output.create<bool>(map['internetQueryEnabled'] as bool),
      localAuthenticationDisabled: map['localAuthenticationDisabled'] == null ? null : pulumi.Output.create<bool>(map['localAuthenticationDisabled'] as bool),
      localAuthenticationEnabled: map['localAuthenticationEnabled'] == null ? null : pulumi.Output.create<bool>(map['localAuthenticationEnabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      primarySharedKey: map['primarySharedKey'] == null ? null : pulumi.Output.create<String>(map['primarySharedKey'] as String),
      reservationCapacityInGbPerDay: map['reservationCapacityInGbPerDay'] == null ? null : pulumi.Output.create<int>(map['reservationCapacityInGbPerDay'] as int),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      retentionInDays: map['retentionInDays'] == null ? null : pulumi.Output.create<int>(map['retentionInDays'] as int),
      secondarySharedKey: map['secondarySharedKey'] == null ? null : pulumi.Output.create<String>(map['secondarySharedKey'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<String>(map['sku'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workspaceId: map['workspaceId'] == null ? null : pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

