import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_api_portal_custom_domain_args.dart';
import 'spring_cloud_api_portal_custom_domain_state.dart';

/// Manages a Spring Cloud API Portal Domain.
///
/// &gt; **Note:** This resource is applicable only for Spring Cloud Service with enterprise tier.
///
/// &gt; **Note:** Azure Spring Apps is now deprecated and will be retired on 2028-05-31 - as such the `azure.appplatform.SpringCloudApiPortalCustomDomain` resource is deprecated and will be removed in a future major version of the AzureRM Provider. See https://aka.ms/asaretirement for more information.
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
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "E0",
/// });
/// const exampleSpringCloudGateway = new azure.appplatform.SpringCloudGateway("example", {
///     name: "default",
///     springCloudServiceId: exampleSpringCloudService.id,
/// });
/// const exampleSpringCloudApiPortal = new azure.appplatform.SpringCloudApiPortal("example", {
///     name: "default",
///     springCloudServiceId: exampleSpringCloudService.id,
///     gatewayIds: [exampleSpringCloudGateway.id],
/// });
/// const exampleSpringCloudApiPortalCustomDomain = new azure.appplatform.SpringCloudApiPortalCustomDomain("example", {
///     name: "example.com",
///     springCloudApiPortalId: exampleSpringCloudApiPortal.id,
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
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="E0")
/// example_spring_cloud_gateway = azure.appplatform.SpringCloudGateway("example",
///     name="default",
///     spring_cloud_service_id=example_spring_cloud_service.id)
/// example_spring_cloud_api_portal = azure.appplatform.SpringCloudApiPortal("example",
///     name="default",
///     spring_cloud_service_id=example_spring_cloud_service.id,
///     gateway_ids=[example_spring_cloud_gateway.id])
/// example_spring_cloud_api_portal_custom_domain = azure.appplatform.SpringCloudApiPortalCustomDomain("example",
///     name="example.com",
///     spring_cloud_api_portal_id=example_spring_cloud_api_portal.id)
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
///     var exampleSpringCloudApiPortal = new Azure.AppPlatform.SpringCloudApiPortal("example", new()
///     {
///         Name = "default",
///         SpringCloudServiceId = exampleSpringCloudService.Id,
///         GatewayIds = new[]
///         {
///             exampleSpringCloudGateway.Id,
///         },
///     });
///
///     var exampleSpringCloudApiPortalCustomDomain = new Azure.AppPlatform.SpringCloudApiPortalCustomDomain("example", new()
///     {
///         Name = "example.com",
///         SpringCloudApiPortalId = exampleSpringCloudApiPortal.Id,
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
/// 		exampleSpringCloudApiPortal, err := appplatform.NewSpringCloudApiPortal(ctx, "example", &appplatform.SpringCloudApiPortalArgs{
/// 			Name:                 pulumi.String("default"),
/// 			SpringCloudServiceId: exampleSpringCloudService.ID(),
/// 			GatewayIds: pulumi.StringArray{
/// 				exampleSpringCloudGateway.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appplatform.NewSpringCloudApiPortalCustomDomain(ctx, "example", &appplatform.SpringCloudApiPortalCustomDomainArgs{
/// 			Name:                   pulumi.String("example.com"),
/// 			SpringCloudApiPortalId: exampleSpringCloudApiPortal.ID(),
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
/// resource "azure_appplatform_springcloudapiportal" "example" {
///   name                    = "default"
///   spring_cloud_service_id = azure_appplatform_springcloudservice.example.id
///   gateway_ids             = [azure_appplatform_springcloudgateway.example.id]
/// }
/// resource "azure_appplatform_springcloudapiportalcustomdomain" "example" {
///   name                       = "example.com"
///   spring_cloud_api_portal_id = azure_appplatform_springcloudapiportal.example.id
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
/// import com.pulumi.azure.appplatform.SpringCloudApiPortal;
/// import com.pulumi.azure.appplatform.SpringCloudApiPortalArgs;
/// import com.pulumi.azure.appplatform.SpringCloudApiPortalCustomDomain;
/// import com.pulumi.azure.appplatform.SpringCloudApiPortalCustomDomainArgs;
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
///         var exampleSpringCloudApiPortal = new SpringCloudApiPortal("exampleSpringCloudApiPortal", SpringCloudApiPortalArgs.builder()
///             .name("default")
///             .springCloudServiceId(exampleSpringCloudService.id())
///             .gatewayIds(exampleSpringCloudGateway.id())
///             .build());
///
///         var exampleSpringCloudApiPortalCustomDomain = new SpringCloudApiPortalCustomDomain("exampleSpringCloudApiPortalCustomDomain", SpringCloudApiPortalCustomDomainArgs.builder()
///             .name("example.com")
///             .springCloudApiPortalId(exampleSpringCloudApiPortal.id())
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
///   exampleSpringCloudApiPortal:
///     type: azure:appplatform:SpringCloudApiPortal
///     name: example
///     properties:
///       name: default
///       springCloudServiceId: ${exampleSpringCloudService.id}
///       gatewayIds:
///         - ${exampleSpringCloudGateway.id}
///   exampleSpringCloudApiPortalCustomDomain:
///     type: azure:appplatform:SpringCloudApiPortalCustomDomain
///     name: example
///     properties:
///       name: example.com
///       springCloudApiPortalId: ${exampleSpringCloudApiPortal.id}
/// ```
///
///
/// ## Import
///
/// Spring Cloud API Portal Domains can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appplatform/springCloudApiPortalCustomDomain:SpringCloudApiPortalCustomDomain example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.AppPlatform/spring/service1/apiPortals/apiPortal1/domains/domain1
/// ```
class SpringCloudApiPortalCustomDomain extends pulumi.CustomResource {
  /// The name which should be used for this Spring Cloud API Portal Domain. Changing this forces a new Spring Cloud API Portal Domain to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Spring Cloud API Portal. Changing this forces a new Spring Cloud API Portal Domain to be created.
  late final pulumi.Output<String> springCloudApiPortalId;
  /// Specifies the thumbprint of the Spring Cloud Certificate that binds to the Spring Cloud API Portal Domain.
  late final pulumi.Output<String?> thumbprint;

  /// Creates a new [SpringCloudApiPortalCustomDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpringCloudApiPortalCustomDomain]. {@macro pulumi_appplatform_spring_cloud_api_portal_custom_domain_spring_cloud_api_portal_custom_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpringCloudApiPortalCustomDomain(
    String name, {
    SpringCloudApiPortalCustomDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudApiPortalCustomDomain:SpringCloudApiPortalCustomDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    springCloudApiPortalId = registerOutput<String>('springCloudApiPortalId');
    thumbprint = registerOutput<String?>('thumbprint');
  }

  /// Gets an existing [SpringCloudApiPortalCustomDomain] resource's state with the given [name] and [id].
  static SpringCloudApiPortalCustomDomain get(
    String name,
    pulumi.Input<String> id, {
    SpringCloudApiPortalCustomDomainState? state,
  }) {
    return SpringCloudApiPortalCustomDomain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SpringCloudApiPortalCustomDomain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudApiPortalCustomDomain:SpringCloudApiPortalCustomDomain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    springCloudApiPortalId = registerOutput<String>('springCloudApiPortalId');
    thumbprint = registerOutput<String?>('thumbprint');
  }
}
