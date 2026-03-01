import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_connector_azure_security_center_args.dart';
import 'data_connector_azure_security_center_state.dart';

/// Manages a Azure Security Center Data Connector.
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
/// const exampleDataConnectorAzureSecurityCenter = new azure.sentinel.DataConnectorAzureSecurityCenter("example", {
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
/// example_data_connector_azure_security_center = azure.sentinel.DataConnectorAzureSecurityCenter("example",
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
///     var exampleDataConnectorAzureSecurityCenter = new Azure.Sentinel.DataConnectorAzureSecurityCenter("example", new()
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
/// 		_, err = sentinel.NewDataConnectorAzureSecurityCenter(ctx, "example", &sentinel.DataConnectorAzureSecurityCenterArgs{
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
/// import com.pulumi.azure.sentinel.DataConnectorAzureSecurityCenter;
/// import com.pulumi.azure.sentinel.DataConnectorAzureSecurityCenterArgs;
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
///         var exampleDataConnectorAzureSecurityCenter = new DataConnectorAzureSecurityCenter("exampleDataConnectorAzureSecurityCenter", DataConnectorAzureSecurityCenterArgs.builder()
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
///   exampleDataConnectorAzureSecurityCenter:
///     type: azure:sentinel:DataConnectorAzureSecurityCenter
///     name: example
///     properties:
///       name: example
///       logAnalyticsWorkspaceId: ${exampleLogAnalyticsWorkspaceOnboarding.workspaceId}
/// ```
///
///
/// ## Import
///
/// Azure Security Center Data Connectors can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:sentinel/dataConnectorAzureSecurityCenter:DataConnectorAzureSecurityCenter example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.OperationalInsights/workspaces/workspace1/providers/Microsoft.SecurityInsights/dataConnectors/dc1
/// ```
class DataConnectorAzureSecurityCenter extends pulumi.CustomResource {
  /// The ID of the Log Analytics Workspace that this Azure Security Center Data Connector resides in. Changing this forces a new Azure Security Center Data Connector to be created.
  late final pulumi.Output<String> logAnalyticsWorkspaceId;
  /// The name which should be used for this Azure Security Center Data Connector. Changing this forces a new Azure Security Center Data Connector to be created.
  late final pulumi.Output<String> name;
  /// The ID of the subscription that this Azure Security Center Data Connector connects to. Changing this forces a new Azure Security Center Data Connector to be created.
  late final pulumi.Output<String> subscriptionId;

  /// Creates a new [DataConnectorAzureSecurityCenter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataConnectorAzureSecurityCenter]. {@macro pulumi_sentinel_data_connector_azure_security_center_data_connector_azure_security_center_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataConnectorAzureSecurityCenter(
    String name, {
    DataConnectorAzureSecurityCenterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:sentinel/dataConnectorAzureSecurityCenter:DataConnectorAzureSecurityCenter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.logAnalyticsWorkspaceId = registerOutput<String>('logAnalyticsWorkspaceId');
    this.name = registerOutput<String>('name');
    this.subscriptionId = registerOutput<String>('subscriptionId');
  }

  /// Gets an existing [DataConnectorAzureSecurityCenter] resource's state with the given [name] and [id].
  static DataConnectorAzureSecurityCenter get(
    String name,
    pulumi.Input<String> id, {
    DataConnectorAzureSecurityCenterState? state,
  }) {
    return DataConnectorAzureSecurityCenter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DataConnectorAzureSecurityCenter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:sentinel/dataConnectorAzureSecurityCenter:DataConnectorAzureSecurityCenter',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.logAnalyticsWorkspaceId = registerOutput<String>('logAnalyticsWorkspaceId');
    this.name = registerOutput<String>('name');
    this.subscriptionId = registerOutput<String>('subscriptionId');
  }
}
