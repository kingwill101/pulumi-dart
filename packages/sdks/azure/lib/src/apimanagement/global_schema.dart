import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_schema_args.dart';
import 'global_schema_state.dart';

/// Manages a Global Schema within an API Management Service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
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
/// const exampleGlobalSchema = new azure.apimanagement.GlobalSchema("example", {
///     schemaId: "example-schema1",
///     apiManagementName: exampleService.name,
///     resourceGroupName: example.name,
///     type: "xml",
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
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="West Europe")
/// example_service = azure.apimanagement.Service("example",
///     name="example-apim",
///     location=example.location,
///     resource_group_name=example.name,
///     publisher_name="pub1",
///     publisher_email="pub1@email.com",
///     sku_name="Consumption_0")
/// example_global_schema = azure.apimanagement.GlobalSchema("example",
///     schema_id="example-schema1",
///     api_management_name=example_service.name,
///     resource_group_name=example.name,
///     type="xml",
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
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-rg",
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
///     var exampleGlobalSchema = new Azure.ApiManagement.GlobalSchema("example", new()
///     {
///         SchemaId = "example-schema1",
///         ApiManagementName = exampleService.Name,
///         ResourceGroupName = example.Name,
///         Type = "xml",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
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
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "api_management_api_schema.xml",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewGlobalSchema(ctx, "example", &apimanagement.GlobalSchemaArgs{
/// 			SchemaId:          pulumi.String("example-schema1"),
/// 			ApiManagementName: exampleService.Name,
/// 			ResourceGroupName: example.Name,
/// 			Type:              pulumi.String("xml"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.apimanagement.Service;
/// import com.pulumi.azure.apimanagement.ServiceArgs;
/// import com.pulumi.azure.apimanagement.GlobalSchema;
/// import com.pulumi.azure.apimanagement.GlobalSchemaArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-rg")
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
///         var exampleGlobalSchema = new GlobalSchema("exampleGlobalSchema", GlobalSchemaArgs.builder()
///             .schemaId("example-schema1")
///             .apiManagementName(exampleService.name())
///             .resourceGroupName(example.name())
///             .type("xml")
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
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-rg
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
///   exampleGlobalSchema:
///     type: azure:apimanagement:GlobalSchema
///     name: example
///     properties:
///       schemaId: example-schema1
///       apiManagementName: ${exampleService.name}
///       resourceGroupName: ${example.name}
///       type: xml
///       value:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: api_management_api_schema.xml
///           return: result
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2022-08-01
///
/// ## Import
///
/// API Management API Schema's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/globalSchema:GlobalSchema example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.ApiManagement/service/instance1/schemas/schema1
/// ```
class GlobalSchema extends pulumi.CustomResource {
  /// The Name of the API Management Service where the API exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementName;
  /// The description of the schema.
  late final pulumi.Output<String?> description;
  /// The Name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A unique identifier for this Schema. Changing this forces a new resource to be created.
  late final pulumi.Output<String> schemaId;
  /// The content type of the Schema. Possible values are `xml` and `json`.
  late final pulumi.Output<String> type;
  /// The string defining the document representing the Schema.
  late final pulumi.Output<String> value;

  /// Creates a new [GlobalSchema].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GlobalSchema]. {@macro pulumi_apimanagement_global_schema_global_schema_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GlobalSchema(
    String name, {
    GlobalSchemaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/globalSchema:GlobalSchema',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiManagementName = registerOutput<String>('apiManagementName');
    this.description = registerOutput<String?>('description');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.schemaId = registerOutput<String>('schemaId');
    this.type = registerOutput<String>('type');
    this.value = registerOutput<String>('value');
  }

  /// Gets an existing [GlobalSchema] resource's state with the given [name] and [id].
  static GlobalSchema get(
    String name,
    pulumi.Input<String> id, {
    GlobalSchemaState? state,
  }) {
    return GlobalSchema._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GlobalSchema._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/globalSchema:GlobalSchema',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiManagementName = registerOutput<String>('apiManagementName');
    this.description = registerOutput<String?>('description');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.schemaId = registerOutput<String>('schemaId');
    this.type = registerOutput<String>('type');
    this.value = registerOutput<String>('value');
  }
}
