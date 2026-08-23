import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_managed_certificate_args.dart';
import 'environment_managed_certificate_state.dart';

/// Manages a Container App Environment Managed Certificate.
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
///     name: "example-workspace",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "PerGB2018",
///     retentionInDays: 30,
/// });
/// const exampleEnvironment = new azure.containerapp.Environment("example", {
///     name: "example-environment",
///     location: example.location,
///     resourceGroupName: example.name,
///     logAnalyticsWorkspaceId: exampleAnalyticsWorkspace.id,
/// });
/// const exampleApp = new azure.containerapp.App("example", {
///     name: "example-app",
///     resourceGroupName: example.name,
///     containerAppEnvironmentId: exampleEnvironment.id,
///     revisionMode: "Single",
///     template: {
///         containers: [{
///             name: "example-container",
///             image: "mcr.microsoft.com/k8se/quickstart:latest",
///             cpu: 0.25,
///             memory: "0.5Gi",
///         }],
///     },
///     ingress: {
///         externalEnabled: true,
///         targetPort: 80,
///         transport: "http",
///         trafficWeights: [{
///             latestRevision: true,
///             percentage: 100,
///         }],
///     },
/// });
/// const exampleCustomDomain = new azure.containerapp.CustomDomain("example", {
///     name: "example.com",
///     containerAppId: exampleApp.id,
/// });
/// const exampleEnvironmentManagedCertificate = new azure.containerapp.EnvironmentManagedCertificate("example", {
///     name: "example-managed-cert",
///     containerAppEnvironmentId: exampleEnvironment.id,
///     subjectName: "example.com",
///     domainControlValidation: "HTTP",
/// }, {
///     dependsOn: [exampleCustomDomain],
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
///     name="example-workspace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="PerGB2018",
///     retention_in_days=30)
/// example_environment = azure.containerapp.Environment("example",
///     name="example-environment",
///     location=example.location,
///     resource_group_name=example.name,
///     log_analytics_workspace_id=example_analytics_workspace.id)
/// example_app = azure.containerapp.App("example",
///     name="example-app",
///     resource_group_name=example.name,
///     container_app_environment_id=example_environment.id,
///     revision_mode="Single",
///     template={
///         "containers": [{
///             "name": "example-container",
///             "image": "mcr.microsoft.com/k8se/quickstart:latest",
///             "cpu": 0.25,
///             "memory": "0.5Gi",
///         }],
///     },
///     ingress={
///         "external_enabled": True,
///         "target_port": 80,
///         "transport": "http",
///         "traffic_weights": [{
///             "latest_revision": True,
///             "percentage": 100,
///         }],
///     })
/// example_custom_domain = azure.containerapp.CustomDomain("example",
///     name="example.com",
///     container_app_id=example_app.id)
/// example_environment_managed_certificate = azure.containerapp.EnvironmentManagedCertificate("example",
///     name="example-managed-cert",
///     container_app_environment_id=example_environment.id,
///     subject_name="example.com",
///     domain_control_validation="HTTP",
///     opts = pulumi.ResourceOptions(depends_on=[example_custom_domain]))
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
///         Name = "example-workspace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "PerGB2018",
///         RetentionInDays = 30,
///     });
///
///     var exampleEnvironment = new Azure.ContainerApp.Environment("example", new()
///     {
///         Name = "example-environment",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         LogAnalyticsWorkspaceId = exampleAnalyticsWorkspace.Id,
///     });
///
///     var exampleApp = new Azure.ContainerApp.App("example", new()
///     {
///         Name = "example-app",
///         ResourceGroupName = example.Name,
///         ContainerAppEnvironmentId = exampleEnvironment.Id,
///         RevisionMode = "Single",
///         Template = new Azure.ContainerApp.Inputs.AppTemplateArgs
///         {
///             Containers = new[]
///             {
///                 new Azure.ContainerApp.Inputs.AppTemplateContainerArgs
///                 {
///                     Name = "example-container",
///                     Image = "mcr.microsoft.com/k8se/quickstart:latest",
///                     Cpu = 0.25,
///                     Memory = "0.5Gi",
///                 },
///             },
///         },
///         Ingress = new Azure.ContainerApp.Inputs.AppIngressArgs
///         {
///             ExternalEnabled = true,
///             TargetPort = 80,
///             Transport = "http",
///             TrafficWeights = new[]
///             {
///                 new Azure.ContainerApp.Inputs.AppIngressTrafficWeightArgs
///                 {
///                     LatestRevision = true,
///                     Percentage = 100,
///                 },
///             },
///         },
///     });
///
///     var exampleCustomDomain = new Azure.ContainerApp.CustomDomain("example", new()
///     {
///         Name = "example.com",
///         ContainerAppId = exampleApp.Id,
///     });
///
///     var exampleEnvironmentManagedCertificate = new Azure.ContainerApp.EnvironmentManagedCertificate("example", new()
///     {
///         Name = "example-managed-cert",
///         ContainerAppEnvironmentId = exampleEnvironment.Id,
///         SubjectName = "example.com",
///         DomainControlValidation = "HTTP",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleCustomDomain,
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
/// 			Name:              pulumi.String("example-workspace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("PerGB2018"),
/// 			RetentionInDays:   pulumi.Int(30),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEnvironment, err := containerapp.NewEnvironment(ctx, "example", &containerapp.EnvironmentArgs{
/// 			Name:                    pulumi.String("example-environment"),
/// 			Location:                example.Location,
/// 			ResourceGroupName:       example.Name,
/// 			LogAnalyticsWorkspaceId: exampleAnalyticsWorkspace.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleApp, err := containerapp.NewApp(ctx, "example", &containerapp.AppArgs{
/// 			Name:                      pulumi.String("example-app"),
/// 			ResourceGroupName:         example.Name,
/// 			ContainerAppEnvironmentId: exampleEnvironment.ID(),
/// 			RevisionMode:              pulumi.String("Single"),
/// 			Template: &containerapp.AppTemplateArgs{
/// 				Containers: containerapp.AppTemplateContainerArray{
/// 					&containerapp.AppTemplateContainerArgs{
/// 						Name:   pulumi.String("example-container"),
/// 						Image:  pulumi.String("mcr.microsoft.com/k8se/quickstart:latest"),
/// 						Cpu:    pulumi.Float64(0.25),
/// 						Memory: pulumi.String("0.5Gi"),
/// 					},
/// 				},
/// 			},
/// 			Ingress: &containerapp.AppIngressArgs{
/// 				ExternalEnabled: pulumi.Bool(true),
/// 				TargetPort:      pulumi.Int(80),
/// 				Transport:       pulumi.String("http"),
/// 				TrafficWeights: containerapp.AppIngressTrafficWeightArray{
/// 					&containerapp.AppIngressTrafficWeightArgs{
/// 						LatestRevision: pulumi.Bool(true),
/// 						Percentage:     pulumi.Int(100),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCustomDomain, err := containerapp.NewCustomDomain(ctx, "example", &containerapp.CustomDomainArgs{
/// 			Name:           pulumi.String("example.com"),
/// 			ContainerAppId: exampleApp.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containerapp.NewEnvironmentManagedCertificate(ctx, "example", &containerapp.EnvironmentManagedCertificateArgs{
/// 			Name:                      pulumi.String("example-managed-cert"),
/// 			ContainerAppEnvironmentId: exampleEnvironment.ID(),
/// 			SubjectName:               pulumi.String("example.com"),
/// 			DomainControlValidation:   pulumi.String("HTTP"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleCustomDomain,
/// 		}))
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
///   name                = "example-workspace"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "PerGB2018"
///   retention_in_days   = 30
/// }
/// resource "azure_containerapp_environment" "example" {
///   name                       = "example-environment"
///   location                   = azure_core_resourcegroup.example.location
///   resource_group_name        = azure_core_resourcegroup.example.name
///   log_analytics_workspace_id = azure_operationalinsights_analyticsworkspace.example.id
/// }
/// resource "azure_containerapp_app" "example" {
///   name                         = "example-app"
///   resource_group_name          = azure_core_resourcegroup.example.name
///   container_app_environment_id = azure_containerapp_environment.example.id
///   revision_mode                = "Single"
///   template = {
///     containers = [{
///       "name"   = "example-container"
///       "image"  = "mcr.microsoft.com/k8se/quickstart:latest"
///       "cpu"    = 0.25
///       "memory" = "0.5Gi"
///     }]
///   }
///   ingress = {
///     external_enabled = true
///     target_port      = 80
///     transport        = "http"
///     traffic_weights = [{
///       "latestRevision" = true
///       "percentage"     = 100
///     }]
///   }
/// }
/// resource "azure_containerapp_customdomain" "example" {
///   name             = "example.com"
///   container_app_id = azure_containerapp_app.example.id
/// }
/// resource "azure_containerapp_environmentmanagedcertificate" "example" {
///   depends_on                   = [azure_containerapp_customdomain.example]
///   name                         = "example-managed-cert"
///   container_app_environment_id = azure_containerapp_environment.example.id
///   subject_name                 = "example.com"
///   domain_control_validation    = "HTTP"
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
/// import com.pulumi.azure.containerapp.inputs.AppTemplateContainerArgs;
/// import com.pulumi.azure.containerapp.inputs.AppIngressArgs;
/// import com.pulumi.azure.containerapp.inputs.AppIngressTrafficWeightArgs;
/// import com.pulumi.azure.containerapp.CustomDomain;
/// import com.pulumi.azure.containerapp.CustomDomainArgs;
/// import com.pulumi.azure.containerapp.EnvironmentManagedCertificate;
/// import com.pulumi.azure.containerapp.EnvironmentManagedCertificateArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///             .name("example-workspace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("PerGB2018")
///             .retentionInDays(30)
///             .build());
///
///         var exampleEnvironment = new Environment("exampleEnvironment", EnvironmentArgs.builder()
///             .name("example-environment")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .logAnalyticsWorkspaceId(exampleAnalyticsWorkspace.id())
///             .build());
///
///         var exampleApp = new App("exampleApp", AppArgs.builder()
///             .name("example-app")
///             .resourceGroupName(example.name())
///             .containerAppEnvironmentId(exampleEnvironment.id())
///             .revisionMode("Single")
///             .template(AppTemplateArgs.builder()
///                 .containers(AppTemplateContainerArgs.builder()
///                     .name("example-container")
///                     .image("mcr.microsoft.com/k8se/quickstart:latest")
///                     .cpu(0.25)
///                     .memory("0.5Gi")
///                     .build())
///                 .build())
///             .ingress(AppIngressArgs.builder()
///                 .externalEnabled(true)
///                 .targetPort(80)
///                 .transport("http")
///                 .trafficWeights(AppIngressTrafficWeightArgs.builder()
///                     .latestRevision(true)
///                     .percentage(100)
///                     .build())
///                 .build())
///             .build());
///
///         var exampleCustomDomain = new CustomDomain("exampleCustomDomain", CustomDomainArgs.builder()
///             .name("example.com")
///             .containerAppId(exampleApp.id())
///             .build());
///
///         var exampleEnvironmentManagedCertificate = new EnvironmentManagedCertificate("exampleEnvironmentManagedCertificate", EnvironmentManagedCertificateArgs.builder()
///             .name("example-managed-cert")
///             .containerAppEnvironmentId(exampleEnvironment.id())
///             .subjectName("example.com")
///             .domainControlValidation("HTTP")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleCustomDomain)
///                 .build());
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
///       name: example-workspace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: PerGB2018
///       retentionInDays: 30
///   exampleEnvironment:
///     type: azure:containerapp:Environment
///     name: example
///     properties:
///       name: example-environment
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       logAnalyticsWorkspaceId: ${exampleAnalyticsWorkspace.id}
///   exampleApp:
///     type: azure:containerapp:App
///     name: example
///     properties:
///       name: example-app
///       resourceGroupName: ${example.name}
///       containerAppEnvironmentId: ${exampleEnvironment.id}
///       revisionMode: Single
///       template:
///         containers:
///           - name: example-container
///             image: mcr.microsoft.com/k8se/quickstart:latest
///             cpu: 0.25
///             memory: 0.5Gi
///       ingress:
///         externalEnabled: true
///         targetPort: 80
///         transport: http
///         trafficWeights:
///           - latestRevision: true
///             percentage: 100
///   exampleCustomDomain:
///     type: azure:containerapp:CustomDomain
///     name: example
///     properties:
///       name: example.com
///       containerAppId: ${exampleApp.id}
///   exampleEnvironmentManagedCertificate:
///     type: azure:containerapp:EnvironmentManagedCertificate
///     name: example
///     properties:
///       name: example-managed-cert
///       containerAppEnvironmentId: ${exampleEnvironment.id}
///       subjectName: example.com
///       domainControlValidation: HTTP
///     options:
///       dependsOn:
///         - ${exampleCustomDomain}
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
/// A Container App Environment Managed Certificate can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:containerapp/environmentManagedCertificate:EnvironmentManagedCertificate example "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resGroup1/providers/Microsoft.App/managedEnvironments/myenv/managedCertificates/mycertificate"
/// ```
class EnvironmentManagedCertificate extends pulumi.CustomResource {
  /// The Container App Managed Environment ID to configure this Managed Certificate on. Changing this forces a new resource to be created.
  late final pulumi.Output<String> containerAppEnvironmentId;
  /// The domain control validation type for the managed certificate. Possible values are `CNAME` and `HTTP`. Defaults to `HTTP`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The supported validation methods depend on the domain. Azure will validate domain ownership based on the specified method. `HTTP` validation requires an HTTP endpoint at the domain, `CNAME` validation requires DNS CNAME record configuration.
  late final pulumi.Output<String?> domainControlValidation;
  /// The name of the Container Apps Environment Managed Certificate. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The Subject Name of the Certificate. Must be a valid domain name. Changing this forces a new resource to be created.
  late final pulumi.Output<String> subjectName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The validation token for the managed certificate.
  late final pulumi.Output<String> validationToken;

  /// Creates a new [EnvironmentManagedCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvironmentManagedCertificate]. {@macro pulumi_containerapp_environment_managed_certificate_environment_managed_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvironmentManagedCertificate(
    String name, {
    EnvironmentManagedCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerapp/environmentManagedCertificate:EnvironmentManagedCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    containerAppEnvironmentId = registerOutput<String>('containerAppEnvironmentId');
    domainControlValidation = registerOutput<String?>('domainControlValidation');
    this.name = registerOutput<String>('name');
    subjectName = registerOutput<String>('subjectName');
    tags = registerOutput<Map<String, String>?>('tags');
    validationToken = registerOutput<String>('validationToken');
  }

  /// Gets an existing [EnvironmentManagedCertificate] resource's state with the given [name] and [id].
  static EnvironmentManagedCertificate get(
    String name,
    pulumi.Input<String> id, {
    EnvironmentManagedCertificateState? state,
  }) {
    return EnvironmentManagedCertificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EnvironmentManagedCertificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerapp/environmentManagedCertificate:EnvironmentManagedCertificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    containerAppEnvironmentId = registerOutput<String>('containerAppEnvironmentId');
    domainControlValidation = registerOutput<String?>('domainControlValidation');
    this.name = registerOutput<String>('name');
    subjectName = registerOutput<String>('subjectName');
    tags = registerOutput<Map<String, String>?>('tags');
    validationToken = registerOutput<String>('validationToken');
  }
}
