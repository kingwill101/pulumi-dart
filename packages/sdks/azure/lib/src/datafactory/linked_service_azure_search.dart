import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_azure_search_args.dart';
import 'linked_service_azure_search_state.dart';

/// Manages a Linked Service (connection) between Azure Search Service and Azure Data Factory.
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
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleFactory = new azure.datafactory.Factory("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleService = new azure.search.Service("example", {
///     name: "example-search-service",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: "standard",
/// });
/// const test = new azure.datafactory.LinkedServiceAzureSearch("test", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     url: std.joinOutput({
///         separator: "",
///         input: [
///             "https://",
///             exampleService.name,
///             ".search.windows.net",
///         ],
///     }).apply(invoke => invoke.result),
///     searchServiceKey: exampleService.primaryKey,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_factory = azure.datafactory.Factory("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name)
/// example_service = azure.search.Service("example",
///     name="example-search-service",
///     resource_group_name=example.name,
///     location=example.location,
///     sku="standard")
/// test = azure.datafactory.LinkedServiceAzureSearch("test",
///     name="example",
///     data_factory_id=example_factory.id,
///     url=std.join_output(separator="",
///         input=[
///             "https://",
///             example_service.name,
///             ".search.windows.net",
///         ]).apply(lambda invoke: invoke.result),
///     search_service_key=example_service.primary_key)
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleFactory = new Azure.DataFactory.Factory("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleService = new Azure.Search.Service("example", new()
///     {
///         Name = "example-search-service",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = "standard",
///     });
///
///     var test = new Azure.DataFactory.LinkedServiceAzureSearch("test", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         Url = Std.Join.Invoke(new()
///         {
///             Separator = "",
///             Input = new[]
///             {
///                 "https://",
///                 exampleService.Name,
///                 ".search.windows.net",
///             },
///         }).Apply(invoke => invoke.Result),
///         SearchServiceKey = exampleService.PrimaryKey,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datafactory"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/search"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 		exampleFactory, err := datafactory.NewFactory(ctx, "example", &datafactory.FactoryArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleService, err := search.NewService(ctx, "example", &search.ServiceArgs{
/// 			Name:              pulumi.String("example-search-service"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku:               pulumi.String("standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewLinkedServiceAzureSearch(ctx, "test", &datafactory.LinkedServiceAzureSearchArgs{
/// 			Name:          pulumi.String("example"),
/// 			DataFactoryId: exampleFactory.ID(),
/// 			Url: pulumi.String(std.JoinOutput(ctx, std.JoinOutputArgs{
/// 				Separator: pulumi.String(""),
/// 				Input: pulumi.StringArray{
/// 					pulumi.String("https://"),
/// 					exampleService.Name,
/// 					pulumi.String(".search.windows.net"),
/// 				},
/// 			}, nil).ApplyT(func(invoke std.JoinResult) (*string, error) {
/// 				val := invoke.Result
/// 				return &val, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			SearchServiceKey: exampleService.PrimaryKey,
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_datafactory_factory" "example" {
///   name                = "example"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_search_service" "example" {
///   name                = "example-search-service"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   sku                 = "standard"
/// }
/// resource "azure_datafactory_linkedserviceazuresearch" "test" {
///   name               = "example"
///   data_factory_id    = azure_datafactory_factory.example.id
///   url                = join("", ["https://", azure_search_service.example.name, ".search.windows.net"])
///   search_service_key = azure_search_service.example.primary_key
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
/// import com.pulumi.azure.datafactory.Factory;
/// import com.pulumi.azure.datafactory.FactoryArgs;
/// import com.pulumi.azure.search.Service;
/// import com.pulumi.azure.search.ServiceArgs;
/// import com.pulumi.azure.datafactory.LinkedServiceAzureSearch;
/// import com.pulumi.azure.datafactory.LinkedServiceAzureSearchArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JoinArgs;
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
///         var exampleFactory = new Factory("exampleFactory", FactoryArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("example-search-service")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku("standard")
///             .build());
///
///         var test = new LinkedServiceAzureSearch("test", LinkedServiceAzureSearchArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .url(StdFunctions.join(JoinArgs.builder()
///                 .separator("")
///                 .input(
///                     "https://",
///                     exampleService.name(),
///                     ".search.windows.net")
///                 .build()).applyValue(_invoke -> _invoke.result()))
///             .searchServiceKey(exampleService.primaryKey())
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
///   exampleFactory:
///     type: azure:datafactory:Factory
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleService:
///     type: azure:search:Service
///     name: example
///     properties:
///       name: example-search-service
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku: standard
///   test:
///     type: azure:datafactory:LinkedServiceAzureSearch
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       url:
///         fn::invoke:
///           function: std:join
///           arguments:
///             separator: ""
///             input:
///               - https://
///               - ${exampleService.name}
///               - .search.windows.net
///           return: result
///       searchServiceKey: ${exampleService.primaryKey}
/// ```
///
///
/// ## Import
///
/// Data Factory Linked Service's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/linkedServiceAzureSearch:LinkedServiceAzureSearch example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/linkedservices/example
/// ```
class LinkedServiceAzureSearch extends pulumi.CustomResource {
  /// A map of additional properties to associate with the Data Factory Linked Service.
  ///
  /// The following supported arguments are specific to Azure Search Linked Service:
  late final pulumi.Output<Map<String, String>?> additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service.
  late final pulumi.Output<List<String>?> annotations;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;
  /// The description for the Data Factory Linked Service.
  late final pulumi.Output<String?> description;
  /// The encrypted credential to connect to Azure Search Service.
  late final pulumi.Output<String> encryptedCredential;
  /// The integration runtime reference to associate with the Data Factory Linked Service.
  late final pulumi.Output<String?> integrationRuntimeName;
  /// Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// The key of the Azure Search Service.
  late final pulumi.Output<String> searchServiceKey;
  /// The URL of the Search Service endpoint (e.g. &lt;https://{searchServiceName}.search.windows.net&gt;).
  late final pulumi.Output<String> url;

  /// Creates a new [LinkedServiceAzureSearch].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkedServiceAzureSearch]. {@macro pulumi_datafactory_linked_service_azure_search_linked_service_azure_search_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkedServiceAzureSearch(
    String name, {
    LinkedServiceAzureSearchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/linkedServiceAzureSearch:LinkedServiceAzureSearch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    annotations = registerOutput<List<String>?>('annotations');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    encryptedCredential = registerOutput<String>('encryptedCredential');
    integrationRuntimeName = registerOutput<String?>('integrationRuntimeName');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters');
    searchServiceKey = registerOutput<String>('searchServiceKey');
    url = registerOutput<String>('url');
  }

  /// Gets an existing [LinkedServiceAzureSearch] resource's state with the given [name] and [id].
  static LinkedServiceAzureSearch get(
    String name,
    pulumi.Input<String> id, {
    LinkedServiceAzureSearchState? state,
  }) {
    return LinkedServiceAzureSearch._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LinkedServiceAzureSearch._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/linkedServiceAzureSearch:LinkedServiceAzureSearch',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    annotations = registerOutput<List<String>?>('annotations');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    encryptedCredential = registerOutput<String>('encryptedCredential');
    integrationRuntimeName = registerOutput<String?>('integrationRuntimeName');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters');
    searchServiceKey = registerOutput<String>('searchServiceKey');
    url = registerOutput<String>('url');
  }
}
