import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_schema_args.dart';
import 'api_schema_state.dart';

/// Manages an API Schema within an API Management Service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = azure.apimanagement.getApi({
///     name: "search-api",
///     apiManagementName: "search-api-management",
///     resourceGroupName: "search-service",
///     revision: "2",
/// });
/// const exampleApiSchema = new azure.apimanagement.ApiSchema("example", {
///     apiName: example.then(example => example.name),
///     apiManagementName: example.then(example => example.apiManagementName),
///     resourceGroupName: example.then(example => example.resourceGroupName),
///     schemaId: "example-schema",
///     contentType: "application/vnd.ms-azure-apim.xsd+xml",
///     value: std.file({
///         input: "api_management_api_schema.xml",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.apimanagement.get_api(name="search-api",
///     api_management_name="search-api-management",
///     resource_group_name="search-service",
///     revision="2")
/// example_api_schema = azure.apimanagement.ApiSchema("example",
///     api_name=example.name,
///     api_management_name=example.api_management_name,
///     resource_group_name=example.resource_group_name,
///     schema_id="example-schema",
///     content_type="application/vnd.ms-azure-apim.xsd+xml",
///     value=std.file(input="api_management_api_schema.xml").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ApiManagement.GetApi.Invoke(new()
///     {
///         Name = "search-api",
///         ApiManagementName = "search-api-management",
///         ResourceGroupName = "search-service",
///         Revision = "2",
///     });
///
///     var exampleApiSchema = new Azure.ApiManagement.ApiSchema("example", new()
///     {
///         ApiName = example.Apply(getApiResult => getApiResult.Name),
///         ApiManagementName = example.Apply(getApiResult => getApiResult.ApiManagementName),
///         ResourceGroupName = example.Apply(getApiResult => getApiResult.ResourceGroupName),
///         SchemaId = "example-schema",
///         ContentType = "application/vnd.ms-azure-apim.xsd+xml",
///         Value = Std.File.Invoke(new()
///         {
///             Input = "api_management_api_schema.xml",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/apimanagement"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := apimanagement.LookupApi(ctx, &apimanagement.LookupApiArgs{
/// 			Name:              "search-api",
/// 			ApiManagementName: "search-api-management",
/// 			ResourceGroupName: "search-service",
/// 			Revision:          "2",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "api_management_api_schema.xml",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewApiSchema(ctx, "example", &apimanagement.ApiSchemaArgs{
/// 			ApiName:           pulumi.String(example.Name),
/// 			ApiManagementName: pulumi.String(example.ApiManagementName),
/// 			ResourceGroupName: pulumi.String(example.ResourceGroupName),
/// 			SchemaId:          pulumi.String("example-schema"),
/// 			ContentType:       pulumi.String("application/vnd.ms-azure-apim.xsd+xml"),
/// 			Value:             pulumi.String(invokeFile.Result),
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
/// import com.pulumi.azure.apimanagement.ApimanagementFunctions;
/// import com.pulumi.azure.apimanagement.inputs.GetApiArgs;
/// import com.pulumi.azure.apimanagement.ApiSchema;
/// import com.pulumi.azure.apimanagement.ApiSchemaArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         final var example = ApimanagementFunctions.getApi(GetApiArgs.builder()
///             .name("search-api")
///             .apiManagementName("search-api-management")
///             .resourceGroupName("search-service")
///             .revision("2")
///             .build());
///
///         var exampleApiSchema = new ApiSchema("exampleApiSchema", ApiSchemaArgs.builder()
///             .apiName(example.name())
///             .apiManagementName(example.apiManagementName())
///             .resourceGroupName(example.resourceGroupName())
///             .schemaId("example-schema")
///             .contentType("application/vnd.ms-azure-apim.xsd+xml")
///             .value(StdFunctions.file(FileArgs.builder()
///                 .input("api_management_api_schema.xml")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleApiSchema:
///     type: azure:apimanagement:ApiSchema
///     name: example
///     properties:
///       apiName: ${example.name}
///       apiManagementName: ${example.apiManagementName}
///       resourceGroupName: ${example.resourceGroupName}
///       schemaId: example-schema
///       contentType: application/vnd.ms-azure-apim.xsd+xml
///       value:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: api_management_api_schema.xml
///           return: result
/// variables:
///   example:
///     fn::invoke:
///       function: azure:apimanagement:getApi
///       arguments:
///         name: search-api
///         apiManagementName: search-api-management
///         resourceGroupName: search-service
///         revision: '2'
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
/// API Management API Schema's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/apiSchema:ApiSchema example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.ApiManagement/service/instance1/apis/api1/schemas/schema1
/// ```
class ApiSchema extends pulumi.CustomResource {
  /// The Name of the API Management Service where the API exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementName;
  /// The name of the API within the API Management Service where this API Schema should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiName;
  /// Types definitions. Used for Swagger/OpenAPI v2/v3 schemas only.
  late final pulumi.Output<String?> components;
  /// The content type of the API Schema.
  late final pulumi.Output<String> contentType;
  /// Types definitions. Used for Swagger/OpenAPI v1 schemas only.
  late final pulumi.Output<String?> definitions;
  /// The Name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A unique identifier for this API Schema. Changing this forces a new resource to be created.
  late final pulumi.Output<String> schemaId;
  /// The JSON escaped string defining the document representing the Schema.
  late final pulumi.Output<String?> value;

  /// Creates a new [ApiSchema].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiSchema]. {@macro pulumi_apimanagement_api_schema_api_schema_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiSchema(
    String name, {
    ApiSchemaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/apiSchema:ApiSchema',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiManagementName = registerOutput<String>('apiManagementName');
    apiName = registerOutput<String>('apiName');
    components = registerOutput<String?>('components');
    contentType = registerOutput<String>('contentType');
    definitions = registerOutput<String?>('definitions');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    schemaId = registerOutput<String>('schemaId');
    value = registerOutput<String?>('value');
  }

  /// Gets an existing [ApiSchema] resource's state with the given [name] and [id].
  static ApiSchema get(
    String name,
    pulumi.Input<String> id, {
    ApiSchemaState? state,
  }) {
    return ApiSchema._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApiSchema._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/apiSchema:ApiSchema',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiManagementName = registerOutput<String>('apiManagementName');
    apiName = registerOutput<String>('apiName');
    components = registerOutput<String?>('components');
    contentType = registerOutput<String>('contentType');
    definitions = registerOutput<String?>('definitions');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    schemaId = registerOutput<String>('schemaId');
    value = registerOutput<String?>('value');
  }
}
