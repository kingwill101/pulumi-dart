import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_build_deployment_args.dart';
import 'spring_cloud_build_deployment_quota.dart';
import 'spring_cloud_build_deployment_state.dart';

/// Manages a Spring Cloud Build Deployment.
///
/// &gt; **Note:** This resource is applicable only for Spring Cloud Service with enterprise tier.
///
/// &gt; **Note:** Azure Spring Apps is now deprecated and will be retired on 2028-05-31 - as such the `azure.appplatform.SpringCloudBuildDeployment` resource is deprecated and will be removed in a future major version of the AzureRM Provider. See https://aka.ms/asaretirement for more information.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example",
///     location: "West Europe",
/// });
/// const exampleSpringCloudService = new azure.appplatform.SpringCloudService("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "E0",
/// });
/// const exampleSpringCloudApp = new azure.appplatform.SpringCloudApp("example", {
///     name: "example",
///     resourceGroupName: exampleSpringCloudService.resourceGroupName,
///     serviceName: exampleSpringCloudService.name,
/// });
/// const exampleSpringCloudBuildDeployment = new azure.appplatform.SpringCloudBuildDeployment("example", {
///     name: "example",
///     springCloudAppId: exampleSpringCloudApp.id,
///     buildResultId: "<default>",
///     instanceCount: 2,
///     environmentVariables: {
///         Foo: "Bar",
///         Env: "Staging",
///     },
///     quota: {
///         cpu: "2",
///         memory: "4Gi",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example",
///     location="West Europe")
/// example_spring_cloud_service = azure.appplatform.SpringCloudService("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="E0")
/// example_spring_cloud_app = azure.appplatform.SpringCloudApp("example",
///     name="example",
///     resource_group_name=example_spring_cloud_service.resource_group_name,
///     service_name=example_spring_cloud_service.name)
/// example_spring_cloud_build_deployment = azure.appplatform.SpringCloudBuildDeployment("example",
///     name="example",
///     spring_cloud_app_id=example_spring_cloud_app.id,
///     build_result_id="<default>",
///     instance_count=2,
///     environment_variables={
///         "Foo": "Bar",
///         "Env": "Staging",
///     },
///     quota={
///         "cpu": "2",
///         "memory": "4Gi",
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
///         Name = "example",
///         Location = "West Europe",
///     });
///
///     var exampleSpringCloudService = new Azure.AppPlatform.SpringCloudService("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "E0",
///     });
///
///     var exampleSpringCloudApp = new Azure.AppPlatform.SpringCloudApp("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = exampleSpringCloudService.ResourceGroupName,
///         ServiceName = exampleSpringCloudService.Name,
///     });
///
///     var exampleSpringCloudBuildDeployment = new Azure.AppPlatform.SpringCloudBuildDeployment("example", new()
///     {
///         Name = "example",
///         SpringCloudAppId = exampleSpringCloudApp.Id,
///         BuildResultId = "<default>",
///         InstanceCount = 2,
///         EnvironmentVariables =
///         {
///             { "Foo", "Bar" },
///             { "Env", "Staging" },
///         },
///         Quota = new Azure.AppPlatform.Inputs.SpringCloudBuildDeploymentQuotaArgs
///         {
///             Cpu = "2",
///             Memory = "4Gi",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appplatform"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSpringCloudService, err := appplatform.NewSpringCloudService(ctx, "example", &appplatform.SpringCloudServiceArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("E0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSpringCloudApp, err := appplatform.NewSpringCloudApp(ctx, "example", &appplatform.SpringCloudAppArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: exampleSpringCloudService.ResourceGroupName,
/// 			ServiceName:       exampleSpringCloudService.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appplatform.NewSpringCloudBuildDeployment(ctx, "example", &appplatform.SpringCloudBuildDeploymentArgs{
/// 			Name:             pulumi.String("example"),
/// 			SpringCloudAppId: exampleSpringCloudApp.ID(),
/// 			BuildResultId:    pulumi.String("<default>"),
/// 			InstanceCount:    pulumi.Int(2),
/// 			EnvironmentVariables: pulumi.StringMap{
/// 				"Foo": pulumi.String("Bar"),
/// 				"Env": pulumi.String("Staging"),
/// 			},
/// 			Quota: &appplatform.SpringCloudBuildDeploymentQuotaArgs{
/// 				Cpu:    pulumi.String("2"),
/// 				Memory: pulumi.String("4Gi"),
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
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example"
///   location = "West Europe"
/// }
/// resource "azure_appplatform_springcloudservice" "example" {
///   name                = "example"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = "E0"
/// }
/// resource "azure_appplatform_springcloudapp" "example" {
///   name                = "example"
///   resource_group_name = azure_appplatform_springcloudservice.example.resource_group_name
///   service_name        = azure_appplatform_springcloudservice.example.name
/// }
/// resource "azure_appplatform_springcloudbuilddeployment" "example" {
///   name                = "example"
///   spring_cloud_app_id = azure_appplatform_springcloudapp.example.id
///   build_result_id     = "<default>"
///   instance_count      = 2
///   environment_variables = {
///     "Foo" = "Bar"
///     "Env" = "Staging"
///   }
///   quota = {
///     cpu    = "2"
///     memory = "4Gi"
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
/// import com.pulumi.azure.appplatform.SpringCloudService;
/// import com.pulumi.azure.appplatform.SpringCloudServiceArgs;
/// import com.pulumi.azure.appplatform.SpringCloudApp;
/// import com.pulumi.azure.appplatform.SpringCloudAppArgs;
/// import com.pulumi.azure.appplatform.SpringCloudBuildDeployment;
/// import com.pulumi.azure.appplatform.SpringCloudBuildDeploymentArgs;
/// import com.pulumi.azure.appplatform.inputs.SpringCloudBuildDeploymentQuotaArgs;
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
///             .name("example")
///             .location("West Europe")
///             .build());
///
///         var exampleSpringCloudService = new SpringCloudService("exampleSpringCloudService", SpringCloudServiceArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("E0")
///             .build());
///
///         var exampleSpringCloudApp = new SpringCloudApp("exampleSpringCloudApp", SpringCloudAppArgs.builder()
///             .name("example")
///             .resourceGroupName(exampleSpringCloudService.resourceGroupName())
///             .serviceName(exampleSpringCloudService.name())
///             .build());
///
///         var exampleSpringCloudBuildDeployment = new SpringCloudBuildDeployment("exampleSpringCloudBuildDeployment", SpringCloudBuildDeploymentArgs.builder()
///             .name("example")
///             .springCloudAppId(exampleSpringCloudApp.id())
///             .buildResultId("<default>")
///             .instanceCount(2)
///             .environmentVariables(Map.ofEntries(
///                 Map.entry("Foo", "Bar"),
///                 Map.entry("Env", "Staging")
///             ))
///             .quota(SpringCloudBuildDeploymentQuotaArgs.builder()
///                 .cpu("2")
///                 .memory("4Gi")
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
///       name: example
///       location: West Europe
///   exampleSpringCloudService:
///     type: azure:appplatform:SpringCloudService
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: E0
///   exampleSpringCloudApp:
///     type: azure:appplatform:SpringCloudApp
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${exampleSpringCloudService.resourceGroupName}
///       serviceName: ${exampleSpringCloudService.name}
///   exampleSpringCloudBuildDeployment:
///     type: azure:appplatform:SpringCloudBuildDeployment
///     name: example
///     properties:
///       name: example
///       springCloudAppId: ${exampleSpringCloudApp.id}
///       buildResultId: <default>
///       instanceCount: 2
///       environmentVariables:
///         Foo: Bar
///         Env: Staging
///       quota:
///         cpu: '2'
///         memory: 4Gi
/// ```
///
///
/// ## Import
///
/// Spring Cloud Build Deployments can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appplatform/springCloudBuildDeployment:SpringCloudBuildDeployment example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resGroup1/providers/Microsoft.AppPlatform/spring/spring1/apps/app1/deployments/deploy1
/// ```
class SpringCloudBuildDeployment extends pulumi.CustomResource {
  /// A JSON object that contains the addon configurations of the Spring Cloud Build Deployment.
  late final pulumi.Output<String> addonJson;
  /// Specifies a list of Spring Cloud Application Performance Monitoring IDs.
  late final pulumi.Output<List<String>?> applicationPerformanceMonitoringIds;
  /// The ID of the Spring Cloud Build Result.
  late final pulumi.Output<String> buildResultId;
  /// Specifies the environment variables of the Spring Cloud Deployment as a map of key-value pairs.
  late final pulumi.Output<Map<String, String>?> environmentVariables;
  /// Specifies the required instance count of the Spring Cloud Deployment. Possible Values are between `1` and `500`. Defaults to `1` if not specified.
  late final pulumi.Output<int?> instanceCount;
  /// The name which should be used for this Spring Cloud Build Deployment. Changing this forces a new Spring Cloud Build Deployment to be created.
  late final pulumi.Output<String> name;
  /// A `quota` block as defined below.
  late final pulumi.Output<SpringCloudBuildDeploymentQuota> quota;
  /// The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Build Deployment to be created.
  late final pulumi.Output<String> springCloudAppId;

  /// Creates a new [SpringCloudBuildDeployment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpringCloudBuildDeployment]. {@macro pulumi_appplatform_spring_cloud_build_deployment_spring_cloud_build_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpringCloudBuildDeployment(
    String name, {
    SpringCloudBuildDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudBuildDeployment:SpringCloudBuildDeployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addonJson = registerOutput<String>('addonJson');
    applicationPerformanceMonitoringIds = registerOutput<List<String>?>('applicationPerformanceMonitoringIds');
    buildResultId = registerOutput<String>('buildResultId');
    environmentVariables = registerOutput<Map<String, String>?>('environmentVariables');
    instanceCount = registerOutput<int?>('instanceCount');
    this.name = registerOutput<String>('name');
    quota = registerOutput<SpringCloudBuildDeploymentQuota>('quota', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpringCloudBuildDeploymentQuota.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    springCloudAppId = registerOutput<String>('springCloudAppId');
  }

  /// Gets an existing [SpringCloudBuildDeployment] resource's state with the given [name] and [id].
  static SpringCloudBuildDeployment get(
    String name,
    pulumi.Input<String> id, {
    SpringCloudBuildDeploymentState? state,
  }) {
    return SpringCloudBuildDeployment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SpringCloudBuildDeployment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudBuildDeployment:SpringCloudBuildDeployment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addonJson = registerOutput<String>('addonJson');
    applicationPerformanceMonitoringIds = registerOutput<List<String>?>('applicationPerformanceMonitoringIds');
    buildResultId = registerOutput<String>('buildResultId');
    environmentVariables = registerOutput<Map<String, String>?>('environmentVariables');
    instanceCount = registerOutput<int?>('instanceCount');
    this.name = registerOutput<String>('name');
    quota = registerOutput<SpringCloudBuildDeploymentQuota>('quota', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpringCloudBuildDeploymentQuota.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    springCloudAppId = registerOutput<String>('springCloudAppId');
  }
}
