import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_gateway_args.dart';
import 'ai_gateway_properties_response.dart';
import 'system_data_response.dart';

/// An AI gateway resource.
///
/// Uses Azure REST API version 2026-03-01-preview.
///
/// Other available API versions: 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdateAiGateway
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var aiGateway = new AzureNative.Web.AiGateway("aiGateway", new()
///     {
///         Location = "CentralUS",
///         Name = "aigateway1",
///         ResourceGroupName = "testrg",
///         Tags =
///         {
///             { "key1", "Value1" },
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
/// 	web "github.com/pulumi/pulumi-azure-native-sdk/web/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := web.NewAiGateway(ctx, "aiGateway", &web.AiGatewayArgs{
/// 			Location:          pulumi.String("CentralUS"),
/// 			Name:              pulumi.String("aigateway1"),
/// 			ResourceGroupName: pulumi.String("testrg"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("Value1"),
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
/// resource "azure-native_web_aigateway" "aiGateway" {
///   location            = "CentralUS"
///   name                = "aigateway1"
///   resource_group_name = "testrg"
///   tags = {
///     "key1" = "Value1"
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
/// import com.pulumi.azurenative.web.AiGateway;
/// import com.pulumi.azurenative.web.AiGatewayArgs;
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
///         var aiGateway = new AiGateway("aiGateway", AiGatewayArgs.builder()
///             .location("CentralUS")
///             .name("aigateway1")
///             .resourceGroupName("testrg")
///             .tags(Map.of("key1", "Value1"))
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
/// const aiGateway = new azure_native.web.AiGateway("aiGateway", {
///     location: "CentralUS",
///     name: "aigateway1",
///     resourceGroupName: "testrg",
///     tags: {
///         key1: "Value1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ai_gateway = azure_native.web.AiGateway("aiGateway",
///     location="CentralUS",
///     name="aigateway1",
///     resource_group_name="testrg",
///     tags={
///         "key1": "Value1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   aiGateway:
///     type: azure-native:web:AiGateway
///     properties:
///       location: CentralUS
///       name: aigateway1
///       resourceGroupName: testrg
///       tags:
///         key1: Value1
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
/// $ pulumi import azure-native:web:AiGateway aigateway1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/aigateways/{name}
/// ```
class AiGateway extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<AiGatewayPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AiGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiGateway]. {@macro pulumi_web_ai_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiGateway(
    String name, {
    AiGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:AiGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AiGatewayPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiGatewayPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [AiGateway] resource.
  AiGateway.reference(String urn)
    : super(
        'azure-native:web:AiGateway',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AiGatewayPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiGatewayPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
