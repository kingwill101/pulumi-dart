import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_dapr_component_args.dart';
import 'environment_dapr_component_state.dart';

/// Manages a Dapr Component for a Container App Environment.
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
///     name: "acctest-01",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "PerGB2018",
///     retentionInDays: 30,
/// });
/// const exampleEnvironment = new azure.containerapp.Environment("example", {
///     name: "Example-Environment",
///     location: example.location,
///     resourceGroupName: example.name,
///     logAnalyticsWorkspaceId: exampleAnalyticsWorkspace.id,
/// });
/// const exampleEnvironmentDaprComponent = new azure.containerapp.EnvironmentDaprComponent("example", {
///     name: "example-component",
///     containerAppEnvironmentId: exampleEnvironment.id,
///     componentType: "state.azure.blobstorage",
///     version: "v1",
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
///     name="acctest-01",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="PerGB2018",
///     retention_in_days=30)
/// example_environment = azure.containerapp.Environment("example",
///     name="Example-Environment",
///     location=example.location,
///     resource_group_name=example.name,
///     log_analytics_workspace_id=example_analytics_workspace.id)
/// example_environment_dapr_component = azure.containerapp.EnvironmentDaprComponent("example",
///     name="example-component",
///     container_app_environment_id=example_environment.id,
///     component_type="state.azure.blobstorage",
///     version="v1")
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
///         Name = "acctest-01",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "PerGB2018",
///         RetentionInDays = 30,
///     });
///
///     var exampleEnvironment = new Azure.ContainerApp.Environment("example", new()
///     {
///         Name = "Example-Environment",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         LogAnalyticsWorkspaceId = exampleAnalyticsWorkspace.Id,
///     });
///
///     var exampleEnvironmentDaprComponent = new Azure.ContainerApp.EnvironmentDaprComponent("example", new()
///     {
///         Name = "example-component",
///         ContainerAppEnvironmentId = exampleEnvironment.Id,
///         ComponentType = "state.azure.blobstorage",
///         Version = "v1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerapp"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/operationalinsights"
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
/// 			Name:              pulumi.String("acctest-01"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("PerGB2018"),
/// 			RetentionInDays:   pulumi.Int(30),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEnvironment, err := containerapp.NewEnvironment(ctx, "example", &containerapp.EnvironmentArgs{
/// 			Name:                    pulumi.String("Example-Environment"),
/// 			Location:                example.Location,
/// 			ResourceGroupName:       example.Name,
/// 			LogAnalyticsWorkspaceId: exampleAnalyticsWorkspace.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containerapp.NewEnvironmentDaprComponent(ctx, "example", &containerapp.EnvironmentDaprComponentArgs{
/// 			Name:                      pulumi.String("example-component"),
/// 			ContainerAppEnvironmentId: exampleEnvironment.ID(),
/// 			ComponentType:             pulumi.String("state.azure.blobstorage"),
/// 			Version:                   pulumi.String("v1"),
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
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_operationalinsights_analyticsworkspace" "example" {
///   name                = "acctest-01"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "PerGB2018"
///   retention_in_days   = 30
/// }
/// resource "azure_containerapp_environment" "example" {
///   name                       = "Example-Environment"
///   location                   = azure_core_resourcegroup.example.location
///   resource_group_name        = azure_core_resourcegroup.example.name
///   log_analytics_workspace_id = azure_operationalinsights_analyticsworkspace.example.id
/// }
/// resource "azure_containerapp_environmentdaprcomponent" "example" {
///   name                         = "example-component"
///   container_app_environment_id = azure_containerapp_environment.example.id
///   component_type               = "state.azure.blobstorage"
///   version                      = "v1"
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
/// import com.pulumi.azure.containerapp.Environment;
/// import com.pulumi.azure.containerapp.EnvironmentArgs;
/// import com.pulumi.azure.containerapp.EnvironmentDaprComponent;
/// import com.pulumi.azure.containerapp.EnvironmentDaprComponentArgs;
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
///         var exampleAnalyticsWorkspace = new AnalyticsWorkspace("exampleAnalyticsWorkspace", AnalyticsWorkspaceArgs.builder()
///             .name("acctest-01")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("PerGB2018")
///             .retentionInDays(30)
///             .build());
///
///         var exampleEnvironment = new Environment("exampleEnvironment", EnvironmentArgs.builder()
///             .name("Example-Environment")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .logAnalyticsWorkspaceId(exampleAnalyticsWorkspace.id())
///             .build());
///
///         var exampleEnvironmentDaprComponent = new EnvironmentDaprComponent("exampleEnvironmentDaprComponent", EnvironmentDaprComponentArgs.builder()
///             .name("example-component")
///             .containerAppEnvironmentId(exampleEnvironment.id())
///             .componentType("state.azure.blobstorage")
///             .version("v1")
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
///       name: acctest-01
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: PerGB2018
///       retentionInDays: 30
///   exampleEnvironment:
///     type: azure:containerapp:Environment
///     name: example
///     properties:
///       name: Example-Environment
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       logAnalyticsWorkspaceId: ${exampleAnalyticsWorkspace.id}
///   exampleEnvironmentDaprComponent:
///     type: azure:containerapp:EnvironmentDaprComponent
///     name: example
///     properties:
///       name: example-component
///       containerAppEnvironmentId: ${exampleEnvironment.id}
///       componentType: state.azure.blobstorage
///       version: v1
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.App` - 2025-07-01
///
/// ## Import
///
/// A Dapr Component for a Container App Environment can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:containerapp/environmentDaprComponent:EnvironmentDaprComponent example "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resGroup1/providers/Microsoft.App/managedEnvironments/myenv/daprComponents/mydaprcomponent"
/// ```
class EnvironmentDaprComponent extends pulumi.CustomResource {
  /// The Dapr Component Type. For example `state.azure.blobstorage`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> componentType;
  /// The ID of the Container App Managed Environment for this Dapr Component. Changing this forces a new resource to be created.
  late final pulumi.Output<String> containerAppEnvironmentId;
  /// Should the Dapr sidecar to continue initialisation if the component fails to load. Defaults to `false`
  late final pulumi.Output<bool?> ignoreErrors;
  /// The timeout for component initialisation as a `ISO8601` formatted string. e.g. `5s`, `2h`, `1m`. Defaults to `5s`.
  late final pulumi.Output<String?> initTimeout;
  /// One or more `metadata` blocks as detailed below.
  late final pulumi.Output<List<Map<String, dynamic>>?> metadatas;
  /// The name for this Dapr component. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A list of scopes to which this component applies.
  ///
  /// &gt; **Note:** See the official docs for more information at https://learn.microsoft.com/en-us/azure/container-apps/dapr-overview?tabs=bicep1%2Cyaml#component-scopes
  late final pulumi.Output<List<String>?> scopes;
  /// A `secret` block as detailed below.
  late final pulumi.Output<List<Map<String, dynamic>>?> secrets;
  /// The version of the component.
  late final pulumi.Output<String> version;

  /// Creates a new [EnvironmentDaprComponent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvironmentDaprComponent]. {@macro pulumi_containerapp_environment_dapr_component_environment_dapr_component_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvironmentDaprComponent(
    String name, {
    EnvironmentDaprComponentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerapp/environmentDaprComponent:EnvironmentDaprComponent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    componentType = registerOutput<String>('componentType');
    containerAppEnvironmentId = registerOutput<String>('containerAppEnvironmentId');
    ignoreErrors = registerOutput<bool?>('ignoreErrors');
    initTimeout = registerOutput<String?>('initTimeout');
    metadatas = registerOutput<List<Map<String, dynamic>>?>('metadatas');
    this.name = registerOutput<String>('name');
    scopes = registerOutput<List<String>?>('scopes');
    secrets = registerOutput<List<Map<String, dynamic>>?>('secrets');
    version = registerOutput<String>('version');
  }

  /// Gets an existing [EnvironmentDaprComponent] resource's state with the given [name] and [id].
  static EnvironmentDaprComponent get(
    String name,
    pulumi.Input<String> id, {
    EnvironmentDaprComponentState? state,
  }) {
    return EnvironmentDaprComponent._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EnvironmentDaprComponent._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerapp/environmentDaprComponent:EnvironmentDaprComponent',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    componentType = registerOutput<String>('componentType');
    containerAppEnvironmentId = registerOutput<String>('containerAppEnvironmentId');
    ignoreErrors = registerOutput<bool?>('ignoreErrors');
    initTimeout = registerOutput<String?>('initTimeout');
    metadatas = registerOutput<List<Map<String, dynamic>>?>('metadatas');
    this.name = registerOutput<String>('name');
    scopes = registerOutput<List<String>?>('scopes');
    secrets = registerOutput<List<Map<String, dynamic>>?>('secrets');
    version = registerOutput<String>('version');
  }
}
