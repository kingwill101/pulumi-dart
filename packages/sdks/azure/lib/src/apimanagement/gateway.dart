import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_args.dart';
import 'gateway_location_data.dart';
import 'gateway_state.dart';

/// Manages an API Management Gateway.
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
/// const exampleService = new azure.apimanagement.Service("example", {
///     name: "example-apim",
///     location: example.location,
///     resourceGroupName: example.name,
///     publisherName: "pub1",
///     publisherEmail: "pub1@email.com",
///     skuName: "Consumption_0",
/// });
/// const exampleGateway = new azure.apimanagement.Gateway("example", {
///     name: "example-gateway",
///     apiManagementId: exampleService.id,
///     description: "Example API Management gateway",
///     locationData: {
///         name: "example name",
///         city: "example city",
///         district: "example district",
///         region: "example region",
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
/// example_service = azure.apimanagement.Service("example",
///     name="example-apim",
///     location=example.location,
///     resource_group_name=example.name,
///     publisher_name="pub1",
///     publisher_email="pub1@email.com",
///     sku_name="Consumption_0")
/// example_gateway = azure.apimanagement.Gateway("example",
///     name="example-gateway",
///     api_management_id=example_service.id,
///     description="Example API Management gateway",
///     location_data={
///         "name": "example name",
///         "city": "example city",
///         "district": "example district",
///         "region": "example region",
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
///     var exampleService = new Azure.ApiManagement.Service("example", new()
///     {
///         Name = "example-apim",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         PublisherName = "pub1",
///         PublisherEmail = "pub1@email.com",
///         SkuName = "Consumption_0",
///     });
///
///     var exampleGateway = new Azure.ApiManagement.Gateway("example", new()
///     {
///         Name = "example-gateway",
///         ApiManagementId = exampleService.Id,
///         Description = "Example API Management gateway",
///         LocationData = new Azure.ApiManagement.Inputs.GatewayLocationDataArgs
///         {
///             Name = "example name",
///             City = "example city",
///             District = "example district",
///             Region = "example region",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/apimanagement"
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
/// 		exampleService, err := apimanagement.NewService(ctx, "example", &apimanagement.ServiceArgs{
/// 			Name:              pulumi.String("example-apim"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			PublisherName:     pulumi.String("pub1"),
/// 			PublisherEmail:    pulumi.String("pub1@email.com"),
/// 			SkuName:           pulumi.String("Consumption_0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewGateway(ctx, "example", &apimanagement.GatewayArgs{
/// 			Name:            pulumi.String("example-gateway"),
/// 			ApiManagementId: exampleService.ID(),
/// 			Description:     pulumi.String("Example API Management gateway"),
/// 			LocationData: &apimanagement.GatewayLocationDataArgs{
/// 				Name:     pulumi.String("example name"),
/// 				City:     pulumi.String("example city"),
/// 				District: pulumi.String("example district"),
/// 				Region:   pulumi.String("example region"),
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
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_apimanagement_service" "example" {
///   name                = "example-apim"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   publisher_name      = "pub1"
///   publisher_email     = "pub1@email.com"
///   sku_name            = "Consumption_0"
/// }
/// resource "azure_apimanagement_gateway" "example" {
///   name              = "example-gateway"
///   api_management_id = azure_apimanagement_service.example.id
///   description       = "Example API Management gateway"
///   location_data = {
///     name     = "example name"
///     city     = "example city"
///     district = "example district"
///     region   = "example region"
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
/// import com.pulumi.azure.apimanagement.Service;
/// import com.pulumi.azure.apimanagement.ServiceArgs;
/// import com.pulumi.azure.apimanagement.Gateway;
/// import com.pulumi.azure.apimanagement.GatewayArgs;
/// import com.pulumi.azure.apimanagement.inputs.GatewayLocationDataArgs;
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
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("example-apim")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .publisherName("pub1")
///             .publisherEmail("pub1@email.com")
///             .skuName("Consumption_0")
///             .build());
///
///         var exampleGateway = new Gateway("exampleGateway", GatewayArgs.builder()
///             .name("example-gateway")
///             .apiManagementId(exampleService.id())
///             .description("Example API Management gateway")
///             .locationData(GatewayLocationDataArgs.builder()
///                 .name("example name")
///                 .city("example city")
///                 .district("example district")
///                 .region("example region")
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
///   exampleService:
///     type: azure:apimanagement:Service
///     name: example
///     properties:
///       name: example-apim
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       publisherName: pub1
///       publisherEmail: pub1@email.com
///       skuName: Consumption_0
///   exampleGateway:
///     type: azure:apimanagement:Gateway
///     name: example
///     properties:
///       name: example-gateway
///       apiManagementId: ${exampleService.id}
///       description: Example API Management gateway
///       locationData:
///         name: example name
///         city: example city
///         district: example district
///         region: example region
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2022-08-01
///
/// ## Import
///
/// API Management Gateways can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/gateway:Gateway example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ApiManagement/service/service1/gateways/gateway1
/// ```
class Gateway extends pulumi.CustomResource {
  /// The ID of the API Management Resource in which the gateway will be created. Changing this forces a new API Management Gateway resource to be created.
  late final pulumi.Output<String> apiManagementId;
  /// The description of the API Management Gateway.
  late final pulumi.Output<String?> description;
  /// A `locationData` block as documented below.
  late final pulumi.Output<GatewayLocationData> locationData;
  /// The name which should be used for the API Management Gateway. Changing this forces a new API Management Gateway to be created.
  late final pulumi.Output<String> name;

  /// Creates a new [Gateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Gateway]. {@macro pulumi_apimanagement_gateway_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Gateway(
    String name, {
    GatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/gateway:Gateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiManagementId = registerOutput<String>('apiManagementId');
    description = registerOutput<String?>('description');
    locationData = registerOutput<GatewayLocationData>('locationData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GatewayLocationData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [Gateway] resource's state with the given [name] and [id].
  static Gateway get(
    String name,
    pulumi.Input<String> id, {
    GatewayState? state,
  }) {
    return Gateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Gateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/gateway:Gateway',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiManagementId = registerOutput<String>('apiManagementId');
    description = registerOutput<String?>('description');
    locationData = registerOutput<GatewayLocationData>('locationData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GatewayLocationData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
  }
}
