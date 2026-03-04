import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_builder_args.dart';
import 'spring_cloud_builder_stack.dart';
import 'spring_cloud_builder_state.dart';

/// Manages a Spring Cloud Builder.
///
/// &gt; **Note:** This resource is applicable only for Spring Cloud Service with enterprise tier.
///
/// !&gt; **Note:** Azure Spring Apps is now deprecated and will be retired on 2028-05-31 - as such the `azure.appplatform.SpringCloudBuilder` resource is deprecated and will be removed in a future major version of the AzureRM Provider. See https://aka.ms/asaretirement for more information.
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
///     skuName: "E0",
/// });
/// const exampleSpringCloudBuilder = new azure.appplatform.SpringCloudBuilder("example", {
///     name: "example",
///     springCloudServiceId: exampleSpringCloudService.id,
///     buildPackGroups: [{
///         name: "mix",
///         buildPackIds: ["tanzu-buildpacks/java-azure"],
///     }],
///     stack: {
///         id: "io.buildpacks.stacks.bionic",
///         version: "base",
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
/// example_spring_cloud_service = azure.appplatform.SpringCloudService("example",
///     name="example-springcloud",
///     resource_group_name=example.name,
///     location=example.location,
///     sku_name="E0")
/// example_spring_cloud_builder = azure.appplatform.SpringCloudBuilder("example",
///     name="example",
///     spring_cloud_service_id=example_spring_cloud_service.id,
///     build_pack_groups=[{
///         "name": "mix",
///         "build_pack_ids": ["tanzu-buildpacks/java-azure"],
///     }],
///     stack={
///         "id": "io.buildpacks.stacks.bionic",
///         "version": "base",
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
///     var exampleSpringCloudService = new Azure.AppPlatform.SpringCloudService("example", new()
///     {
///         Name = "example-springcloud",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         SkuName = "E0",
///     });
///
///     var exampleSpringCloudBuilder = new Azure.AppPlatform.SpringCloudBuilder("example", new()
///     {
///         Name = "example",
///         SpringCloudServiceId = exampleSpringCloudService.Id,
///         BuildPackGroups = new[]
///         {
///             new Azure.AppPlatform.Inputs.SpringCloudBuilderBuildPackGroupArgs
///             {
///                 Name = "mix",
///                 BuildPackIds = new[]
///                 {
///                     "tanzu-buildpacks/java-azure",
///                 },
///             },
///         },
///         Stack = new Azure.AppPlatform.Inputs.SpringCloudBuilderStackArgs
///         {
///             Id = "io.buildpacks.stacks.bionic",
///             Version = "base",
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
/// 			SkuName:           pulumi.String("E0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appplatform.NewSpringCloudBuilder(ctx, "example", &appplatform.SpringCloudBuilderArgs{
/// 			Name:                 pulumi.String("example"),
/// 			SpringCloudServiceId: exampleSpringCloudService.ID(),
/// 			BuildPackGroups: appplatform.SpringCloudBuilderBuildPackGroupArray{
/// 				&appplatform.SpringCloudBuilderBuildPackGroupArgs{
/// 					Name: pulumi.String("mix"),
/// 					BuildPackIds: pulumi.StringArray{
/// 						pulumi.String("tanzu-buildpacks/java-azure"),
/// 					},
/// 				},
/// 			},
/// 			Stack: &appplatform.SpringCloudBuilderStackArgs{
/// 				Id:      pulumi.String("io.buildpacks.stacks.bionic"),
/// 				Version: pulumi.String("base"),
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
/// import com.pulumi.azure.appplatform.SpringCloudService;
/// import com.pulumi.azure.appplatform.SpringCloudServiceArgs;
/// import com.pulumi.azure.appplatform.SpringCloudBuilder;
/// import com.pulumi.azure.appplatform.SpringCloudBuilderArgs;
/// import com.pulumi.azure.appplatform.inputs.SpringCloudBuilderBuildPackGroupArgs;
/// import com.pulumi.azure.appplatform.inputs.SpringCloudBuilderStackArgs;
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
///             .skuName("E0")
///             .build());
///
///         var exampleSpringCloudBuilder = new SpringCloudBuilder("exampleSpringCloudBuilder", SpringCloudBuilderArgs.builder()
///             .name("example")
///             .springCloudServiceId(exampleSpringCloudService.id())
///             .buildPackGroups(SpringCloudBuilderBuildPackGroupArgs.builder()
///                 .name("mix")
///                 .buildPackIds("tanzu-buildpacks/java-azure")
///                 .build())
///             .stack(SpringCloudBuilderStackArgs.builder()
///                 .id("io.buildpacks.stacks.bionic")
///                 .version("base")
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
///   exampleSpringCloudService:
///     type: azure:appplatform:SpringCloudService
///     name: example
///     properties:
///       name: example-springcloud
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       skuName: E0
///   exampleSpringCloudBuilder:
///     type: azure:appplatform:SpringCloudBuilder
///     name: example
///     properties:
///       name: example
///       springCloudServiceId: ${exampleSpringCloudService.id}
///       buildPackGroups:
///         - name: mix
///           buildPackIds:
///             - tanzu-buildpacks/java-azure
///       stack:
///         id: io.buildpacks.stacks.bionic
///         version: base
/// ```
///
///
/// ## Import
///
/// Spring Cloud Builders can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appplatform/springCloudBuilder:SpringCloudBuilder example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resourceGroup1/providers/Microsoft.AppPlatform/spring/service1/buildServices/buildService1/builders/builder1
/// ```
class SpringCloudBuilder extends pulumi.CustomResource {
  /// One or more `build_pack_group` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> buildPackGroups;

  /// The name which should be used for this Spring Cloud Builder. Changing this forces a new Spring Cloud Builder to be created.
  late final pulumi.Output<String> name;

  /// The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Builder to be created.
  late final pulumi.Output<String> springCloudServiceId;

  /// A `stack` block as defined below.
  late final pulumi.Output<SpringCloudBuilderStack> stack;

  /// Creates a new [SpringCloudBuilder].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpringCloudBuilder]. {@macro pulumi_appplatform_spring_cloud_builder_spring_cloud_builder_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpringCloudBuilder(
    String name, {
    SpringCloudBuilderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:appplatform/springCloudBuilder:SpringCloudBuilder',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    buildPackGroups = registerOutput<List<Map<String, dynamic>>>(
      'buildPackGroups',
    );
    this.name = registerOutput<String>('name');
    springCloudServiceId = registerOutput<String>('springCloudServiceId');
    stack = registerOutput<SpringCloudBuilderStack>('stack');
  }

  /// Gets an existing [SpringCloudBuilder] resource's state with the given [name] and [id].
  static SpringCloudBuilder get(
    String name,
    pulumi.Input<String> id, {
    SpringCloudBuilderState? state,
  }) {
    return SpringCloudBuilder._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SpringCloudBuilder._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:appplatform/springCloudBuilder:SpringCloudBuilder',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    buildPackGroups = registerOutput<List<Map<String, dynamic>>>(
      'buildPackGroups',
    );
    this.name = registerOutput<String>('name');
    springCloudServiceId = registerOutput<String>('springCloudServiceId');
    stack = registerOutput<SpringCloudBuilderStack>('stack');
  }
}
