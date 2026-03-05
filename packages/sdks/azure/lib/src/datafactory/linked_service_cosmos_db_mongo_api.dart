import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_cosmos_db_mongo_api_args.dart';
import 'linked_service_cosmos_db_mongo_api_state.dart';

/// Manages a Linked Service (connection) between a CosmosDB and Azure Data Factory using Mongo API.
///
/// &gt; **Note:** All arguments including the client secret will be stored in the raw state as plain-text. [Read more about sensitive data in state](https://www.terraform.io/docs/state/sensitive-data.html).
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
/// const exampleFactory = new azure.datafactory.Factory("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleLinkedServiceCosmosDbMongoApi = new azure.datafactory.LinkedServiceCosmosDbMongoApi("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     connectionString: "mongodb://testinstance:testkey@testinstance.documents.azure.com:10255/?ssl=true",
///     database: "foo",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_factory = azure.datafactory.Factory("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name)
/// example_linked_service_cosmos_db_mongo_api = azure.datafactory.LinkedServiceCosmosDbMongoApi("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     connection_string="mongodb://testinstance:testkey@testinstance.documents.azure.com:10255/?ssl=true",
///     database="foo")
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
///     var exampleFactory = new Azure.DataFactory.Factory("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleLinkedServiceCosmosDbMongoApi = new Azure.DataFactory.LinkedServiceCosmosDbMongoApi("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         ConnectionString = "mongodb://testinstance:testkey@testinstance.documents.azure.com:10255/?ssl=true",
///         Database = "foo",
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
/// 		_, err = datafactory.NewLinkedServiceCosmosDbMongoApi(ctx, "example", &datafactory.LinkedServiceCosmosDbMongoApiArgs{
/// 			Name:             pulumi.String("example"),
/// 			DataFactoryId:    exampleFactory.ID(),
/// 			ConnectionString: pulumi.String("mongodb://testinstance:testkey@testinstance.documents.azure.com:10255/?ssl=true"),
/// 			Database:         pulumi.String("foo"),
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
/// import com.pulumi.azure.datafactory.Factory;
/// import com.pulumi.azure.datafactory.FactoryArgs;
/// import com.pulumi.azure.datafactory.LinkedServiceCosmosDbMongoApi;
/// import com.pulumi.azure.datafactory.LinkedServiceCosmosDbMongoApiArgs;
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
///         var exampleLinkedServiceCosmosDbMongoApi = new LinkedServiceCosmosDbMongoApi("exampleLinkedServiceCosmosDbMongoApi", LinkedServiceCosmosDbMongoApiArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .connectionString("mongodb://testinstance:testkey@testinstance.documents.azure.com:10255/?ssl=true")
///             .database("foo")
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
///   exampleLinkedServiceCosmosDbMongoApi:
///     type: azure:datafactory:LinkedServiceCosmosDbMongoApi
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       connectionString: mongodb://testinstance:testkey@testinstance.documents.azure.com:10255/?ssl=true
///       database: foo
/// ```
///
///
/// ## Import
///
/// Data Factory Linked Service's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/linkedServiceCosmosDbMongoApi:LinkedServiceCosmosDbMongoApi example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/linkedservices/example
/// ```
class LinkedServiceCosmosDbMongoApi extends pulumi.CustomResource {
  /// A map of additional properties to associate with the Data Factory Linked Service.
  ///
  /// The following supported arguments are specific to CosmosDB Linked Service:
  late final pulumi.Output<Map<String, String>?> additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service.
  late final pulumi.Output<List<String>?> annotations;
  /// The connection string.
  late final pulumi.Output<String?> connectionString;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;
  /// The name of the database.
  late final pulumi.Output<String?> database;
  /// The description for the Data Factory Linked Service.
  late final pulumi.Output<String?> description;
  /// The integration runtime reference to associate with the Data Factory Linked Service.
  late final pulumi.Output<String?> integrationRuntimeName;
  /// Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// Whether API server version is 3.2 or higher. Defaults to `false`.
  late final pulumi.Output<bool?> serverVersionIs32OrHigher;

  /// Creates a new [LinkedServiceCosmosDbMongoApi].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkedServiceCosmosDbMongoApi]. {@macro pulumi_datafactory_linked_service_cosmos_db_mongo_api_linked_service_cosmos_db_mongo_api_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkedServiceCosmosDbMongoApi(
    String name, {
    LinkedServiceCosmosDbMongoApiArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/linkedServiceCosmosDbMongoApi:LinkedServiceCosmosDbMongoApi',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    annotations = registerOutput<List<String>?>('annotations');
    connectionString = registerOutput<String?>('connectionString');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    database = registerOutput<String?>('database');
    description = registerOutput<String?>('description');
    integrationRuntimeName = registerOutput<String?>('integrationRuntimeName');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters');
    serverVersionIs32OrHigher = registerOutput<bool?>('serverVersionIs32OrHigher');
  }

  /// Gets an existing [LinkedServiceCosmosDbMongoApi] resource's state with the given [name] and [id].
  static LinkedServiceCosmosDbMongoApi get(
    String name,
    pulumi.Input<String> id, {
    LinkedServiceCosmosDbMongoApiState? state,
  }) {
    return LinkedServiceCosmosDbMongoApi._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LinkedServiceCosmosDbMongoApi._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/linkedServiceCosmosDbMongoApi:LinkedServiceCosmosDbMongoApi',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    annotations = registerOutput<List<String>?>('annotations');
    connectionString = registerOutput<String?>('connectionString');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    database = registerOutput<String?>('database');
    description = registerOutput<String?>('description');
    integrationRuntimeName = registerOutput<String?>('integrationRuntimeName');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters');
    serverVersionIs32OrHigher = registerOutput<bool?>('serverVersionIs32OrHigher');
  }
}
