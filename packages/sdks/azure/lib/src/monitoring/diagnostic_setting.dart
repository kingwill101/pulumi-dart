import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic_setting_args.dart';
import 'diagnostic_setting_state.dart';

/// Manages a Diagnostic Setting for an existing Resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "storageaccountname",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const current = azure.core.getClientConfig({});
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "examplekeyvault",
///     location: example.location,
///     resourceGroupName: example.name,
///     tenantId: current.then(current => current.tenantId),
///     softDeleteRetentionDays: 7,
///     purgeProtectionEnabled: false,
///     skuName: "standard",
/// });
/// const exampleDiagnosticSetting = new azure.monitoring.DiagnosticSetting("example", {
///     name: "example",
///     targetResourceId: exampleKeyVault.id,
///     storageAccountId: exampleAccount.id,
///     enabledLogs: [{
///         category: "AuditEvent",
///     }],
///     enabledMetrics: [{
///         category: "AllMetrics",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="storageaccountname",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// current = azure.core.get_client_config()
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="examplekeyvault",
///     location=example.location,
///     resource_group_name=example.name,
///     tenant_id=current.tenant_id,
///     soft_delete_retention_days=7,
///     purge_protection_enabled=False,
///     sku_name="standard")
/// example_diagnostic_setting = azure.monitoring.DiagnosticSetting("example",
///     name="example",
///     target_resource_id=example_key_vault.id,
///     storage_account_id=example_account.id,
///     enabled_logs=[{
///         "category": "AuditEvent",
///     }],
///     enabled_metrics=[{
///         "category": "AllMetrics",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "storageaccountname",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "examplekeyvault",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SoftDeleteRetentionDays = 7,
///         PurgeProtectionEnabled = false,
///         SkuName = "standard",
///     });
///
///     var exampleDiagnosticSetting = new Azure.Monitoring.DiagnosticSetting("example", new()
///     {
///         Name = "example",
///         TargetResourceId = exampleKeyVault.Id,
///         StorageAccountId = exampleAccount.Id,
///         EnabledLogs = new[]
///         {
///             new Azure.Monitoring.Inputs.DiagnosticSettingEnabledLogArgs
///             {
///                 Category = "AuditEvent",
///             },
///         },
///         EnabledMetrics = new[]
///         {
///             new Azure.Monitoring.Inputs.DiagnosticSettingEnabledMetricArgs
///             {
///                 Category = "AllMetrics",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/monitoring"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("storageaccountname"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                    pulumi.String("examplekeyvault"),
/// 			Location:                example.Location,
/// 			ResourceGroupName:       example.Name,
/// 			TenantId:                pulumi.String(current.TenantId),
/// 			SoftDeleteRetentionDays: pulumi.Int(7),
/// 			PurgeProtectionEnabled:  pulumi.Bool(false),
/// 			SkuName:                 pulumi.String("standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = monitoring.NewDiagnosticSetting(ctx, "example", &monitoring.DiagnosticSettingArgs{
/// 			Name:             pulumi.String("example"),
/// 			TargetResourceId: exampleKeyVault.ID(),
/// 			StorageAccountId: exampleAccount.ID(),
/// 			EnabledLogs: monitoring.DiagnosticSettingEnabledLogArray{
/// 				&monitoring.DiagnosticSettingEnabledLogArgs{
/// 					Category: pulumi.String("AuditEvent"),
/// 				},
/// 			},
/// 			EnabledMetrics: monitoring.DiagnosticSettingEnabledMetricArray{
/// 				&monitoring.DiagnosticSettingEnabledMetricArgs{
/// 					Category: pulumi.String("AllMetrics"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_core_getclientconfig" "current" {
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_storage_account" "example" {
///   name                     = "storageaccountname"
///   resource_group_name      = azure_core_resourcegroup.example.name
///   location                 = azure_core_resourcegroup.example.location
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
/// }
/// resource "azure_keyvault_keyvault" "example" {
///   name                       = "examplekeyvault"
///   location                   = azure_core_resourcegroup.example.location
///   resource_group_name        = azure_core_resourcegroup.example.name
///   tenant_id                  = data.azure_core_getclientconfig.current.tenant_id
///   soft_delete_retention_days = 7
///   purge_protection_enabled   = false
///   sku_name                   = "standard"
/// }
/// resource "azure_monitoring_diagnosticsetting" "example" {
///   name               = "example"
///   target_resource_id = azure_keyvault_keyvault.example.id
///   storage_account_id = azure_storage_account.example.id
///   enabled_logs {
///     category = "AuditEvent"
///   }
///   enabled_metrics {
///     category = "AllMetrics"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.monitoring.DiagnosticSetting;
/// import com.pulumi.azure.monitoring.DiagnosticSettingArgs;
/// import com.pulumi.azure.monitoring.inputs.DiagnosticSettingEnabledLogArgs;
/// import com.pulumi.azure.monitoring.inputs.DiagnosticSettingEnabledMetricArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("storageaccountname")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("examplekeyvault")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tenantId(current.tenantId())
///             .softDeleteRetentionDays(7)
///             .purgeProtectionEnabled(false)
///             .skuName("standard")
///             .build());
///
///         var exampleDiagnosticSetting = new DiagnosticSetting("exampleDiagnosticSetting", DiagnosticSettingArgs.builder()
///             .name("example")
///             .targetResourceId(exampleKeyVault.id())
///             .storageAccountId(exampleAccount.id())
///             .enabledLogs(DiagnosticSettingEnabledLogArgs.builder()
///                 .category("AuditEvent")
///                 .build())
///             .enabledMetrics(DiagnosticSettingEnabledMetricArgs.builder()
///                 .category("AllMetrics")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: storageaccountname
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: examplekeyvault
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tenantId: ${current.tenantId}
///       softDeleteRetentionDays: 7
///       purgeProtectionEnabled: false
///       skuName: standard
///   exampleDiagnosticSetting:
///     type: azure:monitoring:DiagnosticSetting
///     name: example
///     properties:
///       name: example
///       targetResourceId: ${exampleKeyVault.id}
///       storageAccountId: ${exampleAccount.id}
///       enabledLogs:
///         - category: AuditEvent
///       enabledMetrics:
///         - category: AllMetrics
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Insights` - 2021-05-01-preview
///
/// ## Import
///
/// Diagnostic Settings can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:monitoring/diagnosticSetting:DiagnosticSetting example "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.KeyVault/vaults/vault1|logMonitoring1"
/// ```
///
/// &gt; **Note:** This is an ID specific to this resource provider which uses the format `{resourceId}|{diagnosticSettingName}`
class DiagnosticSetting extends pulumi.CustomResource {
  /// One or more `enabledLog` blocks as defined below.
  ///
  /// &gt; **Note:** At least one `enabledLog` or `enabledMetric` block must be specified. At least one type of Log or Metric must be enabled.
  late final pulumi.Output<List<Map<String, dynamic>>?> enabledLogs;
  /// One or more `enabledMetric` blocks as defined below.
  ///
  /// &gt; **Note:** At least one `enabledLog` or `enabledMetric` block must be specified.
  late final pulumi.Output<List<Map<String, dynamic>>> enabledMetrics;
  /// Specifies the ID of an Event Hub Namespace Authorization Rule used to send Diagnostics Data.
  ///
  /// &gt; **NOTE:** This can be sourced from the `azure.eventhub.EventHubNamespaceAuthorizationRule` resource and is different from a `azure.eventhub.AuthorizationRule` resource.
  ///
  /// &gt; **NOTE:** At least one of `eventhubAuthorizationRuleId`, `logAnalyticsWorkspaceId`, `partnerSolutionId` and `storageAccountId` must be specified.
  late final pulumi.Output<String?> eventhubAuthorizationRuleId;
  /// Specifies the name of the Event Hub where Diagnostics Data should be sent.
  ///
  /// &gt; **NOTE:** If this isn't specified then the default Event Hub will be used.
  late final pulumi.Output<String?> eventhubName;
  /// Possible values are `AzureDiagnostics` and `Dedicated`. When set to `Dedicated`, logs sent to a Log Analytics workspace will go into resource specific tables, instead of the legacy `AzureDiagnostics` table.
  ///
  /// &gt; **NOTE:** This setting will only have an effect if a `logAnalyticsWorkspaceId` is provided. For some target resource type (e.g., Key Vault), this field is unconfigurable. Please see [resource types](https://learn.microsoft.com/en-us/azure/azure-monitor/reference/tables/azurediagnostics#resource-types) for services that use each method. Please [see the documentation](https://docs.microsoft.com/azure/azure-monitor/platform/diagnostic-logs-stream-log-store#azure-diagnostics-vs-resource-specific) for details on the differences between destination types.
  late final pulumi.Output<String> logAnalyticsDestinationType;
  /// Specifies the ID of a Log Analytics Workspace where Diagnostics Data should be sent.
  ///
  /// &gt; **NOTE:** At least one of `eventhubAuthorizationRuleId`, `logAnalyticsWorkspaceId`, `partnerSolutionId` and `storageAccountId` must be specified.
  late final pulumi.Output<String?> logAnalyticsWorkspaceId;
  late final pulumi.Output<List<Map<String, dynamic>>> metrics;
  /// Specifies the name of the Diagnostic Setting. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** If the name is set to 'service' it will not be possible to fully delete the diagnostic setting. This is due to legacy API support.
  late final pulumi.Output<String> name;
  /// The ID of the market partner solution where Diagnostics Data should be sent. For potential partner integrations, [click to learn more about partner integration](https://learn.microsoft.com/en-us/azure/partner-solutions/overview).
  ///
  /// &gt; **NOTE:** At least one of `eventhubAuthorizationRuleId`, `logAnalyticsWorkspaceId`, `partnerSolutionId` and `storageAccountId` must be specified.
  late final pulumi.Output<String?> partnerSolutionId;
  /// The ID of the Storage Account where logs should be sent.
  ///
  /// &gt; **NOTE:** At least one of `eventhubAuthorizationRuleId`, `logAnalyticsWorkspaceId`, `partnerSolutionId` and `storageAccountId` must be specified.
  late final pulumi.Output<String?> storageAccountId;
  /// The ID of an existing Resource on which to configure Diagnostic Settings. Changing this forces a new resource to be created.
  late final pulumi.Output<String> targetResourceId;

  /// Creates a new [DiagnosticSetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DiagnosticSetting]. {@macro pulumi_monitoring_diagnostic_setting_diagnostic_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DiagnosticSetting(
    String name, {
    DiagnosticSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:monitoring/diagnosticSetting:DiagnosticSetting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    enabledLogs = registerOutput<List<Map<String, dynamic>>?>('enabledLogs');
    enabledMetrics = registerOutput<List<Map<String, dynamic>>>('enabledMetrics');
    eventhubAuthorizationRuleId = registerOutput<String?>('eventhubAuthorizationRuleId');
    eventhubName = registerOutput<String?>('eventhubName');
    logAnalyticsDestinationType = registerOutput<String>('logAnalyticsDestinationType');
    logAnalyticsWorkspaceId = registerOutput<String?>('logAnalyticsWorkspaceId');
    metrics = registerOutput<List<Map<String, dynamic>>>('metrics');
    this.name = registerOutput<String>('name');
    partnerSolutionId = registerOutput<String?>('partnerSolutionId');
    storageAccountId = registerOutput<String?>('storageAccountId');
    targetResourceId = registerOutput<String>('targetResourceId');
  }

  /// Gets an existing [DiagnosticSetting] resource's state with the given [name] and [id].
  static DiagnosticSetting get(
    String name,
    pulumi.Input<String> id, {
    DiagnosticSettingState? state,
  }) {
    return DiagnosticSetting._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DiagnosticSetting._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:monitoring/diagnosticSetting:DiagnosticSetting',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    enabledLogs = registerOutput<List<Map<String, dynamic>>?>('enabledLogs');
    enabledMetrics = registerOutput<List<Map<String, dynamic>>>('enabledMetrics');
    eventhubAuthorizationRuleId = registerOutput<String?>('eventhubAuthorizationRuleId');
    eventhubName = registerOutput<String?>('eventhubName');
    logAnalyticsDestinationType = registerOutput<String>('logAnalyticsDestinationType');
    logAnalyticsWorkspaceId = registerOutput<String?>('logAnalyticsWorkspaceId');
    metrics = registerOutput<List<Map<String, dynamic>>>('metrics');
    this.name = registerOutput<String>('name');
    partnerSolutionId = registerOutput<String?>('partnerSolutionId');
    storageAccountId = registerOutput<String?>('storageAccountId');
    targetResourceId = registerOutput<String>('targetResourceId');
  }
}
