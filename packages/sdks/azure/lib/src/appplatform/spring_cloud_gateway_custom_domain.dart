import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_gateway_custom_domain_args.dart';
import 'spring_cloud_gateway_custom_domain_state.dart';

/// Manages a Spring Cloud Gateway Custom Domain.
///
/// &gt; **Note:** This resource is applicable only for Spring Cloud Service with enterprise tier.
///
/// &gt; **Note:** Azure Spring Apps is now deprecated and will be retired on 2028-05-31 - as such the `azure.appplatform.SpringCloudGatewayCustomDomain` resource is deprecated and will be removed in a future major version of the AzureRM Provider. See https://aka.ms/asaretirement for more information.
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
/// const exampleSpringCloudGateway = new azure.appplatform.SpringCloudGateway("example", {
///     name: "default",
///     springCloudServiceId: exampleSpringCloudService.id,
/// });
/// const exampleSpringCloudGatewayCustomDomain = new azure.appplatform.SpringCloudGatewayCustomDomain("example", {
///     name: "example.com",
///     springCloudGatewayId: exampleSpringCloudGateway.id,
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
/// example_spring_cloud_gateway = azure.appplatform.SpringCloudGateway("example",
///     name="default",
///     spring_cloud_service_id=example_spring_cloud_service.id)
/// example_spring_cloud_gateway_custom_domain = azure.appplatform.SpringCloudGatewayCustomDomain("example",
///     name="example.com",
///     spring_cloud_gateway_id=example_spring_cloud_gateway.id)
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
///     var exampleSpringCloudGateway = new Azure.AppPlatform.SpringCloudGateway("example", new()
///     {
///         Name = "default",
///         SpringCloudServiceId = exampleSpringCloudService.Id,
///     });
///
///     var exampleSpringCloudGatewayCustomDomain = new Azure.AppPlatform.SpringCloudGatewayCustomDomain("example", new()
///     {
///         Name = "example.com",
///         SpringCloudGatewayId = exampleSpringCloudGateway.Id,
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
/// 		exampleSpringCloudGateway, err := appplatform.NewSpringCloudGateway(ctx, "example", &appplatform.SpringCloudGatewayArgs{
/// 			Name:                 pulumi.String("default"),
/// 			SpringCloudServiceId: exampleSpringCloudService.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appplatform.NewSpringCloudGatewayCustomDomain(ctx, "example", &appplatform.SpringCloudGatewayCustomDomainArgs{
/// 			Name:                 pulumi.String("example.com"),
/// 			SpringCloudGatewayId: exampleSpringCloudGateway.ID(),
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
/// resource "azure_appplatform_springcloudgateway" "example" {
///   name                    = "default"
///   spring_cloud_service_id = azure_appplatform_springcloudservice.example.id
/// }
/// resource "azure_appplatform_springcloudgatewaycustomdomain" "example" {
///   name                    = "example.com"
///   spring_cloud_gateway_id = azure_appplatform_springcloudgateway.example.id
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
/// import com.pulumi.azure.appplatform.SpringCloudGateway;
/// import com.pulumi.azure.appplatform.SpringCloudGatewayArgs;
/// import com.pulumi.azure.appplatform.SpringCloudGatewayCustomDomain;
/// import com.pulumi.azure.appplatform.SpringCloudGatewayCustomDomainArgs;
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
///         var exampleSpringCloudGateway = new SpringCloudGateway("exampleSpringCloudGateway", SpringCloudGatewayArgs.builder()
///             .name("default")
///             .springCloudServiceId(exampleSpringCloudService.id())
///             .build());
///
///         var exampleSpringCloudGatewayCustomDomain = new SpringCloudGatewayCustomDomain("exampleSpringCloudGatewayCustomDomain", SpringCloudGatewayCustomDomainArgs.builder()
///             .name("example.com")
///             .springCloudGatewayId(exampleSpringCloudGateway.id())
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
///   exampleSpringCloudGateway:
///     type: azure:appplatform:SpringCloudGateway
///     name: example
///     properties:
///       name: default
///       springCloudServiceId: ${exampleSpringCloudService.id}
///   exampleSpringCloudGatewayCustomDomain:
///     type: azure:appplatform:SpringCloudGatewayCustomDomain
///     name: example
///     properties:
///       name: example.com
///       springCloudGatewayId: ${exampleSpringCloudGateway.id}
/// ```
///
///
/// ## Import
///
/// Spring Cloud Gateway Custom Domains can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appplatform/springCloudGatewayCustomDomain:SpringCloudGatewayCustomDomain example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.AppPlatform/spring/service1/gateways/gateway1/domains/domain1
/// ```
class SpringCloudGatewayCustomDomain extends pulumi.CustomResource {
  /// The name which should be used for this Spring Cloud Gateway Custom Domain. Changing this forces a new Spring Cloud Gateway Custom Domain to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Spring Cloud Gateway. Changing this forces a new Spring Cloud Gateway Custom Domain to be created.
  late final pulumi.Output<String> springCloudGatewayId;
  /// Specifies the thumbprint of the Spring Cloud Certificate that binds to the Spring Cloud Gateway Custom Domain.
  late final pulumi.Output<String?> thumbprint;

  /// Creates a new [SpringCloudGatewayCustomDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpringCloudGatewayCustomDomain]. {@macro pulumi_appplatform_spring_cloud_gateway_custom_domain_spring_cloud_gateway_custom_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpringCloudGatewayCustomDomain(
    String name, {
    SpringCloudGatewayCustomDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudGatewayCustomDomain:SpringCloudGatewayCustomDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    springCloudGatewayId = registerOutput<String>('springCloudGatewayId');
    thumbprint = registerOutput<String?>('thumbprint');
  }

  /// Gets an existing [SpringCloudGatewayCustomDomain] resource's state with the given [name] and [id].
  static SpringCloudGatewayCustomDomain get(
    String name,
    pulumi.Input<String> id, {
    SpringCloudGatewayCustomDomainState? state,
  }) {
    return SpringCloudGatewayCustomDomain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SpringCloudGatewayCustomDomain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudGatewayCustomDomain:SpringCloudGatewayCustomDomain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    springCloudGatewayId = registerOutput<String>('springCloudGatewayId');
    thumbprint = registerOutput<String?>('thumbprint');
  }
}
