import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_data_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';
import 'vault_args.dart';
import 'vault_properties_response.dart';

/// Resource information, as returned by the resource provider.
///
/// Uses Azure REST API version 2024-10-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2024-04-30-preview, 2024-09-30-preview, 2025-01-01, 2025-02-01, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update Recovery Services vault
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vault = new AzureNative.RecoveryServices.Vault("vault", new()
///     {
///         Identity = new AzureNative.RecoveryServices.Inputs.IdentityDataArgs
///         {
///             Type = AzureNative.RecoveryServices.ResourceIdentityType.SystemAssigned,
///         },
///         Location = "West US",
///         Properties = new AzureNative.RecoveryServices.Inputs.VaultPropertiesArgs
///         {
///             PublicNetworkAccess = AzureNative.RecoveryServices.PublicNetworkAccess.Enabled,
///         },
///         ResourceGroupName = "Default-RecoveryServices-ResourceGroup",
///         Sku = new AzureNative.RecoveryServices.Inputs.SkuArgs
///         {
///             Name = AzureNative.RecoveryServices.SkuName.Standard,
///         },
///         VaultName = "swaggerExample",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	recoveryservices "github.com/pulumi/pulumi-azure-native-sdk/recoveryservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := recoveryservices.NewVault(ctx, "vault", &recoveryservices.VaultArgs{
/// 			Identity: &recoveryservices.IdentityDataArgs{
/// 				Type: pulumi.String(recoveryservices.ResourceIdentityTypeSystemAssigned),
/// 			},
/// 			Location: pulumi.String("West US"),
/// 			Properties: &recoveryservices.VaultPropertiesArgs{
/// 				PublicNetworkAccess: pulumi.String(recoveryservices.PublicNetworkAccessEnabled),
/// 			},
/// 			ResourceGroupName: pulumi.String("Default-RecoveryServices-ResourceGroup"),
/// 			Sku: &recoveryservices.SkuArgs{
/// 				Name: pulumi.String(recoveryservices.SkuNameStandard),
/// 			},
/// 			VaultName: pulumi.String("swaggerExample"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.recoveryservices.Vault;
/// import com.pulumi.azurenative.recoveryservices.VaultArgs;
/// import com.pulumi.azurenative.recoveryservices.inputs.IdentityDataArgs;
/// import com.pulumi.azurenative.recoveryservices.inputs.VaultPropertiesArgs;
/// import com.pulumi.azurenative.recoveryservices.inputs.SkuArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var vault = new Vault("vault", VaultArgs.builder()
///             .identity(IdentityDataArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("West US")
///             .properties(VaultPropertiesArgs.builder()
///                 .publicNetworkAccess("Enabled")
///                 .build())
///             .resourceGroupName("Default-RecoveryServices-ResourceGroup")
///             .sku(SkuArgs.builder()
///                 .name("Standard")
///                 .build())
///             .vaultName("swaggerExample")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const vault = new azure_native.recoveryservices.Vault("vault", {
///     identity: {
///         type: azure_native.recoveryservices.ResourceIdentityType.SystemAssigned,
///     },
///     location: "West US",
///     properties: {
///         publicNetworkAccess: azure_native.recoveryservices.PublicNetworkAccess.Enabled,
///     },
///     resourceGroupName: "Default-RecoveryServices-ResourceGroup",
///     sku: {
///         name: azure_native.recoveryservices.SkuName.Standard,
///     },
///     vaultName: "swaggerExample",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// vault = azure_native.recoveryservices.Vault("vault",
///     identity={
///         "type": azure_native.recoveryservices.ResourceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="West US",
///     properties={
///         "public_network_access": azure_native.recoveryservices.PublicNetworkAccess.ENABLED,
///     },
///     resource_group_name="Default-RecoveryServices-ResourceGroup",
///     sku={
///         "name": azure_native.recoveryservices.SkuName.STANDARD,
///     },
///     vault_name="swaggerExample")
///
/// ```
///
/// ```yaml
/// resources:
///   vault:
///     type: azure-native:recoveryservices:Vault
///     properties:
///       identity:
///         type: SystemAssigned
///       location: West US
///       properties:
///         publicNetworkAccess: Enabled
///       resourceGroupName: Default-RecoveryServices-ResourceGroup
///       sku:
///         name: Standard
///       vaultName: swaggerExample
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or Update Vault With Monitoring Setting
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vault = new AzureNative.RecoveryServices.Vault("vault", new()
///     {
///         Identity = new AzureNative.RecoveryServices.Inputs.IdentityDataArgs
///         {
///             Type = AzureNative.RecoveryServices.ResourceIdentityType.SystemAssigned,
///         },
///         Location = "West US",
///         Properties = new AzureNative.RecoveryServices.Inputs.VaultPropertiesArgs
///         {
///             MonitoringSettings = new AzureNative.RecoveryServices.Inputs.MonitoringSettingsArgs
///             {
///                 AzureMonitorAlertSettings = new AzureNative.RecoveryServices.Inputs.AzureMonitorAlertSettingsArgs
///                 {
///                     AlertsForAllFailoverIssues = AzureNative.RecoveryServices.AlertsState.Disabled,
///                     AlertsForAllJobFailures = AzureNative.RecoveryServices.AlertsState.Enabled,
///                     AlertsForAllReplicationIssues = AzureNative.RecoveryServices.AlertsState.Enabled,
///                 },
///                 ClassicAlertSettings = new AzureNative.RecoveryServices.Inputs.ClassicAlertSettingsArgs
///                 {
///                     AlertsForCriticalOperations = AzureNative.RecoveryServices.AlertsState.Disabled,
///                     EmailNotificationsForSiteRecovery = AzureNative.RecoveryServices.AlertsState.Enabled,
///                 },
///             },
///             PublicNetworkAccess = AzureNative.RecoveryServices.PublicNetworkAccess.Enabled,
///         },
///         ResourceGroupName = "Default-RecoveryServices-ResourceGroup",
///         Sku = new AzureNative.RecoveryServices.Inputs.SkuArgs
///         {
///             Name = AzureNative.RecoveryServices.SkuName.Standard,
///         },
///         VaultName = "swaggerExample",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	recoveryservices "github.com/pulumi/pulumi-azure-native-sdk/recoveryservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := recoveryservices.NewVault(ctx, "vault", &recoveryservices.VaultArgs{
/// 			Identity: &recoveryservices.IdentityDataArgs{
/// 				Type: pulumi.String(recoveryservices.ResourceIdentityTypeSystemAssigned),
/// 			},
/// 			Location: pulumi.String("West US"),
/// 			Properties: &recoveryservices.VaultPropertiesArgs{
/// 				MonitoringSettings: &recoveryservices.MonitoringSettingsArgs{
/// 					AzureMonitorAlertSettings: &recoveryservices.AzureMonitorAlertSettingsArgs{
/// 						AlertsForAllFailoverIssues:    pulumi.String(recoveryservices.AlertsStateDisabled),
/// 						AlertsForAllJobFailures:       pulumi.String(recoveryservices.AlertsStateEnabled),
/// 						AlertsForAllReplicationIssues: pulumi.String(recoveryservices.AlertsStateEnabled),
/// 					},
/// 					ClassicAlertSettings: &recoveryservices.ClassicAlertSettingsArgs{
/// 						AlertsForCriticalOperations:       pulumi.String(recoveryservices.AlertsStateDisabled),
/// 						EmailNotificationsForSiteRecovery: pulumi.String(recoveryservices.AlertsStateEnabled),
/// 					},
/// 				},
/// 				PublicNetworkAccess: pulumi.String(recoveryservices.PublicNetworkAccessEnabled),
/// 			},
/// 			ResourceGroupName: pulumi.String("Default-RecoveryServices-ResourceGroup"),
/// 			Sku: &recoveryservices.SkuArgs{
/// 				Name: pulumi.String(recoveryservices.SkuNameStandard),
/// 			},
/// 			VaultName: pulumi.String("swaggerExample"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.recoveryservices.Vault;
/// import com.pulumi.azurenative.recoveryservices.VaultArgs;
/// import com.pulumi.azurenative.recoveryservices.inputs.IdentityDataArgs;
/// import com.pulumi.azurenative.recoveryservices.inputs.VaultPropertiesArgs;
/// import com.pulumi.azurenative.recoveryservices.inputs.MonitoringSettingsArgs;
/// import com.pulumi.azurenative.recoveryservices.inputs.AzureMonitorAlertSettingsArgs;
/// import com.pulumi.azurenative.recoveryservices.inputs.ClassicAlertSettingsArgs;
/// import com.pulumi.azurenative.recoveryservices.inputs.SkuArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var vault = new Vault("vault", VaultArgs.builder()
///             .identity(IdentityDataArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("West US")
///             .properties(VaultPropertiesArgs.builder()
///                 .monitoringSettings(MonitoringSettingsArgs.builder()
///                     .azureMonitorAlertSettings(AzureMonitorAlertSettingsArgs.builder()
///                         .alertsForAllFailoverIssues("Disabled")
///                         .alertsForAllJobFailures("Enabled")
///                         .alertsForAllReplicationIssues("Enabled")
///                         .build())
///                     .classicAlertSettings(ClassicAlertSettingsArgs.builder()
///                         .alertsForCriticalOperations("Disabled")
///                         .emailNotificationsForSiteRecovery("Enabled")
///                         .build())
///                     .build())
///                 .publicNetworkAccess("Enabled")
///                 .build())
///             .resourceGroupName("Default-RecoveryServices-ResourceGroup")
///             .sku(SkuArgs.builder()
///                 .name("Standard")
///                 .build())
///             .vaultName("swaggerExample")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const vault = new azure_native.recoveryservices.Vault("vault", {
///     identity: {
///         type: azure_native.recoveryservices.ResourceIdentityType.SystemAssigned,
///     },
///     location: "West US",
///     properties: {
///         monitoringSettings: {
///             azureMonitorAlertSettings: {
///                 alertsForAllFailoverIssues: azure_native.recoveryservices.AlertsState.Disabled,
///                 alertsForAllJobFailures: azure_native.recoveryservices.AlertsState.Enabled,
///                 alertsForAllReplicationIssues: azure_native.recoveryservices.AlertsState.Enabled,
///             },
///             classicAlertSettings: {
///                 alertsForCriticalOperations: azure_native.recoveryservices.AlertsState.Disabled,
///                 emailNotificationsForSiteRecovery: azure_native.recoveryservices.AlertsState.Enabled,
///             },
///         },
///         publicNetworkAccess: azure_native.recoveryservices.PublicNetworkAccess.Enabled,
///     },
///     resourceGroupName: "Default-RecoveryServices-ResourceGroup",
///     sku: {
///         name: azure_native.recoveryservices.SkuName.Standard,
///     },
///     vaultName: "swaggerExample",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// vault = azure_native.recoveryservices.Vault("vault",
///     identity={
///         "type": azure_native.recoveryservices.ResourceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="West US",
///     properties={
///         "monitoring_settings": {
///             "azure_monitor_alert_settings": {
///                 "alerts_for_all_failover_issues": azure_native.recoveryservices.AlertsState.DISABLED,
///                 "alerts_for_all_job_failures": azure_native.recoveryservices.AlertsState.ENABLED,
///                 "alerts_for_all_replication_issues": azure_native.recoveryservices.AlertsState.ENABLED,
///             },
///             "classic_alert_settings": {
///                 "alerts_for_critical_operations": azure_native.recoveryservices.AlertsState.DISABLED,
///                 "email_notifications_for_site_recovery": azure_native.recoveryservices.AlertsState.ENABLED,
///             },
///         },
///         "public_network_access": azure_native.recoveryservices.PublicNetworkAccess.ENABLED,
///     },
///     resource_group_name="Default-RecoveryServices-ResourceGroup",
///     sku={
///         "name": azure_native.recoveryservices.SkuName.STANDARD,
///     },
///     vault_name="swaggerExample")
///
/// ```
///
/// ```yaml
/// resources:
///   vault:
///     type: azure-native:recoveryservices:Vault
///     properties:
///       identity:
///         type: SystemAssigned
///       location: West US
///       properties:
///         monitoringSettings:
///           azureMonitorAlertSettings:
///             alertsForAllFailoverIssues: Disabled
///             alertsForAllJobFailures: Enabled
///             alertsForAllReplicationIssues: Enabled
///           classicAlertSettings:
///             alertsForCriticalOperations: Disabled
///             emailNotificationsForSiteRecovery: Enabled
///         publicNetworkAccess: Enabled
///       resourceGroupName: Default-RecoveryServices-ResourceGroup
///       sku:
///         name: Standard
///       vaultName: swaggerExample
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or Update Vault With Redundancy Setting
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vault = new AzureNative.RecoveryServices.Vault("vault", new()
///     {
///         Identity = new AzureNative.RecoveryServices.Inputs.IdentityDataArgs
///         {
///             Type = AzureNative.RecoveryServices.ResourceIdentityType.SystemAssigned,
///         },
///         Location = "West US",
///         Properties = new AzureNative.RecoveryServices.Inputs.VaultPropertiesArgs
///         {
///             PublicNetworkAccess = AzureNative.RecoveryServices.PublicNetworkAccess.Enabled,
///             RedundancySettings = new AzureNative.RecoveryServices.Inputs.VaultPropertiesRedundancySettingsArgs
///             {
///                 CrossRegionRestore = AzureNative.RecoveryServices.CrossRegionRestore.Enabled,
///                 StandardTierStorageRedundancy = AzureNative.RecoveryServices.StandardTierStorageRedundancy.GeoRedundant,
///             },
///         },
///         ResourceGroupName = "Default-RecoveryServices-ResourceGroup",
///         Sku = new AzureNative.RecoveryServices.Inputs.SkuArgs
///         {
///             Name = AzureNative.RecoveryServices.SkuName.Standard,
///         },
///         VaultName = "swaggerExample",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	recoveryservices "github.com/pulumi/pulumi-azure-native-sdk/recoveryservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := recoveryservices.NewVault(ctx, "vault", &recoveryservices.VaultArgs{
/// 			Identity: &recoveryservices.IdentityDataArgs{
/// 				Type: pulumi.String(recoveryservices.ResourceIdentityTypeSystemAssigned),
/// 			},
/// 			Location: pulumi.String("West US"),
/// 			Properties: &recoveryservices.VaultPropertiesArgs{
/// 				PublicNetworkAccess: pulumi.String(recoveryservices.PublicNetworkAccessEnabled),
/// 				RedundancySettings: &recoveryservices.VaultPropertiesRedundancySettingsArgs{
/// 					CrossRegionRestore:            pulumi.String(recoveryservices.CrossRegionRestoreEnabled),
/// 					StandardTierStorageRedundancy: pulumi.String(recoveryservices.StandardTierStorageRedundancyGeoRedundant),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("Default-RecoveryServices-ResourceGroup"),
/// 			Sku: &recoveryservices.SkuArgs{
/// 				Name: pulumi.String(recoveryservices.SkuNameStandard),
/// 			},
/// 			VaultName: pulumi.String("swaggerExample"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.recoveryservices.Vault;
/// import com.pulumi.azurenative.recoveryservices.VaultArgs;
/// import com.pulumi.azurenative.recoveryservices.inputs.IdentityDataArgs;
/// import com.pulumi.azurenative.recoveryservices.inputs.VaultPropertiesArgs;
/// import com.pulumi.azurenative.recoveryservices.inputs.VaultPropertiesRedundancySettingsArgs;
/// import com.pulumi.azurenative.recoveryservices.inputs.SkuArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var vault = new Vault("vault", VaultArgs.builder()
///             .identity(IdentityDataArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("West US")
///             .properties(VaultPropertiesArgs.builder()
///                 .publicNetworkAccess("Enabled")
///                 .redundancySettings(VaultPropertiesRedundancySettingsArgs.builder()
///                     .crossRegionRestore("Enabled")
///                     .standardTierStorageRedundancy("GeoRedundant")
///                     .build())
///                 .build())
///             .resourceGroupName("Default-RecoveryServices-ResourceGroup")
///             .sku(SkuArgs.builder()
///                 .name("Standard")
///                 .build())
///             .vaultName("swaggerExample")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const vault = new azure_native.recoveryservices.Vault("vault", {
///     identity: {
///         type: azure_native.recoveryservices.ResourceIdentityType.SystemAssigned,
///     },
///     location: "West US",
///     properties: {
///         publicNetworkAccess: azure_native.recoveryservices.PublicNetworkAccess.Enabled,
///         redundancySettings: {
///             crossRegionRestore: azure_native.recoveryservices.CrossRegionRestore.Enabled,
///             standardTierStorageRedundancy: azure_native.recoveryservices.StandardTierStorageRedundancy.GeoRedundant,
///         },
///     },
///     resourceGroupName: "Default-RecoveryServices-ResourceGroup",
///     sku: {
///         name: azure_native.recoveryservices.SkuName.Standard,
///     },
///     vaultName: "swaggerExample",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// vault = azure_native.recoveryservices.Vault("vault",
///     identity={
///         "type": azure_native.recoveryservices.ResourceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="West US",
///     properties={
///         "public_network_access": azure_native.recoveryservices.PublicNetworkAccess.ENABLED,
///         "redundancy_settings": {
///             "cross_region_restore": azure_native.recoveryservices.CrossRegionRestore.ENABLED,
///             "standard_tier_storage_redundancy": azure_native.recoveryservices.StandardTierStorageRedundancy.GEO_REDUNDANT,
///         },
///     },
///     resource_group_name="Default-RecoveryServices-ResourceGroup",
///     sku={
///         "name": azure_native.recoveryservices.SkuName.STANDARD,
///     },
///     vault_name="swaggerExample")
///
/// ```
///
/// ```yaml
/// resources:
///   vault:
///     type: azure-native:recoveryservices:Vault
///     properties:
///       identity:
///         type: SystemAssigned
///       location: West US
///       properties:
///         publicNetworkAccess: Enabled
///         redundancySettings:
///           crossRegionRestore: Enabled
///           standardTierStorageRedundancy: GeoRedundant
///       resourceGroupName: Default-RecoveryServices-ResourceGroup
///       sku:
///         name: Standard
///       vaultName: swaggerExample
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:recoveryservices:Vault swaggerExample /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{vaultName}
/// ```
class Vault extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Optional ETag.
  late final pulumi.Output<String?> etag;
  /// Identity for the resource.
  late final pulumi.Output<IdentityDataResponse?> identity;
  /// Resource location.
  late final pulumi.Output<String> location;
  /// Resource name associated with the resource.
  late final pulumi.Output<String> name;
  /// Properties of the vault.
  late final pulumi.Output<VaultPropertiesResponse> properties;
  /// Identifies the unique system identifier for each Azure resource.
  late final pulumi.Output<SkuResponse?> sku;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...
  late final pulumi.Output<String> type;

  /// Creates a new [Vault].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Vault]. {@macro pulumi_recoveryservices_vault_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Vault(
    String name, {
    VaultArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:recoveryservices:Vault',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    identity = registerOutput<IdentityDataResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<VaultPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VaultPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
