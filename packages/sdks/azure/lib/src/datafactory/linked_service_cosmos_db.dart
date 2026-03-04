import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_cosmos_db_args.dart';
import 'linked_service_cosmos_db_state.dart';

/// Manages a Linked Service (connection) between a CosmosDB and Azure Data Factory using SQL API.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const example = azure.cosmosdb.getAccount({
///     name: "tfex-cosmosdb-account",
///     resourceGroupName: "tfex-cosmosdb-account-rg",
/// });
/// const exampleFactory = new azure.datafactory.Factory("example", {
///     name: "example",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// const exampleLinkedServiceCosmosDb = new azure.datafactory.LinkedServiceCosmosDb("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     accountEndpoint: example.then(example => example.endpoint),
///     accountKey: example.then(example => example.primaryKey),
///     database: "foo",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example = azure.cosmosdb.get_account(name="tfex-cosmosdb-account",
///     resource_group_name="tfex-cosmosdb-account-rg")
/// example_factory = azure.datafactory.Factory("example",
///     name="example",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name)
/// example_linked_service_cosmos_db = azure.datafactory.LinkedServiceCosmosDb("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     account_endpoint=example.endpoint,
///     account_key=example.primary_key,
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
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var example = Azure.CosmosDB.GetAccount.Invoke(new()
///     {
///         Name = "tfex-cosmosdb-account",
///         ResourceGroupName = "tfex-cosmosdb-account-rg",
///     });
///
///     var exampleFactory = new Azure.DataFactory.Factory("example", new()
///     {
///         Name = "example",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///     });
///
///     var exampleLinkedServiceCosmosDb = new Azure.DataFactory.LinkedServiceCosmosDb("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         AccountEndpoint = example.Apply(getAccountResult => getAccountResult.Endpoint),
///         AccountKey = example.Apply(getAccountResult => getAccountResult.PrimaryKey),
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cosmosdb"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datafactory"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := cosmosdb.LookupAccount(ctx, &cosmosdb.LookupAccountArgs{
/// 			Name:              "tfex-cosmosdb-account",
/// 			ResourceGroupName: "tfex-cosmosdb-account-rg",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFactory, err := datafactory.NewFactory(ctx, "example", &datafactory.FactoryArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewLinkedServiceCosmosDb(ctx, "example", &datafactory.LinkedServiceCosmosDbArgs{
/// 			Name:            pulumi.String("example"),
/// 			DataFactoryId:   exampleFactory.ID(),
/// 			AccountEndpoint: pulumi.String(example.Endpoint),
/// 			AccountKey:      pulumi.String(example.PrimaryKey),
/// 			Database:        pulumi.String("foo"),
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
/// import com.pulumi.azure.cosmosdb.CosmosdbFunctions;
/// import com.pulumi.azure.cosmosdb.inputs.GetAccountArgs;
/// import com.pulumi.azure.datafactory.Factory;
/// import com.pulumi.azure.datafactory.FactoryArgs;
/// import com.pulumi.azure.datafactory.LinkedServiceCosmosDb;
/// import com.pulumi.azure.datafactory.LinkedServiceCosmosDbArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         final var example = CosmosdbFunctions.getAccount(GetAccountArgs.builder()
///             .name("tfex-cosmosdb-account")
///             .resourceGroupName("tfex-cosmosdb-account-rg")
///             .build());
///
///         var exampleFactory = new Factory("exampleFactory", FactoryArgs.builder()
///             .name("example")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
///
///         var exampleLinkedServiceCosmosDb = new LinkedServiceCosmosDb("exampleLinkedServiceCosmosDb", LinkedServiceCosmosDbArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .accountEndpoint(example.endpoint())
///             .accountKey(example.primaryKey())
///             .database("foo")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleFactory:
///     type: azure:datafactory:Factory
///     name: example
///     properties:
///       name: example
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///   exampleLinkedServiceCosmosDb:
///     type: azure:datafactory:LinkedServiceCosmosDb
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       accountEndpoint: ${example.endpoint}
///       accountKey: ${example.primaryKey}
///       database: foo
/// variables:
///   example:
///     fn::invoke:
///       function: azure:cosmosdb:getAccount
///       arguments:
///         name: tfex-cosmosdb-account
///         resourceGroupName: tfex-cosmosdb-account-rg
/// ```
///
///
/// ## Import
///
/// Data Factory Linked Service's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/linkedServiceCosmosDb:LinkedServiceCosmosDb example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/linkedservices/example
/// ```
class LinkedServiceCosmosDb extends pulumi.CustomResource {
  /// The endpoint of the Azure CosmosDB account. Required if `connection_string` is unspecified.
  late final pulumi.Output<String?> accountEndpoint;

  /// The account key of the Azure Cosmos DB account. Required if `connection_string` is unspecified.
  late final pulumi.Output<String?> accountKey;

  /// A map of additional properties to associate with the Data Factory Linked Service.
  ///
  /// The following supported arguments are specific to CosmosDB Linked Service:
  late final pulumi.Output<Map<String, String>?> additionalProperties;

  /// List of tags that can be used for describing the Data Factory Linked Service.
  late final pulumi.Output<List<String>?> annotations;

  /// The connection string. Required if `account_endpoint`, `account_key`, and `database` are unspecified.
  late final pulumi.Output<String?> connectionString;

  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;

  /// The name of the database. Required if `connection_string` is unspecified.
  late final pulumi.Output<String?> database;

  /// The description for the Data Factory Linked Service.
  late final pulumi.Output<String?> description;

  /// The integration runtime reference to associate with the Data Factory Linked Service.
  late final pulumi.Output<String?> integrationRuntimeName;

  /// Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;

  /// A map of parameters to associate with the Data Factory Linked Service.
  late final pulumi.Output<Map<String, String>?> parameters;

  /// Creates a new [LinkedServiceCosmosDb].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkedServiceCosmosDb]. {@macro pulumi_datafactory_linked_service_cosmos_db_linked_service_cosmos_db_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkedServiceCosmosDb(
    String name, {
    LinkedServiceCosmosDbArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:datafactory/linkedServiceCosmosDb:LinkedServiceCosmosDb',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountEndpoint = registerOutput<String?>('accountEndpoint');
    accountKey = registerOutput<String?>('accountKey');
    additionalProperties = registerOutput<Map<String, String>?>(
      'additionalProperties',
    );
    annotations = registerOutput<List<String>?>('annotations');
    connectionString = registerOutput<String?>('connectionString');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    database = registerOutput<String?>('database');
    description = registerOutput<String?>('description');
    integrationRuntimeName = registerOutput<String?>('integrationRuntimeName');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters');
  }

  /// Gets an existing [LinkedServiceCosmosDb] resource's state with the given [name] and [id].
  static LinkedServiceCosmosDb get(
    String name,
    pulumi.Input<String> id, {
    LinkedServiceCosmosDbState? state,
  }) {
    return LinkedServiceCosmosDb._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LinkedServiceCosmosDb._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:datafactory/linkedServiceCosmosDb:LinkedServiceCosmosDb',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountEndpoint = registerOutput<String?>('accountEndpoint');
    accountKey = registerOutput<String?>('accountKey');
    additionalProperties = registerOutput<Map<String, String>?>(
      'additionalProperties',
    );
    annotations = registerOutput<List<String>?>('annotations');
    connectionString = registerOutput<String?>('connectionString');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    database = registerOutput<String?>('database');
    description = registerOutput<String?>('description');
    integrationRuntimeName = registerOutput<String?>('integrationRuntimeName');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters');
  }
}
