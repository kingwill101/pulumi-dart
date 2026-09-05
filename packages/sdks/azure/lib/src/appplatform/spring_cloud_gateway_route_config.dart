import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_gateway_route_config_args.dart';
import 'spring_cloud_gateway_route_config_open_api.dart';
import 'spring_cloud_gateway_route_config_route.dart';
import 'spring_cloud_gateway_route_config_state.dart';

/// Manages a Spring Cloud Gateway Route Config.
///
/// &gt; **Note:** This resource is applicable only for Spring Cloud Service with enterprise tier.
///
/// &gt; **Note:** Azure Spring Apps is now deprecated and will be retired on 2028-05-31 - as such the `azure.appplatform.SpringCloudGatewayRouteConfig` resource is deprecated and will be removed in a future major version of the AzureRM Provider. See https://aka.ms/asaretirement for more information.
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
///     resourceGroupName: example.name,
///     serviceName: exampleSpringCloudService.name,
/// });
/// const exampleSpringCloudGateway = new azure.appplatform.SpringCloudGateway("example", {
///     name: "default",
///     springCloudServiceId: exampleSpringCloudService.id,
/// });
/// const exampleSpringCloudGatewayRouteConfig = new azure.appplatform.SpringCloudGatewayRouteConfig("example", {
///     name: "example",
///     springCloudGatewayId: exampleSpringCloudGateway.id,
///     springCloudAppId: exampleSpringCloudApp.id,
///     protocol: "HTTPS",
///     routes: [{
///         description: "example description",
///         filters: [
///             "StripPrefix=2",
///             "RateLimit=1,1s",
///         ],
///         order: 1,
///         predicates: ["Path=/api5/customer/**"],
///         ssoValidationEnabled: true,
///         title: "myApp route config",
///         tokenRelay: true,
///         uri: "https://www.example.com",
///         classificationTags: [
///             "tag1",
///             "tag2",
///         ],
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
/// example_spring_cloud_app = azure.appplatform.SpringCloudApp("example",
///     name="example",
///     resource_group_name=example.name,
///     service_name=example_spring_cloud_service.name)
/// example_spring_cloud_gateway = azure.appplatform.SpringCloudGateway("example",
///     name="default",
///     spring_cloud_service_id=example_spring_cloud_service.id)
/// example_spring_cloud_gateway_route_config = azure.appplatform.SpringCloudGatewayRouteConfig("example",
///     name="example",
///     spring_cloud_gateway_id=example_spring_cloud_gateway.id,
///     spring_cloud_app_id=example_spring_cloud_app.id,
///     protocol="HTTPS",
///     routes=[{
///         "description": "example description",
///         "filters": [
///             "StripPrefix=2",
///             "RateLimit=1,1s",
///         ],
///         "order": 1,
///         "predicates": ["Path=/api5/customer/**"],
///         "sso_validation_enabled": True,
///         "title": "myApp route config",
///         "token_relay": True,
///         "uri": "https://www.example.com",
///         "classification_tags": [
///             "tag1",
///             "tag2",
///         ],
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
///     var exampleSpringCloudApp = new Azure.AppPlatform.SpringCloudApp("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         ServiceName = exampleSpringCloudService.Name,
///     });
///
///     var exampleSpringCloudGateway = new Azure.AppPlatform.SpringCloudGateway("example", new()
///     {
///         Name = "default",
///         SpringCloudServiceId = exampleSpringCloudService.Id,
///     });
///
///     var exampleSpringCloudGatewayRouteConfig = new Azure.AppPlatform.SpringCloudGatewayRouteConfig("example", new()
///     {
///         Name = "example",
///         SpringCloudGatewayId = exampleSpringCloudGateway.Id,
///         SpringCloudAppId = exampleSpringCloudApp.Id,
///         Protocol = "HTTPS",
///         Routes = new[]
///         {
///             new Azure.AppPlatform.Inputs.SpringCloudGatewayRouteConfigRouteArgs
///             {
///                 Description = "example description",
///                 Filters = new[]
///                 {
///                     "StripPrefix=2",
///                     "RateLimit=1,1s",
///                 },
///                 Order = 1,
///                 Predicates = new[]
///                 {
///                     "Path=/api5/customer/**",
///                 },
///                 SsoValidationEnabled = true,
///                 Title = "myApp route config",
///                 TokenRelay = true,
///                 Uri = "https://www.example.com",
///                 ClassificationTags = new[]
///                 {
///                     "tag1",
///                     "tag2",
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
/// 			ResourceGroupName: example.Name,
/// 			ServiceName:       exampleSpringCloudService.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSpringCloudGateway, err := appplatform.NewSpringCloudGateway(ctx, "example", &appplatform.SpringCloudGatewayArgs{
/// 			Name:                 pulumi.String("default"),
/// 			SpringCloudServiceId: exampleSpringCloudService.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appplatform.NewSpringCloudGatewayRouteConfig(ctx, "example", &appplatform.SpringCloudGatewayRouteConfigArgs{
/// 			Name:                 pulumi.String("example"),
/// 			SpringCloudGatewayId: exampleSpringCloudGateway.ID().ToIDOutput().ToStringOutput(),
/// 			SpringCloudAppId:     exampleSpringCloudApp.ID().ToIDOutput().ToStringOutput(),
/// 			Protocol:             pulumi.String("HTTPS"),
/// 			Routes: appplatform.SpringCloudGatewayRouteConfigRouteArray{
/// 				&appplatform.SpringCloudGatewayRouteConfigRouteArgs{
/// 					Description: pulumi.String("example description"),
/// 					Filters: pulumi.StringArray{
/// 						pulumi.String("StripPrefix=2"),
/// 						pulumi.String("RateLimit=1,1s"),
/// 					},
/// 					Order: pulumi.Int(1),
/// 					Predicates: pulumi.StringArray{
/// 						pulumi.String("Path=/api5/customer/**"),
/// 					},
/// 					SsoValidationEnabled: pulumi.Bool(true),
/// 					Title:                pulumi.String("myApp route config"),
/// 					TokenRelay:           pulumi.Bool(true),
/// 					Uri:                  pulumi.String("https://www.example.com"),
/// 					ClassificationTags: pulumi.StringArray{
/// 						pulumi.String("tag1"),
/// 						pulumi.String("tag2"),
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
///   resource_group_name = azure_core_resourcegroup.example.name
///   service_name        = azure_appplatform_springcloudservice.example.name
/// }
/// resource "azure_appplatform_springcloudgateway" "example" {
///   name                    = "default"
///   spring_cloud_service_id = azure_appplatform_springcloudservice.example.id
/// }
/// resource "azure_appplatform_springcloudgatewayrouteconfig" "example" {
///   name                    = "example"
///   spring_cloud_gateway_id = azure_appplatform_springcloudgateway.example.id
///   spring_cloud_app_id     = azure_appplatform_springcloudapp.example.id
///   protocol                = "HTTPS"
///   routes {
///     description            = "example description"
///     filters                = ["StripPrefix=2", "RateLimit=1,1s"]
///     order                  = 1
///     predicates             = ["Path=/api5/customer/**"]
///     sso_validation_enabled = true
///     title                  = "myApp route config"
///     token_relay            = true
///     uri                    = "https://www.example.com"
///     classification_tags    = ["tag1", "tag2"]
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
/// import com.pulumi.azure.appplatform.SpringCloudGateway;
/// import com.pulumi.azure.appplatform.SpringCloudGatewayArgs;
/// import com.pulumi.azure.appplatform.SpringCloudGatewayRouteConfig;
/// import com.pulumi.azure.appplatform.SpringCloudGatewayRouteConfigArgs;
/// import com.pulumi.azure.appplatform.inputs.SpringCloudGatewayRouteConfigRouteArgs;
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
///             .resourceGroupName(example.name())
///             .serviceName(exampleSpringCloudService.name())
///             .build());
///
///         var exampleSpringCloudGateway = new SpringCloudGateway("exampleSpringCloudGateway", SpringCloudGatewayArgs.builder()
///             .name("default")
///             .springCloudServiceId(exampleSpringCloudService.id())
///             .build());
///
///         var exampleSpringCloudGatewayRouteConfig = new SpringCloudGatewayRouteConfig("exampleSpringCloudGatewayRouteConfig", SpringCloudGatewayRouteConfigArgs.builder()
///             .name("example")
///             .springCloudGatewayId(exampleSpringCloudGateway.id())
///             .springCloudAppId(exampleSpringCloudApp.id())
///             .protocol("HTTPS")
///             .routes(SpringCloudGatewayRouteConfigRouteArgs.builder()
///                 .description("example description")
///                 .filters(
///                     "StripPrefix=2",
///                     "RateLimit=1,1s")
///                 .order(1)
///                 .predicates("Path=/api5/customer/**")
///                 .ssoValidationEnabled(true)
///                 .title("myApp route config")
///                 .tokenRelay(true)
///                 .uri("https://www.example.com")
///                 .classificationTags(
///                     "tag1",
///                     "tag2")
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
///       resourceGroupName: ${example.name}
///       serviceName: ${exampleSpringCloudService.name}
///   exampleSpringCloudGateway:
///     type: azure:appplatform:SpringCloudGateway
///     name: example
///     properties:
///       name: default
///       springCloudServiceId: ${exampleSpringCloudService.id}
///   exampleSpringCloudGatewayRouteConfig:
///     type: azure:appplatform:SpringCloudGatewayRouteConfig
///     name: example
///     properties:
///       name: example
///       springCloudGatewayId: ${exampleSpringCloudGateway.id}
///       springCloudAppId: ${exampleSpringCloudApp.id}
///       protocol: HTTPS
///       routes:
///         - description: example description
///           filters:
///             - StripPrefix=2
///             - RateLimit=1,1s
///           order: 1
///           predicates:
///             - Path=/api5/customer/**
///           ssoValidationEnabled: true
///           title: myApp route config
///           tokenRelay: true
///           uri: https://www.example.com
///           classificationTags:
///             - tag1
///             - tag2
/// ```
///
///
/// ## Import
///
/// Spring Cloud Gateway Route Configs can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appplatform/springCloudGatewayRouteConfig:SpringCloudGatewayRouteConfig example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.AppPlatform/spring/service1/gateways/gateway1/routeConfigs/routeConfig1
/// ```
class SpringCloudGatewayRouteConfig extends pulumi.CustomResource {
  /// Specifies a list of filters which are used to modify the request before sending it to the target endpoint, or the received response in app level.
  late final pulumi.Output<List<String>?> filters;
  /// The name which should be used for this Spring Cloud Gateway Route Config. Changing this forces a new Spring Cloud Gateway Route Config to be created.
  late final pulumi.Output<String> name;
  /// One or more `openApi` blocks as defined below.
  late final pulumi.Output<SpringCloudGatewayRouteConfigOpenApi?> openApi;
  /// Specifies a list of conditions to evaluate a route for each request in app level. Each predicate may be evaluated against request headers and parameter values. All of the predicates associated with a route must evaluate to true for the route to be matched to the request.
  late final pulumi.Output<List<String>?> predicates;
  /// Specifies the protocol of routed Spring Cloud App. Allowed values are `HTTP` and `HTTPS`.
  ///
  /// &gt; **Note:** You likely want to use `HTTPS` in a production environment, since `HTTP` offers no encryption.
  late final pulumi.Output<String> protocol;
  /// One or more `route` blocks as defined below.
  late final pulumi.Output<List<SpringCloudGatewayRouteConfigRoute>?> routes;
  /// The ID of the Spring Cloud App.
  late final pulumi.Output<String?> springCloudAppId;
  /// The ID of the Spring Cloud Gateway. Changing this forces a new Spring Cloud Gateway Route Config to be created.
  late final pulumi.Output<String> springCloudGatewayId;
  /// Should the sso validation be enabled in app level?
  late final pulumi.Output<bool?> ssoValidationEnabled;

  /// Creates a new [SpringCloudGatewayRouteConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpringCloudGatewayRouteConfig]. {@macro pulumi_appplatform_spring_cloud_gateway_route_config_spring_cloud_gateway_route_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpringCloudGatewayRouteConfig(
    String name, {
    SpringCloudGatewayRouteConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudGatewayRouteConfig:SpringCloudGatewayRouteConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    filters = registerOutput<List<String>?>('filters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    openApi = registerOutput<SpringCloudGatewayRouteConfigOpenApi?>('openApi', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpringCloudGatewayRouteConfigOpenApi.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    predicates = registerOutput<List<String>?>('predicates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    protocol = registerOutput<String>('protocol');
    routes = registerOutput<List<SpringCloudGatewayRouteConfigRoute>?>('routes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SpringCloudGatewayRouteConfigRoute>(guardedValue, (value) => SpringCloudGatewayRouteConfigRoute.fromMap((value as Map).cast<String, dynamic>())); });
    springCloudAppId = registerOutput<String?>('springCloudAppId');
    springCloudGatewayId = registerOutput<String>('springCloudGatewayId');
    ssoValidationEnabled = registerOutput<bool?>('ssoValidationEnabled');
  }

  /// Gets an existing [SpringCloudGatewayRouteConfig] resource's state with the given [name] and [id].
  static SpringCloudGatewayRouteConfig get(
    String name,
    pulumi.Input<String> id, {
    SpringCloudGatewayRouteConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SpringCloudGatewayRouteConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SpringCloudGatewayRouteConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudGatewayRouteConfig:SpringCloudGatewayRouteConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    filters = registerOutput<List<String>?>('filters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    openApi = registerOutput<SpringCloudGatewayRouteConfigOpenApi?>('openApi', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpringCloudGatewayRouteConfigOpenApi.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    predicates = registerOutput<List<String>?>('predicates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    protocol = registerOutput<String>('protocol');
    routes = registerOutput<List<SpringCloudGatewayRouteConfigRoute>?>('routes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SpringCloudGatewayRouteConfigRoute>(guardedValue, (value) => SpringCloudGatewayRouteConfigRoute.fromMap((value as Map).cast<String, dynamic>())); });
    springCloudAppId = registerOutput<String?>('springCloudAppId');
    springCloudGatewayId = registerOutput<String>('springCloudGatewayId');
    ssoValidationEnabled = registerOutput<bool?>('ssoValidationEnabled');
  }

  /// Creates a typed reference to an existing [SpringCloudGatewayRouteConfig] resource.
  SpringCloudGatewayRouteConfig.reference(String urn)
    : super(
        'azure:appplatform/springCloudGatewayRouteConfig:SpringCloudGatewayRouteConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    filters = registerOutput<List<String>?>('filters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    openApi = registerOutput<SpringCloudGatewayRouteConfigOpenApi?>('openApi', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpringCloudGatewayRouteConfigOpenApi.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    predicates = registerOutput<List<String>?>('predicates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    protocol = registerOutput<String>('protocol');
    routes = registerOutput<List<SpringCloudGatewayRouteConfigRoute>?>('routes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SpringCloudGatewayRouteConfigRoute>(guardedValue, (value) => SpringCloudGatewayRouteConfigRoute.fromMap((value as Map).cast<String, dynamic>())); });
    springCloudAppId = registerOutput<String?>('springCloudAppId');
    springCloudGatewayId = registerOutput<String>('springCloudGatewayId');
    ssoValidationEnabled = registerOutput<bool?>('ssoValidationEnabled');
  }
}
