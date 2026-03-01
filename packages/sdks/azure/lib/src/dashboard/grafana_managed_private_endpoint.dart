import 'package:pulumi/pulumi.dart' as pulumi;
import 'grafana_managed_private_endpoint_args.dart';
import 'grafana_managed_private_endpoint_state.dart';

/// Manages a Dashboard Grafana Managed Private Endpoint.
///
/// > **Note:** This resource will _not_ approve the managed private endpoint connection on the linked resource. This will need to be done manually via Azure CLI, PowerShell, or AzAPI resources. See here for an example that uses AzAPI.
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
///     location: "Canada Central",
/// });
/// const exampleWorkspace = new azure.monitoring.Workspace("example", {
///     name: "example-mamw",
///     resourceGroupName: example.name,
///     location: example.location,
///     publicNetworkAccessEnabled: false,
/// });
/// const exampleGrafana = new azure.dashboard.Grafana("example", {
///     name: "example-dg",
///     resourceGroupName: example.name,
///     location: example.location,
///     grafanaMajorVersion: "11",
///     publicNetworkAccessEnabled: false,
///     azureMonitorWorkspaceIntegrations: [{
///         resourceId: exampleWorkspace.id,
///     }],
/// });
/// const exampleGrafanaManagedPrivateEndpoint = new azure.dashboard.GrafanaManagedPrivateEndpoint("example", {
///     grafanaId: exampleGrafana.id,
///     name: "example-mpe",
///     location: exampleGrafana.location,
///     privateLinkResourceId: exampleWorkspace.id,
///     groupIds: ["prometheusMetrics"],
///     privateLinkResourceRegion: exampleGrafana.location,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="Canada Central")
/// example_workspace = azure.monitoring.Workspace("example",
///     name="example-mamw",
///     resource_group_name=example.name,
///     location=example.location,
///     public_network_access_enabled=False)
/// example_grafana = azure.dashboard.Grafana("example",
///     name="example-dg",
///     resource_group_name=example.name,
///     location=example.location,
///     grafana_major_version="11",
///     public_network_access_enabled=False,
///     azure_monitor_workspace_integrations=[{
///         "resource_id": example_workspace.id,
///     }])
/// example_grafana_managed_private_endpoint = azure.dashboard.GrafanaManagedPrivateEndpoint("example",
///     grafana_id=example_grafana.id,
///     name="example-mpe",
///     location=example_grafana.location,
///     private_link_resource_id=example_workspace.id,
///     group_ids=["prometheusMetrics"],
///     private_link_resource_region=example_grafana.location)
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
///         Location = "Canada Central",
///     });
///
///     var exampleWorkspace = new Azure.Monitoring.Workspace("example", new()
///     {
///         Name = "example-mamw",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         PublicNetworkAccessEnabled = false,
///     });
///
///     var exampleGrafana = new Azure.Dashboard.Grafana("example", new()
///     {
///         Name = "example-dg",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         GrafanaMajorVersion = "11",
///         PublicNetworkAccessEnabled = false,
///         AzureMonitorWorkspaceIntegrations = new[]
///         {
///             new Azure.Dashboard.Inputs.GrafanaAzureMonitorWorkspaceIntegrationArgs
///             {
///                 ResourceId = exampleWorkspace.Id,
///             },
///         },
///     });
///
///     var exampleGrafanaManagedPrivateEndpoint = new Azure.Dashboard.GrafanaManagedPrivateEndpoint("example", new()
///     {
///         GrafanaId = exampleGrafana.Id,
///         Name = "example-mpe",
///         Location = exampleGrafana.Location,
///         PrivateLinkResourceId = exampleWorkspace.Id,
///         GroupIds = new[]
///         {
///             "prometheusMetrics",
///         },
///         PrivateLinkResourceRegion = exampleGrafana.Location,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dashboard"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("Canada Central"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWorkspace, err := monitoring.NewWorkspace(ctx, "example", &monitoring.WorkspaceArgs{
/// 			Name:                       pulumi.String("example-mamw"),
/// 			ResourceGroupName:          example.Name,
/// 			Location:                   example.Location,
/// 			PublicNetworkAccessEnabled: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGrafana, err := dashboard.NewGrafana(ctx, "example", &dashboard.GrafanaArgs{
/// 			Name:                       pulumi.String("example-dg"),
/// 			ResourceGroupName:          example.Name,
/// 			Location:                   example.Location,
/// 			GrafanaMajorVersion:        pulumi.String("11"),
/// 			PublicNetworkAccessEnabled: pulumi.Bool(false),
/// 			AzureMonitorWorkspaceIntegrations: dashboard.GrafanaAzureMonitorWorkspaceIntegrationArray{
/// 				&dashboard.GrafanaAzureMonitorWorkspaceIntegrationArgs{
/// 					ResourceId: exampleWorkspace.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dashboard.NewGrafanaManagedPrivateEndpoint(ctx, "example", &dashboard.GrafanaManagedPrivateEndpointArgs{
/// 			GrafanaId:             exampleGrafana.ID(),
/// 			Name:                  pulumi.String("example-mpe"),
/// 			Location:              exampleGrafana.Location,
/// 			PrivateLinkResourceId: exampleWorkspace.ID(),
/// 			GroupIds: pulumi.StringArray{
/// 				pulumi.String("prometheusMetrics"),
/// 			},
/// 			PrivateLinkResourceRegion: exampleGrafana.Location,
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
/// import com.pulumi.azure.monitoring.Workspace;
/// import com.pulumi.azure.monitoring.WorkspaceArgs;
/// import com.pulumi.azure.dashboard.Grafana;
/// import com.pulumi.azure.dashboard.GrafanaArgs;
/// import com.pulumi.azure.dashboard.inputs.GrafanaAzureMonitorWorkspaceIntegrationArgs;
/// import com.pulumi.azure.dashboard.GrafanaManagedPrivateEndpoint;
/// import com.pulumi.azure.dashboard.GrafanaManagedPrivateEndpointArgs;
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
///             .location("Canada Central")
///             .build());
///
///         var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
///             .name("example-mamw")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .publicNetworkAccessEnabled(false)
///             .build());
///
///         var exampleGrafana = new Grafana("exampleGrafana", GrafanaArgs.builder()
///             .name("example-dg")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .grafanaMajorVersion("11")
///             .publicNetworkAccessEnabled(false)
///             .azureMonitorWorkspaceIntegrations(GrafanaAzureMonitorWorkspaceIntegrationArgs.builder()
///                 .resourceId(exampleWorkspace.id())
///                 .build())
///             .build());
///
///         var exampleGrafanaManagedPrivateEndpoint = new GrafanaManagedPrivateEndpoint("exampleGrafanaManagedPrivateEndpoint", GrafanaManagedPrivateEndpointArgs.builder()
///             .grafanaId(exampleGrafana.id())
///             .name("example-mpe")
///             .location(exampleGrafana.location())
///             .privateLinkResourceId(exampleWorkspace.id())
///             .groupIds("prometheusMetrics")
///             .privateLinkResourceRegion(exampleGrafana.location())
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
///       location: Canada Central
///   exampleWorkspace:
///     type: azure:monitoring:Workspace
///     name: example
///     properties:
///       name: example-mamw
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       publicNetworkAccessEnabled: false
///   exampleGrafana:
///     type: azure:dashboard:Grafana
///     name: example
///     properties:
///       name: example-dg
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       grafanaMajorVersion: 11
///       publicNetworkAccessEnabled: false
///       azureMonitorWorkspaceIntegrations:
///         - resourceId: ${exampleWorkspace.id}
///   exampleGrafanaManagedPrivateEndpoint:
///     type: azure:dashboard:GrafanaManagedPrivateEndpoint
///     name: example
///     properties:
///       grafanaId: ${exampleGrafana.id}
///       name: example-mpe
///       location: ${exampleGrafana.location}
///       privateLinkResourceId: ${exampleWorkspace.id}
///       groupIds:
///         - prometheusMetrics
///       privateLinkResourceRegion: ${exampleGrafana.location}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Dashboard` - 2025-08-01
///
/// ## Import
///
/// Dashboard Grafana Managed Private Endpoint Examples can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:dashboard/grafanaManagedPrivateEndpoint:GrafanaManagedPrivateEndpoint example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.Dashboard/grafana/workspace1/managedPrivateEndpoints/endpoint1
/// ```
class GrafanaManagedPrivateEndpoint extends pulumi.CustomResource {
  /// The id of the associated managed Grafana. Changing this forces a new Dashboard Grafana Managed Private Endpoint to be created.
  late final pulumi.Output<String> grafanaId;
  /// Specifies a list of private link group IDs. The value of this will depend on the private link resource to which you are connecting. Changing this forces a new Dashboard Grafana Managed Private Endpoint to be created.
  late final pulumi.Output<List<String>?> groupIds;
  /// The Azure Region where the Dashboard Grafana Managed Private Endpoint should exist. Changing this forces a new Dashboard Grafana Managed Private Endpoint to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Dashboard Grafana Managed Private Endpoint. Must be between 2 and 20 alphanumeric characters or dashes, must begin with letter and end with a letter or number. Changing this forces a new Dashboard Grafana Managed Private Endpoint to be created.
  late final pulumi.Output<String> name;
  /// The ID of the resource to which this Dashboard Grafana Managed Private Endpoint will connect. Changing this forces a new Dashboard Grafana Managed Private Endpoint to be created.
  late final pulumi.Output<String> privateLinkResourceId;
  /// The region in which to create the private link. Changing this forces a new Dashboard Grafana Managed Private Endpoint to be created.
  late final pulumi.Output<String?> privateLinkResourceRegion;
  /// A domain name for this endpoint to be used within Grafana. Must be just a domain, without schema, and with at least three parts.
  late final pulumi.Output<String?> privateLinkServiceUrl;
  /// A message to provide in the request which will be seen by approvers.
  late final pulumi.Output<String?> requestMessage;
  /// A mapping of tags which should be assigned to the Dashboard Grafana Managed Private Endpoint.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [GrafanaManagedPrivateEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GrafanaManagedPrivateEndpoint]. {@macro pulumi_dashboard_grafana_managed_private_endpoint_grafana_managed_private_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GrafanaManagedPrivateEndpoint(
    String name, {
    GrafanaManagedPrivateEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dashboard/grafanaManagedPrivateEndpoint:GrafanaManagedPrivateEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.grafanaId = registerOutput<String>('grafanaId');
    this.groupIds = registerOutput<List<String>?>('groupIds');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.privateLinkResourceId = registerOutput<String>('privateLinkResourceId');
    this.privateLinkResourceRegion = registerOutput<String?>('privateLinkResourceRegion');
    this.privateLinkServiceUrl = registerOutput<String?>('privateLinkServiceUrl');
    this.requestMessage = registerOutput<String?>('requestMessage');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [GrafanaManagedPrivateEndpoint] resource's state with the given [name] and [id].
  static GrafanaManagedPrivateEndpoint get(
    String name,
    pulumi.Input<String> id, {
    GrafanaManagedPrivateEndpointState? state,
  }) {
    return GrafanaManagedPrivateEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GrafanaManagedPrivateEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dashboard/grafanaManagedPrivateEndpoint:GrafanaManagedPrivateEndpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.grafanaId = registerOutput<String>('grafanaId');
    this.groupIds = registerOutput<List<String>?>('groupIds');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.privateLinkResourceId = registerOutput<String>('privateLinkResourceId');
    this.privateLinkResourceRegion = registerOutput<String?>('privateLinkResourceRegion');
    this.privateLinkServiceUrl = registerOutput<String?>('privateLinkServiceUrl');
    this.requestMessage = registerOutput<String?>('requestMessage');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
