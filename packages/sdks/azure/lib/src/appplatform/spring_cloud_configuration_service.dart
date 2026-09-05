import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_configuration_service_args.dart';
import 'spring_cloud_configuration_service_repository.dart';
import 'spring_cloud_configuration_service_state.dart';

/// Manages a Spring Cloud Configuration Service.
///
/// &gt; **Note:** This resource is applicable only for Spring Cloud Service with enterprise tier.
///
/// &gt; **Note:** Azure Spring Apps is now deprecated and will be retired on 2028-05-31 - as such the `azure.appplatform.SpringCloudConfigurationService` resource is deprecated and will be removed in a future major version of the AzureRM Provider. See https://aka.ms/asaretirement for more information.
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
/// const exampleSpringCloudConfigurationService = new azure.appplatform.SpringCloudConfigurationService("example", {
///     name: "default",
///     springCloudServiceId: exampleSpringCloudService.id,
///     repositories: [{
///         name: "fake",
///         label: "master",
///         patterns: ["app/dev"],
///         uri: "https://github.com/Azure-Samples/piggymetrics",
///         searchPaths: [
///             "dir1",
///             "dir2",
///         ],
///         strictHostKeyChecking: false,
///         username: "adminuser",
///         password: "H@Sh1CoR3!",
///     }],
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
/// example_spring_cloud_configuration_service = azure.appplatform.SpringCloudConfigurationService("example",
///     name="default",
///     spring_cloud_service_id=example_spring_cloud_service.id,
///     repositories=[{
///         "name": "fake",
///         "label": "master",
///         "patterns": ["app/dev"],
///         "uri": "https://github.com/Azure-Samples/piggymetrics",
///         "search_paths": [
///             "dir1",
///             "dir2",
///         ],
///         "strict_host_key_checking": False,
///         "username": "adminuser",
///         "password": "H@Sh1CoR3!",
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
///     var exampleSpringCloudConfigurationService = new Azure.AppPlatform.SpringCloudConfigurationService("example", new()
///     {
///         Name = "default",
///         SpringCloudServiceId = exampleSpringCloudService.Id,
///         Repositories = new[]
///         {
///             new Azure.AppPlatform.Inputs.SpringCloudConfigurationServiceRepositoryArgs
///             {
///                 Name = "fake",
///                 Label = "master",
///                 Patterns = new[]
///                 {
///                     "app/dev",
///                 },
///                 Uri = "https://github.com/Azure-Samples/piggymetrics",
///                 SearchPaths = new[]
///                 {
///                     "dir1",
///                     "dir2",
///                 },
///                 StrictHostKeyChecking = false,
///                 Username = "adminuser",
///                 Password = "H@Sh1CoR3!",
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
/// 		_, err = appplatform.NewSpringCloudConfigurationService(ctx, "example", &appplatform.SpringCloudConfigurationServiceArgs{
/// 			Name:                 pulumi.String("default"),
/// 			SpringCloudServiceId: exampleSpringCloudService.ID().ToIDOutput().ToStringOutput(),
/// 			Repositories: appplatform.SpringCloudConfigurationServiceRepositoryArray{
/// 				&appplatform.SpringCloudConfigurationServiceRepositoryArgs{
/// 					Name:  pulumi.String("fake"),
/// 					Label: pulumi.String("master"),
/// 					Patterns: pulumi.StringArray{
/// 						pulumi.String("app/dev"),
/// 					},
/// 					Uri: pulumi.String("https://github.com/Azure-Samples/piggymetrics"),
/// 					SearchPaths: pulumi.StringArray{
/// 						pulumi.String("dir1"),
/// 						pulumi.String("dir2"),
/// 					},
/// 					StrictHostKeyChecking: pulumi.Bool(false),
/// 					Username:              pulumi.String("adminuser"),
/// 					Password:              pulumi.String("H@Sh1CoR3!"),
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
/// resource "azure_appplatform_springcloudconfigurationservice" "example" {
///   name                    = "default"
///   spring_cloud_service_id = azure_appplatform_springcloudservice.example.id
///   repositories {
///     name                     = "fake"
///     label                    = "master"
///     patterns                 = ["app/dev"]
///     uri                      = "https://github.com/Azure-Samples/piggymetrics"
///     search_paths             = ["dir1", "dir2"]
///     strict_host_key_checking = false
///     username                 = "adminuser"
///     password                 = "H@Sh1CoR3!"
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
/// import com.pulumi.azure.appplatform.SpringCloudConfigurationService;
/// import com.pulumi.azure.appplatform.SpringCloudConfigurationServiceArgs;
/// import com.pulumi.azure.appplatform.inputs.SpringCloudConfigurationServiceRepositoryArgs;
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
///         var exampleSpringCloudConfigurationService = new SpringCloudConfigurationService("exampleSpringCloudConfigurationService", SpringCloudConfigurationServiceArgs.builder()
///             .name("default")
///             .springCloudServiceId(exampleSpringCloudService.id())
///             .repositories(SpringCloudConfigurationServiceRepositoryArgs.builder()
///                 .name("fake")
///                 .label("master")
///                 .patterns("app/dev")
///                 .uri("https://github.com/Azure-Samples/piggymetrics")
///                 .searchPaths(
///                     "dir1",
///                     "dir2")
///                 .strictHostKeyChecking(false)
///                 .username("adminuser")
///                 .password("H@Sh1CoR3!")
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
///   exampleSpringCloudConfigurationService:
///     type: azure:appplatform:SpringCloudConfigurationService
///     name: example
///     properties:
///       name: default
///       springCloudServiceId: ${exampleSpringCloudService.id}
///       repositories:
///         - name: fake
///           label: master
///           patterns:
///             - app/dev
///           uri: https://github.com/Azure-Samples/piggymetrics
///           searchPaths:
///             - dir1
///             - dir2
///           strictHostKeyChecking: false
///           username: adminuser
///           password: H@Sh1CoR3!
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.AppPlatform` - 2024-01-01-preview
///
/// ## Import
///
/// Spring Cloud Configuration Services can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appplatform/springCloudConfigurationService:SpringCloudConfigurationService example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resourceGroup1/providers/Microsoft.AppPlatform/spring/service1/configurationServices/configurationService1
/// ```
class SpringCloudConfigurationService extends pulumi.CustomResource {
  /// The generation of the Spring Cloud Configuration Service. Possible values are `Gen1` and `Gen2`.
  late final pulumi.Output<String?> generation;
  /// The name which should be used for this Spring Cloud Configuration Service. The only possible value is `default`. Changing this forces a new Spring Cloud Configuration Service to be created.
  late final pulumi.Output<String> name;
  /// Specifies how often to check repository updates. Minimum value is 0.
  late final pulumi.Output<int?> refreshIntervalInSeconds;
  /// One or more `repository` blocks as defined below.
  late final pulumi.Output<List<SpringCloudConfigurationServiceRepository>?> repositories;
  /// The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Configuration Service to be created.
  late final pulumi.Output<String> springCloudServiceId;

  /// Creates a new [SpringCloudConfigurationService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpringCloudConfigurationService]. {@macro pulumi_appplatform_spring_cloud_configuration_service_spring_cloud_configuration_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpringCloudConfigurationService(
    String name, {
    SpringCloudConfigurationServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudConfigurationService:SpringCloudConfigurationService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    generation = registerOutput<String?>('generation');
    this.name = registerOutput<String>('name');
    refreshIntervalInSeconds = registerOutput<int?>('refreshIntervalInSeconds');
    repositories = registerOutput<List<SpringCloudConfigurationServiceRepository>?>('repositories', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SpringCloudConfigurationServiceRepository>(guardedValue, (value) => SpringCloudConfigurationServiceRepository.fromMap((value as Map).cast<String, dynamic>())); });
    springCloudServiceId = registerOutput<String>('springCloudServiceId');
  }

  /// Gets an existing [SpringCloudConfigurationService] resource's state with the given [name] and [id].
  static SpringCloudConfigurationService get(
    String name,
    pulumi.Input<String> id, {
    SpringCloudConfigurationServiceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SpringCloudConfigurationService._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SpringCloudConfigurationService._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudConfigurationService:SpringCloudConfigurationService',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    generation = registerOutput<String?>('generation');
    this.name = registerOutput<String>('name');
    refreshIntervalInSeconds = registerOutput<int?>('refreshIntervalInSeconds');
    repositories = registerOutput<List<SpringCloudConfigurationServiceRepository>?>('repositories', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SpringCloudConfigurationServiceRepository>(guardedValue, (value) => SpringCloudConfigurationServiceRepository.fromMap((value as Map).cast<String, dynamic>())); });
    springCloudServiceId = registerOutput<String>('springCloudServiceId');
  }

  /// Creates a typed reference to an existing [SpringCloudConfigurationService] resource.
  SpringCloudConfigurationService.reference(String urn)
    : super(
        'azure:appplatform/springCloudConfigurationService:SpringCloudConfigurationService',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    generation = registerOutput<String?>('generation');
    this.name = registerOutput<String>('name');
    refreshIntervalInSeconds = registerOutput<int?>('refreshIntervalInSeconds');
    repositories = registerOutput<List<SpringCloudConfigurationServiceRepository>?>('repositories', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SpringCloudConfigurationServiceRepository>(guardedValue, (value) => SpringCloudConfigurationServiceRepository.fromMap((value as Map).cast<String, dynamic>())); });
    springCloudServiceId = registerOutput<String>('springCloudServiceId');
  }
}
