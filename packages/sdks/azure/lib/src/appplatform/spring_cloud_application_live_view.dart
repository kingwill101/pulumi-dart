import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_application_live_view_args.dart';
import 'spring_cloud_application_live_view_state.dart';

/// &gt; **Note:** This resource is applicable only for Spring Cloud Service with enterprise tier.
///
/// Manages a Spring Cloud Application Live View.
///
/// &gt; **Note:** Azure Spring Apps is now deprecated and will be retired on 2028-05-31 - as such the `azure.appplatform.SpringCloudApplicationLiveView` resource is deprecated and will be removed in a future major version of the AzureRM Provider. See https://aka.ms/asaretirement for more information.
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
/// const exampleSpringCloudApplicationLiveView = new azure.appplatform.SpringCloudApplicationLiveView("example", {
///     name: "default",
///     springCloudServiceId: exampleSpringCloudService.id,
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
/// example_spring_cloud_application_live_view = azure.appplatform.SpringCloudApplicationLiveView("example",
///     name="default",
///     spring_cloud_service_id=example_spring_cloud_service.id)
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
///     var exampleSpringCloudApplicationLiveView = new Azure.AppPlatform.SpringCloudApplicationLiveView("example", new()
///     {
///         Name = "default",
///         SpringCloudServiceId = exampleSpringCloudService.Id,
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
/// 		_, err = appplatform.NewSpringCloudApplicationLiveView(ctx, "example", &appplatform.SpringCloudApplicationLiveViewArgs{
/// 			Name:                 pulumi.String("default"),
/// 			SpringCloudServiceId: exampleSpringCloudService.ID().ToIDOutput().ToStringOutput(),
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
/// resource "azure_appplatform_springcloudapplicationliveview" "example" {
///   name                    = "default"
///   spring_cloud_service_id = azure_appplatform_springcloudservice.example.id
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
/// import com.pulumi.azure.appplatform.SpringCloudApplicationLiveView;
/// import com.pulumi.azure.appplatform.SpringCloudApplicationLiveViewArgs;
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
///         var exampleSpringCloudApplicationLiveView = new SpringCloudApplicationLiveView("exampleSpringCloudApplicationLiveView", SpringCloudApplicationLiveViewArgs.builder()
///             .name("default")
///             .springCloudServiceId(exampleSpringCloudService.id())
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
///   exampleSpringCloudApplicationLiveView:
///     type: azure:appplatform:SpringCloudApplicationLiveView
///     name: example
///     properties:
///       name: default
///       springCloudServiceId: ${exampleSpringCloudService.id}
/// ```
///
///
/// ## Import
///
/// Spring Cloud Application Live Views can be imported using the `resource id`, e.g.
///
/// ```shellg
/// terraform import azurerm_spring_cloud_application_live_view.example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resourceGroup1/providers/Microsoft.AppPlatform/spring/service1/applicationLiveViews/default
/// ```
class SpringCloudApplicationLiveView extends pulumi.CustomResource {
  /// The name which should be used for this Spring Cloud Application Live View. Changing this forces a new Spring Cloud Application Live View to be created. The only possible value is `default`.
  late final pulumi.Output<String> name;
  /// The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Application Live View to be created.
  late final pulumi.Output<String> springCloudServiceId;

  /// Creates a new [SpringCloudApplicationLiveView].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpringCloudApplicationLiveView]. {@macro pulumi_appplatform_spring_cloud_application_live_view_spring_cloud_application_live_view_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpringCloudApplicationLiveView(
    String name, {
    SpringCloudApplicationLiveViewArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudApplicationLiveView:SpringCloudApplicationLiveView',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    this.name = registerOutput<String>('name');
    springCloudServiceId = registerOutput<String>('springCloudServiceId');
  }

  /// Gets an existing [SpringCloudApplicationLiveView] resource's state with the given [name] and [id].
  static SpringCloudApplicationLiveView get(
    String name,
    pulumi.Input<String> id, {
    SpringCloudApplicationLiveViewState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SpringCloudApplicationLiveView._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SpringCloudApplicationLiveView._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudApplicationLiveView:SpringCloudApplicationLiveView',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    springCloudServiceId = registerOutput<String>('springCloudServiceId');
  }

  /// Creates a typed reference to an existing [SpringCloudApplicationLiveView] resource.
  SpringCloudApplicationLiveView.reference(String urn)
    : super(
        'azure:appplatform/springCloudApplicationLiveView:SpringCloudApplicationLiveView',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    this.name = registerOutput<String>('name');
    springCloudServiceId = registerOutput<String>('springCloudServiceId');
  }
}
