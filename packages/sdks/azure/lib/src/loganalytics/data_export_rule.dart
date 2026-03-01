import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_export_rule_args.dart';
import 'data_export_rule_state.dart';

/// Manages a Log Analytics Data Export Rule.
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
/// const exampleAnalyticsWorkspace = new azure.operationalinsights.AnalyticsWorkspace("example", {
///     name: "exampleworkspace",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "PerGB2018",
///     retentionInDays: 30,
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplestoracc",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleDataExportRule = new azure.loganalytics.DataExportRule("example", {
///     name: "dataExport1",
///     resourceGroupName: example.name,
///     workspaceResourceId: exampleAnalyticsWorkspace.id,
///     destinationResourceId: exampleAccount.id,
///     tableNames: ["Heartbeat"],
///     enabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_analytics_workspace = azure.operationalinsights.AnalyticsWorkspace("example",
///     name="exampleworkspace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="PerGB2018",
///     retention_in_days=30)
/// example_account = azure.storage.Account("example",
///     name="examplestoracc",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_data_export_rule = azure.loganalytics.DataExportRule("example",
///     name="dataExport1",
///     resource_group_name=example.name,
///     workspace_resource_id=example_analytics_workspace.id,
///     destination_resource_id=example_account.id,
///     table_names=["Heartbeat"],
///     enabled=True)
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
///     var exampleAnalyticsWorkspace = new Azure.OperationalInsights.AnalyticsWorkspace("example", new()
///     {
///         Name = "exampleworkspace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "PerGB2018",
///         RetentionInDays = 30,
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplestoracc",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleDataExportRule = new Azure.LogAnalytics.DataExportRule("example", new()
///     {
///         Name = "dataExport1",
///         ResourceGroupName = example.Name,
///         WorkspaceResourceId = exampleAnalyticsWorkspace.Id,
///         DestinationResourceId = exampleAccount.Id,
///         TableNames = new[]
///         {
///             "Heartbeat",
///         },
///         Enabled = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/loganalytics"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/operationalinsights"
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
/// 		exampleAnalyticsWorkspace, err := operationalinsights.NewAnalyticsWorkspace(ctx, "example", &operationalinsights.AnalyticsWorkspaceArgs{
/// 			Name:              pulumi.String("exampleworkspace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("PerGB2018"),
/// 			RetentionInDays:   pulumi.Int(30),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplestoracc"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = loganalytics.NewDataExportRule(ctx, "example", &loganalytics.DataExportRuleArgs{
/// 			Name:                  pulumi.String("dataExport1"),
/// 			ResourceGroupName:     example.Name,
/// 			WorkspaceResourceId:   exampleAnalyticsWorkspace.ID(),
/// 			DestinationResourceId: exampleAccount.ID(),
/// 			TableNames: pulumi.StringArray{
/// 				pulumi.String("Heartbeat"),
/// 			},
/// 			Enabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspace;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspaceArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.loganalytics.DataExportRule;
/// import com.pulumi.azure.loganalytics.DataExportRuleArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAnalyticsWorkspace = new AnalyticsWorkspace("exampleAnalyticsWorkspace", AnalyticsWorkspaceArgs.builder()
///             .name("exampleworkspace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("PerGB2018")
///             .retentionInDays(30)
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplestoracc")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleDataExportRule = new DataExportRule("exampleDataExportRule", DataExportRuleArgs.builder()
///             .name("dataExport1")
///             .resourceGroupName(example.name())
///             .workspaceResourceId(exampleAnalyticsWorkspace.id())
///             .destinationResourceId(exampleAccount.id())
///             .tableNames("Heartbeat")
///             .enabled(true)
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
///   exampleAnalyticsWorkspace:
///     type: azure:operationalinsights:AnalyticsWorkspace
///     name: example
///     properties:
///       name: exampleworkspace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: PerGB2018
///       retentionInDays: 30
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplestoracc
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleDataExportRule:
///     type: azure:loganalytics:DataExportRule
///     name: example
///     properties:
///       name: dataExport1
///       resourceGroupName: ${example.name}
///       workspaceResourceId: ${exampleAnalyticsWorkspace.id}
///       destinationResourceId: ${exampleAccount.id}
///       tableNames:
///         - Heartbeat
///       enabled: true
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.OperationalInsights` - 2020-08-01
///
/// ## Import
///
/// Log Analytics Data Export Rule can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:loganalytics/dataExportRule:DataExportRule example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.OperationalInsights/workspaces/workspace1/dataExports/dataExport1
/// ```
class DataExportRule extends pulumi.CustomResource {
  /// The destination resource ID. It should be a storage account, an event hub namespace or an event hub. If the destination is an event hub namespace, an event hub would be created for each table automatically.
  late final pulumi.Output<String> destinationResourceId;
  /// Is this Log Analytics Data Export Rule enabled? Possible values include `true` or `false`. Defaults to `false`.
  late final pulumi.Output<bool?> enabled;
  /// The ID of the created Data Export Rule.
  late final pulumi.Output<String> exportRuleId;
  /// The name of the Log Analytics Data Export Rule. Changing this forces a new Log Analytics Data Export Rule to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Log Analytics Data Export should exist. Changing this forces a new Log Analytics Data Export Rule to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A list of table names to export to the destination resource, for example: `["Heartbeat", "SecurityEvent"]`.
  late final pulumi.Output<List<String>> tableNames;
  /// The resource ID of the workspace. Changing this forces a new Log Analytics Data Export Rule to be created.
  late final pulumi.Output<String> workspaceResourceId;

  /// Creates a new [DataExportRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataExportRule]. {@macro pulumi_loganalytics_data_export_rule_data_export_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataExportRule(
    String name, {
    DataExportRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:loganalytics/dataExportRule:DataExportRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.destinationResourceId = registerOutput<String>('destinationResourceId');
    this.enabled = registerOutput<bool?>('enabled');
    this.exportRuleId = registerOutput<String>('exportRuleId');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tableNames = registerOutput<List<String>>('tableNames');
    this.workspaceResourceId = registerOutput<String>('workspaceResourceId');
  }

  /// Gets an existing [DataExportRule] resource's state with the given [name] and [id].
  static DataExportRule get(
    String name,
    pulumi.Input<String> id, {
    DataExportRuleState? state,
  }) {
    return DataExportRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DataExportRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:loganalytics/dataExportRule:DataExportRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.destinationResourceId = registerOutput<String>('destinationResourceId');
    this.enabled = registerOutput<bool?>('enabled');
    this.exportRuleId = registerOutput<String>('exportRuleId');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tableNames = registerOutput<List<String>>('tableNames');
    this.workspaceResourceId = registerOutput<String>('workspaceResourceId');
  }
}
