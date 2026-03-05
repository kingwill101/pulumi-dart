import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_active_deployment_args.dart';
import 'spring_cloud_active_deployment_state.dart';

/// Manages an Active Azure Spring Cloud Deployment.
///
/// !&gt; **Note:** Azure Spring Apps is now deprecated and will be retired on 2028-05-31 - as such the `azure.appplatform.SpringCloudActiveDeployment` resource is deprecated and will be removed in a future major version of the AzureRM Provider. See https://aka.ms/asaretirement for more information.
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
/// const exampleSpringCloudService = new azure.appplatform.SpringCloudService("example", {
///     name: "example-springcloud",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleSpringCloudApp = new azure.appplatform.SpringCloudApp("example", {
///     name: "example-springcloudapp",
///     resourceGroupName: example.name,
///     serviceName: exampleSpringCloudService.name,
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleSpringCloudJavaDeployment = new azure.appplatform.SpringCloudJavaDeployment("example", {
///     name: "deploy1",
///     springCloudAppId: exampleSpringCloudApp.id,
///     instanceCount: 2,
///     jvmOptions: "-XX:+PrintGC",
///     runtimeVersion: "Java_11",
///     quota: {
///         cpu: "2",
///         memory: "4Gi",
///     },
///     environmentVariables: {
///         Env: "Staging",
///     },
/// });
/// const exampleSpringCloudActiveDeployment = new azure.appplatform.SpringCloudActiveDeployment("example", {
///     springCloudAppId: exampleSpringCloudApp.id,
///     deploymentName: exampleSpringCloudJavaDeployment.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_spring_cloud_service = azure.appplatform.SpringCloudService("example",
///     name="example-springcloud",
///     resource_group_name=example.name,
///     location=example.location)
/// example_spring_cloud_app = azure.appplatform.SpringCloudApp("example",
///     name="example-springcloudapp",
///     resource_group_name=example.name,
///     service_name=example_spring_cloud_service.name,
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_spring_cloud_java_deployment = azure.appplatform.SpringCloudJavaDeployment("example",
///     name="deploy1",
///     spring_cloud_app_id=example_spring_cloud_app.id,
///     instance_count=2,
///     jvm_options="-XX:+PrintGC",
///     runtime_version="Java_11",
///     quota={
///         "cpu": "2",
///         "memory": "4Gi",
///     },
///     environment_variables={
///         "Env": "Staging",
///     })
/// example_spring_cloud_active_deployment = azure.appplatform.SpringCloudActiveDeployment("example",
///     spring_cloud_app_id=example_spring_cloud_app.id,
///     deployment_name=example_spring_cloud_java_deployment.name)
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
///     var exampleSpringCloudService = new Azure.AppPlatform.SpringCloudService("example", new()
///     {
///         Name = "example-springcloud",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleSpringCloudApp = new Azure.AppPlatform.SpringCloudApp("example", new()
///     {
///         Name = "example-springcloudapp",
///         ResourceGroupName = example.Name,
///         ServiceName = exampleSpringCloudService.Name,
///         Identity = new Azure.AppPlatform.Inputs.SpringCloudAppIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleSpringCloudJavaDeployment = new Azure.AppPlatform.SpringCloudJavaDeployment("example", new()
///     {
///         Name = "deploy1",
///         SpringCloudAppId = exampleSpringCloudApp.Id,
///         InstanceCount = 2,
///         JvmOptions = "-XX:+PrintGC",
///         RuntimeVersion = "Java_11",
///         Quota = new Azure.AppPlatform.Inputs.SpringCloudJavaDeploymentQuotaArgs
///         {
///             Cpu = "2",
///             Memory = "4Gi",
///         },
///         EnvironmentVariables =
///         {
///             { "Env", "Staging" },
///         },
///     });
///
///     var exampleSpringCloudActiveDeployment = new Azure.AppPlatform.SpringCloudActiveDeployment("example", new()
///     {
///         SpringCloudAppId = exampleSpringCloudApp.Id,
///         DeploymentName = exampleSpringCloudJavaDeployment.Name,
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
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSpringCloudService, err := appplatform.NewSpringCloudService(ctx, "example", &appplatform.SpringCloudServiceArgs{
/// 			Name:              pulumi.String("example-springcloud"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSpringCloudApp, err := appplatform.NewSpringCloudApp(ctx, "example", &appplatform.SpringCloudAppArgs{
/// 			Name:              pulumi.String("example-springcloudapp"),
/// 			ResourceGroupName: example.Name,
/// 			ServiceName:       exampleSpringCloudService.Name,
/// 			Identity: &appplatform.SpringCloudAppIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSpringCloudJavaDeployment, err := appplatform.NewSpringCloudJavaDeployment(ctx, "example", &appplatform.SpringCloudJavaDeploymentArgs{
/// 			Name:             pulumi.String("deploy1"),
/// 			SpringCloudAppId: exampleSpringCloudApp.ID(),
/// 			InstanceCount:    pulumi.Int(2),
/// 			JvmOptions:       pulumi.String("-XX:+PrintGC"),
/// 			RuntimeVersion:   pulumi.String("Java_11"),
/// 			Quota: &appplatform.SpringCloudJavaDeploymentQuotaArgs{
/// 				Cpu:    pulumi.String("2"),
/// 				Memory: pulumi.String("4Gi"),
/// 			},
/// 			EnvironmentVariables: pulumi.StringMap{
/// 				"Env": pulumi.String("Staging"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appplatform.NewSpringCloudActiveDeployment(ctx, "example", &appplatform.SpringCloudActiveDeploymentArgs{
/// 			SpringCloudAppId: exampleSpringCloudApp.ID(),
/// 			DeploymentName:   exampleSpringCloudJavaDeployment.Name,
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
/// import com.pulumi.azure.appplatform.SpringCloudService;
/// import com.pulumi.azure.appplatform.SpringCloudServiceArgs;
/// import com.pulumi.azure.appplatform.SpringCloudApp;
/// import com.pulumi.azure.appplatform.SpringCloudAppArgs;
/// import com.pulumi.azure.appplatform.inputs.SpringCloudAppIdentityArgs;
/// import com.pulumi.azure.appplatform.SpringCloudJavaDeployment;
/// import com.pulumi.azure.appplatform.SpringCloudJavaDeploymentArgs;
/// import com.pulumi.azure.appplatform.inputs.SpringCloudJavaDeploymentQuotaArgs;
/// import com.pulumi.azure.appplatform.SpringCloudActiveDeployment;
/// import com.pulumi.azure.appplatform.SpringCloudActiveDeploymentArgs;
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
///         var exampleSpringCloudService = new SpringCloudService("exampleSpringCloudService", SpringCloudServiceArgs.builder()
///             .name("example-springcloud")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleSpringCloudApp = new SpringCloudApp("exampleSpringCloudApp", SpringCloudAppArgs.builder()
///             .name("example-springcloudapp")
///             .resourceGroupName(example.name())
///             .serviceName(exampleSpringCloudService.name())
///             .identity(SpringCloudAppIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleSpringCloudJavaDeployment = new SpringCloudJavaDeployment("exampleSpringCloudJavaDeployment", SpringCloudJavaDeploymentArgs.builder()
///             .name("deploy1")
///             .springCloudAppId(exampleSpringCloudApp.id())
///             .instanceCount(2)
///             .jvmOptions("-XX:+PrintGC")
///             .runtimeVersion("Java_11")
///             .quota(SpringCloudJavaDeploymentQuotaArgs.builder()
///                 .cpu("2")
///                 .memory("4Gi")
///                 .build())
///             .environmentVariables(Map.of("Env", "Staging"))
///             .build());
///
///         var exampleSpringCloudActiveDeployment = new SpringCloudActiveDeployment("exampleSpringCloudActiveDeployment", SpringCloudActiveDeploymentArgs.builder()
///             .springCloudAppId(exampleSpringCloudApp.id())
///             .deploymentName(exampleSpringCloudJavaDeployment.name())
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
///   exampleSpringCloudService:
///     type: azure:appplatform:SpringCloudService
///     name: example
///     properties:
///       name: example-springcloud
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleSpringCloudApp:
///     type: azure:appplatform:SpringCloudApp
///     name: example
///     properties:
///       name: example-springcloudapp
///       resourceGroupName: ${example.name}
///       serviceName: ${exampleSpringCloudService.name}
///       identity:
///         type: SystemAssigned
///   exampleSpringCloudJavaDeployment:
///     type: azure:appplatform:SpringCloudJavaDeployment
///     name: example
///     properties:
///       name: deploy1
///       springCloudAppId: ${exampleSpringCloudApp.id}
///       instanceCount: 2
///       jvmOptions: -XX:+PrintGC
///       runtimeVersion: Java_11
///       quota:
///         cpu: '2'
///         memory: 4Gi
///       environmentVariables:
///         Env: Staging
///   exampleSpringCloudActiveDeployment:
///     type: azure:appplatform:SpringCloudActiveDeployment
///     name: example
///     properties:
///       springCloudAppId: ${exampleSpringCloudApp.id}
///       deploymentName: ${exampleSpringCloudJavaDeployment.name}
/// ```
///
///
/// ## Import
///
/// Spring Cloud Active Deployment can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appplatform/springCloudActiveDeployment:SpringCloudActiveDeployment example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourcegroup1/providers/Microsoft.AppPlatform/spring/service1/apps/app1
/// ```
class SpringCloudActiveDeployment extends pulumi.CustomResource {
  /// Specifies the name of Spring Cloud Deployment which is going to be active.
  late final pulumi.Output<String> deploymentName;
  /// Specifies the id of the Spring Cloud Application. Changing this forces a new resource to be created.
  late final pulumi.Output<String> springCloudAppId;

  /// Creates a new [SpringCloudActiveDeployment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpringCloudActiveDeployment]. {@macro pulumi_appplatform_spring_cloud_active_deployment_spring_cloud_active_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpringCloudActiveDeployment(
    String name, {
    SpringCloudActiveDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudActiveDeployment:SpringCloudActiveDeployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deploymentName = registerOutput<String>('deploymentName');
    springCloudAppId = registerOutput<String>('springCloudAppId');
  }

  /// Gets an existing [SpringCloudActiveDeployment] resource's state with the given [name] and [id].
  static SpringCloudActiveDeployment get(
    String name,
    pulumi.Input<String> id, {
    SpringCloudActiveDeploymentState? state,
  }) {
    return SpringCloudActiveDeployment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SpringCloudActiveDeployment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudActiveDeployment:SpringCloudActiveDeployment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deploymentName = registerOutput<String>('deploymentName');
    springCloudAppId = registerOutput<String>('springCloudAppId');
  }
}
