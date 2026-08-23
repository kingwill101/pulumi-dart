import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_api_args.dart';
import 'custom_api_properties_definition_response.dart';

/// A custom API
///
/// Uses Azure REST API version 2016-06-01. In version 2.x of the Azure Native provider, it used API version 2016-06-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Replace a custom API
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var customApi = new AzureNative.Web.CustomApi("customApi", new()
///     {
///         ApiName = "testCustomApi",
///         Properties = new AzureNative.Web.Inputs.CustomApiPropertiesDefinitionArgs
///         {
///             ApiDefinitions = new AzureNative.Web.Inputs.ApiResourceDefinitionsArgs
///             {
///                 OriginalSwaggerUrl = "https://tempuri.org/swagger.json",
///             },
///             ApiType = AzureNative.Web.ApiType.Rest,
///             Capabilities = new() { },
///             Description = "",
///             DisplayName = "testCustomApi",
///             IconUri = "/testIcon.svg",
///         },
///         ResourceGroupName = "testResourceGroup",
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
/// 		_, err := web.NewCustomApi(ctx, "customApi", &web.CustomApiArgs{
/// 			ApiName: pulumi.String("testCustomApi"),
/// 			Properties: &web.CustomApiPropertiesDefinitionArgs{
/// 				ApiDefinitions: &web.ApiResourceDefinitionsArgs{
/// 					OriginalSwaggerUrl: pulumi.String("https://tempuri.org/swagger.json"),
/// 				},
/// 				ApiType:      pulumi.String(web.ApiTypeRest),
/// 				Capabilities: pulumi.StringArray{},
/// 				Description:  pulumi.String(""),
/// 				DisplayName:  pulumi.String("testCustomApi"),
/// 				IconUri:      pulumi.String("/testIcon.svg"),
/// 			},
/// 			ResourceGroupName: pulumi.String("testResourceGroup"),
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
/// resource "azure-native_web_customapi" "customApi" {
///   api_name = "testCustomApi"
///   properties = {
///     api_definitions = {
///       original_swagger_url = "https://tempuri.org/swagger.json"
///     }
///     api_type     = "Rest"
///     capabilities = []
///     description  = ""
///     display_name = "testCustomApi"
///     icon_uri     = "/testIcon.svg"
///   }
///   resource_group_name = "testResourceGroup"
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
/// import com.pulumi.azurenative.web.CustomApi;
/// import com.pulumi.azurenative.web.CustomApiArgs;
/// import com.pulumi.azurenative.web.inputs.CustomApiPropertiesDefinitionArgs;
/// import com.pulumi.azurenative.web.inputs.ApiResourceDefinitionsArgs;
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
///         var customApi = new CustomApi("customApi", CustomApiArgs.builder()
///             .apiName("testCustomApi")
///             .properties(CustomApiPropertiesDefinitionArgs.builder()
///                 .apiDefinitions(ApiResourceDefinitionsArgs.builder()
///                     .originalSwaggerUrl("https://tempuri.org/swagger.json")
///                     .build())
///                 .apiType("Rest")
///                 .capabilities()
///                 .description("")
///                 .displayName("testCustomApi")
///                 .iconUri("/testIcon.svg")
///                 .build())
///             .resourceGroupName("testResourceGroup")
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
/// const customApi = new azure_native.web.CustomApi("customApi", {
///     apiName: "testCustomApi",
///     properties: {
///         apiDefinitions: {
///             originalSwaggerUrl: "https://tempuri.org/swagger.json",
///         },
///         apiType: azure_native.web.ApiType.Rest,
///         capabilities: [],
///         description: "",
///         displayName: "testCustomApi",
///         iconUri: "/testIcon.svg",
///     },
///     resourceGroupName: "testResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// custom_api = azure_native.web.CustomApi("customApi",
///     api_name="testCustomApi",
///     properties={
///         "api_definitions": {
///             "original_swagger_url": "https://tempuri.org/swagger.json",
///         },
///         "api_type": azure_native.web.ApiType.REST,
///         "capabilities": [],
///         "description": "",
///         "display_name": "testCustomApi",
///         "icon_uri": "/testIcon.svg",
///     },
///     resource_group_name="testResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   customApi:
///     type: azure-native:web:CustomApi
///     properties:
///       apiName: testCustomApi
///       properties:
///         apiDefinitions:
///           originalSwaggerUrl: https://tempuri.org/swagger.json
///         apiType: Rest
///         capabilities: []
///         description: ""
///         displayName: testCustomApi
///         iconUri: /testIcon.svg
///       resourceGroupName: testResourceGroup
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
/// $ pulumi import azure-native:web:CustomApi testCustomApi /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/customApis/{apiName}
/// ```
class CustomApi extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource ETag
  late final pulumi.Output<String?> etag;
  /// Resource location
  late final pulumi.Output<String?> location;
  /// Resource name
  late final pulumi.Output<String> name;
  /// Custom API properties
  late final pulumi.Output<CustomApiPropertiesDefinitionResponse> properties;
  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [CustomApi].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomApi]. {@macro pulumi_web_custom_api_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomApi(
    String name, {
    CustomApiArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:CustomApi',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<CustomApiPropertiesDefinitionResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomApiPropertiesDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
