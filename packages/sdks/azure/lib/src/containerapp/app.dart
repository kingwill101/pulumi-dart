import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_args.dart';
import 'app_dapr.dart';
import 'app_identity.dart';
import 'app_ingress.dart';
import 'app_state.dart';
import 'app_template.dart';

/// Manages a Container App.
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
/// const exampleApp = new azure.containerapp.App("example", {
///     name: "example-app",
///     containerAppEnvironmentId: exampleEnvironment.id,
///     resourceGroupName: example.name,
///     revisionMode: "Single",
///     template: {
///         containers: [{
///             name: "examplecontainerapp",
///             image: "mcr.microsoft.com/k8se/quickstart:latest",
///             cpu: 0.25,
///             memory: "0.5Gi",
///         }],
///     },
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
/// example_app = azure.containerapp.App("example",
///     name="example-app",
///     container_app_environment_id=example_environment.id,
///     resource_group_name=example.name,
///     revision_mode="Single",
///     template={
///         "containers": [{
///             "name": "examplecontainerapp",
///             "image": "mcr.microsoft.com/k8se/quickstart:latest",
///             "cpu": 0.25,
///             "memory": "0.5Gi",
///         }],
///     })
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
///     var exampleApp = new Azure.ContainerApp.App("example", new()
///     {
///         Name = "example-app",
///         ContainerAppEnvironmentId = exampleEnvironment.Id,
///         ResourceGroupName = example.Name,
///         RevisionMode = "Single",
///         Template = new Azure.ContainerApp.Inputs.AppTemplateArgs
///         {
///             Containers = new[]
///             {
///                 new Azure.ContainerApp.Inputs.AppTemplateContainerArgs
///                 {
///                     Name = "examplecontainerapp",
///                     Image = "mcr.microsoft.com/k8se/quickstart:latest",
///                     Cpu = 0.25,
///                     Memory = "0.5Gi",
///                 },
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
/// 		_, err = containerapp.NewApp(ctx, "example", &containerapp.AppArgs{
/// 			Name:                      pulumi.String("example-app"),
/// 			ContainerAppEnvironmentId: exampleEnvironment.ID(),
/// 			ResourceGroupName:         example.Name,
/// 			RevisionMode:              pulumi.String("Single"),
/// 			Template: &containerapp.AppTemplateArgs{
/// 				Containers: containerapp.AppTemplateContainerArray{
/// 					&containerapp.AppTemplateContainerArgs{
/// 						Name:   pulumi.String("examplecontainerapp"),
/// 						Image:  pulumi.String("mcr.microsoft.com/k8se/quickstart:latest"),
/// 						Cpu:    pulumi.Float64(0.25),
/// 						Memory: pulumi.String("0.5Gi"),
/// 					},
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
/// import com.pulumi.azure.containerapp.App;
/// import com.pulumi.azure.containerapp.AppArgs;
/// import com.pulumi.azure.containerapp.inputs.AppTemplateArgs;
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
///         var exampleApp = new App("exampleApp", AppArgs.builder()
///             .name("example-app")
///             .containerAppEnvironmentId(exampleEnvironment.id())
///             .resourceGroupName(example.name())
///             .revisionMode("Single")
///             .template(AppTemplateArgs.builder()
///                 .containers(AppTemplateContainerArgs.builder()
///                     .name("examplecontainerapp")
///                     .image("mcr.microsoft.com/k8se/quickstart:latest")
///                     .cpu(0.25)
///                     .memory("0.5Gi")
///                     .build())
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
///   exampleApp:
///     type: azure:containerapp:App
///     name: example
///     properties:
///       name: example-app
///       containerAppEnvironmentId: ${exampleEnvironment.id}
///       resourceGroupName: ${example.name}
///       revisionMode: Single
///       template:
///         containers:
///           - name: examplecontainerapp
///             image: mcr.microsoft.com/k8se/quickstart:latest
///             cpu: 0.25
///             memory: 0.5Gi
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
/// A Container App can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:containerapp/app:App example "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resGroup1/providers/Microsoft.App/containerApps/myContainerApp"
/// ```
class App extends pulumi.CustomResource {
  /// The ID of the Container App Environment within which this Container App should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> containerAppEnvironmentId;

  /// The ID of the Custom Domain Verification for this Container App.
  late final pulumi.Output<String> customDomainVerificationId;

  /// A `dapr` block as detailed below.
  late final pulumi.Output<AppDapr?> dapr;

  /// An `identity` block as detailed below.
  late final pulumi.Output<AppIdentity?> identity;

  /// An `ingress` block as detailed below.
  late final pulumi.Output<AppIngress?> ingress;

  /// The FQDN of the Latest Revision of the Container App.
  late final pulumi.Output<String> latestRevisionFqdn;

  /// The name of the latest Container Revision.
  late final pulumi.Output<String> latestRevisionName;

  /// The location this Container App is deployed in. This is the same as the Environment in which it is deployed.
  late final pulumi.Output<String> location;

  /// The maximum of inactive revisions allowed for this Container App.
  late final pulumi.Output<int?> maxInactiveRevisions;

  /// The name for this Container App. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// A list of the Public IP Addresses which the Container App uses for outbound network access.
  late final pulumi.Output<List<String>> outboundIpAddresses;

  /// A `registry` block as detailed below.
  late final pulumi.Output<List<Map<String, dynamic>>?> registries;

  /// The name of the resource group in which the Container App Environment is to be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The revisions operational mode for the Container App. Possible values include `Single` and `Multiple`. In `Single` mode, a single revision is in operation at any given time. In `Multiple` mode, more than one revision can be active at a time and can be configured with load distribution via the `traffic_weight` block in the `ingress` configuration.
  late final pulumi.Output<String> revisionMode;

  /// One or more `secret` block as detailed below.
  late final pulumi.Output<List<Map<String, dynamic>>?> secrets;

  /// A mapping of tags to assign to the Container App.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A `template` block as detailed below.
  late final pulumi.Output<AppTemplate> template;

  /// The name of the Workload Profile in the Container App Environment to place this Container App.
  ///
  /// &gt; **Note:** Omit this value to use the default `Consumption` Workload Profile.
  late final pulumi.Output<String?> workloadProfileName;

  /// Creates a new [App].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [App]. {@macro pulumi_containerapp_app_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  App(String name, {AppArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure:containerapp/app:App',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    containerAppEnvironmentId = registerOutput<String>(
      'containerAppEnvironmentId',
    );
    customDomainVerificationId = registerOutput<String>(
      'customDomainVerificationId',
    );
    dapr = registerOutput<AppDapr?>('dapr');
    identity = registerOutput<AppIdentity?>('identity');
    ingress = registerOutput<AppIngress?>('ingress');
    latestRevisionFqdn = registerOutput<String>('latestRevisionFqdn');
    latestRevisionName = registerOutput<String>('latestRevisionName');
    location = registerOutput<String>('location');
    maxInactiveRevisions = registerOutput<int?>('maxInactiveRevisions');
    this.name = registerOutput<String>('name');
    outboundIpAddresses = registerOutput<List<String>>('outboundIpAddresses');
    registries = registerOutput<List<Map<String, dynamic>>?>('registries');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    revisionMode = registerOutput<String>('revisionMode');
    secrets = registerOutput<List<Map<String, dynamic>>?>('secrets');
    tags = registerOutput<Map<String, String>?>('tags');
    template = registerOutput<AppTemplate>('template');
    workloadProfileName = registerOutput<String?>('workloadProfileName');
  }

  /// Gets an existing [App] resource's state with the given [name] and [id].
  static App get(String name, pulumi.Input<String> id, {AppState? state}) {
    return App._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  App._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:containerapp/app:App',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    containerAppEnvironmentId = registerOutput<String>(
      'containerAppEnvironmentId',
    );
    customDomainVerificationId = registerOutput<String>(
      'customDomainVerificationId',
    );
    dapr = registerOutput<AppDapr?>('dapr');
    identity = registerOutput<AppIdentity?>('identity');
    ingress = registerOutput<AppIngress?>('ingress');
    latestRevisionFqdn = registerOutput<String>('latestRevisionFqdn');
    latestRevisionName = registerOutput<String>('latestRevisionName');
    location = registerOutput<String>('location');
    maxInactiveRevisions = registerOutput<int?>('maxInactiveRevisions');
    this.name = registerOutput<String>('name');
    outboundIpAddresses = registerOutput<List<String>>('outboundIpAddresses');
    registries = registerOutput<List<Map<String, dynamic>>?>('registries');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    revisionMode = registerOutput<String>('revisionMode');
    secrets = registerOutput<List<Map<String, dynamic>>?>('secrets');
    tags = registerOutput<Map<String, String>?>('tags');
    template = registerOutput<AppTemplate>('template');
    workloadProfileName = registerOutput<String?>('workloadProfileName');
  }
}
