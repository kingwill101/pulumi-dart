import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_connection_definition_response_properties.dart';
import 'connection_args.dart';

/// API connection
///
/// Uses Azure REST API version 2016-06-01. In version 2.x of the Azure Native provider, it used API version 2016-06-01.
///
/// Other available API versions: 2015-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Replace a connection
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connection = new AzureNative.Web.Connection("connection", new()
///     {
///         ConnectionName = "testManagedApi",
///         Properties = new AzureNative.Web.Inputs.ApiConnectionDefinitionPropertiesArgs
///         {
///             Api = new AzureNative.Web.Inputs.ApiReferenceArgs
///             {
///                 Id = "/subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/providers/Microsoft.Web/locations/centralus/managedApis/testManagedApi",
///             },
///             CustomParameterValues = null,
///             DisplayName = "testManagedApi",
///             ParameterValues = null,
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
/// 		_, err := web.NewConnection(ctx, "connection", &web.ConnectionArgs{
/// 			ConnectionName: pulumi.String("testManagedApi"),
/// 			Properties: &web.ApiConnectionDefinitionPropertiesArgs{
/// 				Api: &web.ApiReferenceArgs{
/// 					Id: pulumi.String("/subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/providers/Microsoft.Web/locations/centralus/managedApis/testManagedApi"),
/// 				},
/// 				CustomParameterValues: pulumi.StringMap{},
/// 				DisplayName:           pulumi.String("testManagedApi"),
/// 				ParameterValues:       pulumi.StringMap{},
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
/// resource "azure-native_web_connection" "connection" {
///   connection_name = "testManagedApi"
///   properties = {
///     api = {
///       id = "/subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/providers/Microsoft.Web/locations/centralus/managedApis/testManagedApi"
///     }
///     custom_parameter_values = {}
///     display_name            = "testManagedApi"
///     parameter_values        = {}
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
/// import com.pulumi.azurenative.web.Connection;
/// import com.pulumi.azurenative.web.ConnectionArgs;
/// import com.pulumi.azurenative.web.inputs.ApiConnectionDefinitionPropertiesArgs;
/// import com.pulumi.azurenative.web.inputs.ApiReferenceArgs;
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
///         var connection = new Connection("connection", ConnectionArgs.builder()
///             .connectionName("testManagedApi")
///             .properties(ApiConnectionDefinitionPropertiesArgs.builder()
///                 .api(ApiReferenceArgs.builder()
///                     .id("/subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/providers/Microsoft.Web/locations/centralus/managedApis/testManagedApi")
///                     .build())
///                 .customParameterValues(Map.ofEntries(
///                 ))
///                 .displayName("testManagedApi")
///                 .parameterValues(Map.ofEntries(
///                 ))
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
/// const connection = new azure_native.web.Connection("connection", {
///     connectionName: "testManagedApi",
///     properties: {
///         api: {
///             id: "/subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/providers/Microsoft.Web/locations/centralus/managedApis/testManagedApi",
///         },
///         customParameterValues: {},
///         displayName: "testManagedApi",
///         parameterValues: {},
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
/// connection = azure_native.web.Connection("connection",
///     connection_name="testManagedApi",
///     properties={
///         "api": {
///             "id": "/subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/providers/Microsoft.Web/locations/centralus/managedApis/testManagedApi",
///         },
///         "custom_parameter_values": {},
///         "display_name": "testManagedApi",
///         "parameter_values": {},
///     },
///     resource_group_name="testResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   connection:
///     type: azure-native:web:Connection
///     properties:
///       connectionName: testManagedApi
///       properties:
///         api:
///           id: /subscriptions/f34b22a3-2202-4fb1-b040-1332bd928c84/providers/Microsoft.Web/locations/centralus/managedApis/testManagedApi
///         customParameterValues: {}
///         displayName: testManagedApi
///         parameterValues: {}
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
/// $ pulumi import azure-native:web:Connection testManagedApi-1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/connections/{connectionName}
/// ```
class Connection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource ETag
  late final pulumi.Output<String?> etag;
  /// Resource location
  late final pulumi.Output<String?> location;
  /// Resource name
  late final pulumi.Output<String> name;
  late final pulumi.Output<ApiConnectionDefinitionResponseProperties> properties;
  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [Connection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connection]. {@macro pulumi_web_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connection(
    String name, {
    ConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:Connection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ApiConnectionDefinitionResponseProperties>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiConnectionDefinitionResponseProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Connection] resource.
  Connection.reference(String urn)
    : super(
        'azure-native:web:Connection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ApiConnectionDefinitionResponseProperties>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiConnectionDefinitionResponseProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
