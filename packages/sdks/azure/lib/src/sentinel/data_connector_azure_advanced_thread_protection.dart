import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_connector_azure_advanced_thread_protection_args.dart';
import 'data_connector_azure_advanced_thread_protection_state.dart';

/// Manages a Azure Advanced Threat Protection Data Connector.
///
/// &gt; **Note:** This resource requires that [Enterprise Mobility + Security E5](https://www.microsoft.com/en-us/microsoft-365/enterprise-mobility-security) is enabled on the tenant being connected to.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "west europe",
/// });
/// const exampleAnalyticsWorkspace = new azure.operationalinsights.AnalyticsWorkspace("example", {
///     name: "example-workspace",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "PerGB2018",
/// });
/// const exampleLogAnalyticsWorkspaceOnboarding = new azure.sentinel.LogAnalyticsWorkspaceOnboarding("example", {workspaceId: exampleAnalyticsWorkspace.id});
/// const exampleDataConnectorAzureAdvancedThreadProtection = new azure.sentinel.DataConnectorAzureAdvancedThreadProtection("example", {
///     name: "example",
///     logAnalyticsWorkspaceId: exampleLogAnalyticsWorkspaceOnboarding.workspaceId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="west europe")
/// example_analytics_workspace = azure.operationalinsights.AnalyticsWorkspace("example",
///     name="example-workspace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="PerGB2018")
/// example_log_analytics_workspace_onboarding = azure.sentinel.LogAnalyticsWorkspaceOnboarding("example", workspace_id=example_analytics_workspace.id)
/// example_data_connector_azure_advanced_thread_protection = azure.sentinel.DataConnectorAzureAdvancedThreadProtection("example",
///     name="example",
///     log_analytics_workspace_id=example_log_analytics_workspace_onboarding.workspace_id)
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
///         Name = "example-rg",
///         Location = "west europe",
///     });
///
///     var exampleAnalyticsWorkspace = new Azure.OperationalInsights.AnalyticsWorkspace("example", new()
///     {
///         Name = "example-workspace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "PerGB2018",
///     });
///
///     var exampleLogAnalyticsWorkspaceOnboarding = new Azure.Sentinel.LogAnalyticsWorkspaceOnboarding("example", new()
///     {
///         WorkspaceId = exampleAnalyticsWorkspace.Id,
///     });
///
///     var exampleDataConnectorAzureAdvancedThreadProtection = new Azure.Sentinel.DataConnectorAzureAdvancedThreadProtection("example", new()
///     {
///         Name = "example",
///         LogAnalyticsWorkspaceId = exampleLogAnalyticsWorkspaceOnboarding.WorkspaceId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/operationalinsights"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/sentinel"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("west europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAnalyticsWorkspace, err := operationalinsights.NewAnalyticsWorkspace(ctx, "example", &operationalinsights.AnalyticsWorkspaceArgs{
/// 			Name:              pulumi.String("example-workspace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("PerGB2018"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLogAnalyticsWorkspaceOnboarding, err := sentinel.NewLogAnalyticsWorkspaceOnboarding(ctx, "example", &sentinel.LogAnalyticsWorkspaceOnboardingArgs{
/// 			WorkspaceId: exampleAnalyticsWorkspace.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sentinel.NewDataConnectorAzureAdvancedThreadProtection(ctx, "example", &sentinel.DataConnectorAzureAdvancedThreadProtectionArgs{
/// 			Name:                    pulumi.String("example"),
/// 			LogAnalyticsWorkspaceId: exampleLogAnalyticsWorkspaceOnboarding.WorkspaceId,
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
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-rg"
///   location = "west europe"
/// }
/// resource "azure_operationalinsights_analyticsworkspace" "example" {
///   name                = "example-workspace"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "PerGB2018"
/// }
/// resource "azure_sentinel_loganalyticsworkspaceonboarding" "example" {
///   workspace_id = azure_operationalinsights_analyticsworkspace.example.id
/// }
/// resource "azure_sentinel_dataconnectorazureadvancedthreadprotection" "example" {
///   name                       = "example"
///   log_analytics_workspace_id = azure_sentinel_loganalyticsworkspaceonboarding.example.workspace_id
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
/// import com.pulumi.azure.sentinel.LogAnalyticsWorkspaceOnboarding;
/// import com.pulumi.azure.sentinel.LogAnalyticsWorkspaceOnboardingArgs;
/// import com.pulumi.azure.sentinel.DataConnectorAzureAdvancedThreadProtection;
/// import com.pulumi.azure.sentinel.DataConnectorAzureAdvancedThreadProtectionArgs;
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
///             .name("example-rg")
///             .location("west europe")
///             .build());
///
///         var exampleAnalyticsWorkspace = new AnalyticsWorkspace("exampleAnalyticsWorkspace", AnalyticsWorkspaceArgs.builder()
///             .name("example-workspace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("PerGB2018")
///             .build());
///
///         var exampleLogAnalyticsWorkspaceOnboarding = new LogAnalyticsWorkspaceOnboarding("exampleLogAnalyticsWorkspaceOnboarding", LogAnalyticsWorkspaceOnboardingArgs.builder()
///             .workspaceId(exampleAnalyticsWorkspace.id())
///             .build());
///
///         var exampleDataConnectorAzureAdvancedThreadProtection = new DataConnectorAzureAdvancedThreadProtection("exampleDataConnectorAzureAdvancedThreadProtection", DataConnectorAzureAdvancedThreadProtectionArgs.builder()
///             .name("example")
///             .logAnalyticsWorkspaceId(exampleLogAnalyticsWorkspaceOnboarding.workspaceId())
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
///       name: example-rg
///       location: west europe
///   exampleAnalyticsWorkspace:
///     type: azure:operationalinsights:AnalyticsWorkspace
///     name: example
///     properties:
///       name: example-workspace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: PerGB2018
///   exampleLogAnalyticsWorkspaceOnboarding:
///     type: azure:sentinel:LogAnalyticsWorkspaceOnboarding
///     name: example
///     properties:
///       workspaceId: ${exampleAnalyticsWorkspace.id}
///   exampleDataConnectorAzureAdvancedThreadProtection:
///     type: azure:sentinel:DataConnectorAzureAdvancedThreadProtection
///     name: example
///     properties:
///       name: example
///       logAnalyticsWorkspaceId: ${exampleLogAnalyticsWorkspaceOnboarding.workspaceId}
/// ```
///
///
/// ## Import
///
/// Azure Advanced Threat Protection Data Connectors can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:sentinel/dataConnectorAzureAdvancedThreadProtection:DataConnectorAzureAdvancedThreadProtection example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.OperationalInsights/workspaces/workspace1/providers/Microsoft.SecurityInsights/dataConnectors/dc1
/// ```
class DataConnectorAzureAdvancedThreadProtection extends pulumi.CustomResource {
  /// The ID of the Log Analytics Workspace that this Azure Advanced Threat Protection Data Connector resides in. Changing this forces a new Azure Advanced Threat Protection Data Connector to be created.
  late final pulumi.Output<String> logAnalyticsWorkspaceId;
  /// The name which should be used for this Azure Advanced Threat Protection Data Connector. Changing this forces a new Azure Advanced Threat Protection Data Connector to be created.
  late final pulumi.Output<String> name;
  /// The ID of the tenant that this Azure Advanced Threat Protection Data Connector connects to. Changing this forces a new Azure Advanced Threat Protection Data Connector to be created.
  ///
  /// &gt; **Note:** Currently, only the same tenant as the running account is allowed. Cross-tenant scenario is not supported yet.
  late final pulumi.Output<String> tenantId;

  /// Creates a new [DataConnectorAzureAdvancedThreadProtection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataConnectorAzureAdvancedThreadProtection]. {@macro pulumi_sentinel_data_connector_azure_advanced_thread_protection_data_connector_azure_advanced_thread_protection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataConnectorAzureAdvancedThreadProtection(
    String name, {
    DataConnectorAzureAdvancedThreadProtectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:sentinel/dataConnectorAzureAdvancedThreadProtection:DataConnectorAzureAdvancedThreadProtection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    logAnalyticsWorkspaceId = registerOutput<String>('logAnalyticsWorkspaceId');
    this.name = registerOutput<String>('name');
    tenantId = registerOutput<String>('tenantId');
  }

  /// Gets an existing [DataConnectorAzureAdvancedThreadProtection] resource's state with the given [name] and [id].
  static DataConnectorAzureAdvancedThreadProtection get(
    String name,
    pulumi.Input<String> id, {
    DataConnectorAzureAdvancedThreadProtectionState? state,
  }) {
    return DataConnectorAzureAdvancedThreadProtection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DataConnectorAzureAdvancedThreadProtection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:sentinel/dataConnectorAzureAdvancedThreadProtection:DataConnectorAzureAdvancedThreadProtection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    logAnalyticsWorkspaceId = registerOutput<String>('logAnalyticsWorkspaceId');
    this.name = registerOutput<String>('name');
    tenantId = registerOutput<String>('tenantId');
  }
}
