import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_endpoint_args.dart';
import 'service_endpoint_resource_response_properties.dart';
import 'system_data_response.dart';

/// ServiceEndpoint resource details.
///
/// Uses Azure REST API version 2022-03-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-02-01.
///
/// Other available API versions: 2022-02-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recommendationsservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update ServiceEndpoint resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceEndpoint = new AzureNative.RecommendationsService.ServiceEndpoint("serviceEndpoint", new()
///     {
///         AccountName = "sampleAccount",
///         Location = "West US",
///         Properties = new AzureNative.RecommendationsService.Inputs.ServiceEndpointResourcePropertiesArgs
///         {
///             PreAllocatedCapacity = 100,
///         },
///         ResourceGroupName = "rg",
///         ServiceEndpointName = "s1",
///         Tags =
///         {
///             { "Environment", "Prod" },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	recommendationsservice "github.com/pulumi/pulumi-azure-native-sdk/recommendationsservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := recommendationsservice.NewServiceEndpoint(ctx, "serviceEndpoint", &recommendationsservice.ServiceEndpointArgs{
/// 			AccountName: pulumi.String("sampleAccount"),
/// 			Location:    pulumi.String("West US"),
/// 			Properties: &recommendationsservice.ServiceEndpointResourcePropertiesArgs{
/// 				PreAllocatedCapacity: pulumi.Int(100),
/// 			},
/// 			ResourceGroupName:   pulumi.String("rg"),
/// 			ServiceEndpointName: pulumi.String("s1"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("Prod"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_recommendationsservice_serviceendpoint" "serviceEndpoint" {
///   account_name = "sampleAccount"
///   location     = "West US"
///   properties = {
///     pre_allocated_capacity = 100
///   }
///   resource_group_name   = "rg"
///   service_endpoint_name = "s1"
///   tags = {
///     "Environment" = "Prod"
///   }
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.recommendationsservice.ServiceEndpoint;
/// import com.pulumi.azurenative.recommendationsservice.ServiceEndpointArgs;
/// import com.pulumi.azurenative.recommendationsservice.inputs.ServiceEndpointResourcePropertiesArgs;
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
///         var serviceEndpoint = new ServiceEndpoint("serviceEndpoint", ServiceEndpointArgs.builder()
///             .accountName("sampleAccount")
///             .location("West US")
///             .properties(ServiceEndpointResourcePropertiesArgs.builder()
///                 .preAllocatedCapacity(100)
///                 .build())
///             .resourceGroupName("rg")
///             .serviceEndpointName("s1")
///             .tags(Map.of("Environment", "Prod"))
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const serviceEndpoint = new azure_native.recommendationsservice.ServiceEndpoint("serviceEndpoint", {
///     accountName: "sampleAccount",
///     location: "West US",
///     properties: {
///         preAllocatedCapacity: 100,
///     },
///     resourceGroupName: "rg",
///     serviceEndpointName: "s1",
///     tags: {
///         Environment: "Prod",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// service_endpoint = azure_native.recommendationsservice.ServiceEndpoint("serviceEndpoint",
///     account_name="sampleAccount",
///     location="West US",
///     properties={
///         "pre_allocated_capacity": 100,
///     },
///     resource_group_name="rg",
///     service_endpoint_name="s1",
///     tags={
///         "Environment": "Prod",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   serviceEndpoint:
///     type: azure-native:recommendationsservice:ServiceEndpoint
///     properties:
///       accountName: sampleAccount
///       location: West US
///       properties:
///         preAllocatedCapacity: 100
///       resourceGroupName: rg
///       serviceEndpointName: s1
///       tags:
///         Environment: Prod
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:recommendationsservice:ServiceEndpoint s1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecommendationsService/accounts/{accountName}/serviceEndpoints/{serviceEndpointName}
/// ```
class ServiceEndpoint extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// ServiceEndpoint resource properties.
  late final pulumi.Output<ServiceEndpointResourceResponseProperties> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ServiceEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceEndpoint]. {@macro pulumi_recommendationsservice_service_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceEndpoint(
    String name, {
    ServiceEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:recommendationsservice:ServiceEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ServiceEndpointResourceResponseProperties>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceEndpointResourceResponseProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ServiceEndpoint] resource.
  ServiceEndpoint.reference(String urn)
    : super(
        'azure-native:recommendationsservice:ServiceEndpoint',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ServiceEndpointResourceResponseProperties>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceEndpointResourceResponseProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
