import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_azure_sql_table_args.dart';
import 'dataset_azure_sql_table_schema_column.dart';
import 'dataset_azure_sql_table_state.dart';

/// Manages an Azure SQL Table Dataset inside an Azure Data Factory.
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
/// const exampleLinkedServiceAzureSqlDatabase = new azure.datafactory.LinkedServiceAzureSqlDatabase("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     connectionString: "Integrated Security=False;Data Source=test;Initial Catalog=test;Initial Catalog=test;User ID=test;Password=test",
/// });
/// const exampleDatasetAzureSqlTable = new azure.datafactory.DatasetAzureSqlTable("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     linkedServiceId: exampleLinkedServiceAzureSqlDatabase.id,
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
/// example_linked_service_azure_sql_database = azure.datafactory.LinkedServiceAzureSqlDatabase("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     connection_string="Integrated Security=False;Data Source=test;Initial Catalog=test;Initial Catalog=test;User ID=test;Password=test")
/// example_dataset_azure_sql_table = azure.datafactory.DatasetAzureSqlTable("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     linked_service_id=example_linked_service_azure_sql_database.id)
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
///     var exampleLinkedServiceAzureSqlDatabase = new Azure.DataFactory.LinkedServiceAzureSqlDatabase("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         ConnectionString = "Integrated Security=False;Data Source=test;Initial Catalog=test;Initial Catalog=test;User ID=test;Password=test",
///     });
///
///     var exampleDatasetAzureSqlTable = new Azure.DataFactory.DatasetAzureSqlTable("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         LinkedServiceId = exampleLinkedServiceAzureSqlDatabase.Id,
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
/// 		exampleLinkedServiceAzureSqlDatabase, err := datafactory.NewLinkedServiceAzureSqlDatabase(ctx, "example", &datafactory.LinkedServiceAzureSqlDatabaseArgs{
/// 			Name:             pulumi.String("example"),
/// 			DataFactoryId:    exampleFactory.ID().ToIDOutput().ToStringOutput(),
/// 			ConnectionString: pulumi.String("Integrated Security=False;Data Source=test;Initial Catalog=test;Initial Catalog=test;User ID=test;Password=test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewDatasetAzureSqlTable(ctx, "example", &datafactory.DatasetAzureSqlTableArgs{
/// 			Name:            pulumi.String("example"),
/// 			DataFactoryId:   exampleFactory.ID().ToIDOutput().ToStringOutput(),
/// 			LinkedServiceId: exampleLinkedServiceAzureSqlDatabase.ID().ToIDOutput().ToStringOutput(),
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
/// resource "azure_datafactory_factory" "example" {
///   name                = "example"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_datafactory_linkedserviceazuresqldatabase" "example" {
///   name              = "example"
///   data_factory_id   = azure_datafactory_factory.example.id
///   connection_string = "Integrated Security=False;Data Source=test;Initial Catalog=test;Initial Catalog=test;User ID=test;Password=test"
/// }
/// resource "azure_datafactory_datasetazuresqltable" "example" {
///   name              = "example"
///   data_factory_id   = azure_datafactory_factory.example.id
///   linked_service_id = azure_datafactory_linkedserviceazuresqldatabase.example.id
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
/// import com.pulumi.azure.datafactory.LinkedServiceAzureSqlDatabase;
/// import com.pulumi.azure.datafactory.LinkedServiceAzureSqlDatabaseArgs;
/// import com.pulumi.azure.datafactory.DatasetAzureSqlTable;
/// import com.pulumi.azure.datafactory.DatasetAzureSqlTableArgs;
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
///         var exampleLinkedServiceAzureSqlDatabase = new LinkedServiceAzureSqlDatabase("exampleLinkedServiceAzureSqlDatabase", LinkedServiceAzureSqlDatabaseArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .connectionString("Integrated Security=False;Data Source=test;Initial Catalog=test;Initial Catalog=test;User ID=test;Password=test")
///             .build());
///
///         var exampleDatasetAzureSqlTable = new DatasetAzureSqlTable("exampleDatasetAzureSqlTable", DatasetAzureSqlTableArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .linkedServiceId(exampleLinkedServiceAzureSqlDatabase.id())
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
///   exampleLinkedServiceAzureSqlDatabase:
///     type: azure:datafactory:LinkedServiceAzureSqlDatabase
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       connectionString: Integrated Security=False;Data Source=test;Initial Catalog=test;Initial Catalog=test;User ID=test;Password=test
///   exampleDatasetAzureSqlTable:
///     type: azure:datafactory:DatasetAzureSqlTable
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       linkedServiceId: ${exampleLinkedServiceAzureSqlDatabase.id}
/// ```
///
///
/// ## Import
///
/// Data Factory Azure SQL Table Datasets can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/datasetAzureSqlTable:DatasetAzureSqlTable example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/datasets/example
/// ```
class DatasetAzureSqlTable extends pulumi.CustomResource {
  /// A map of additional properties to associate with the Data Factory Dataset Azure SQL Table.
  late final pulumi.Output<Map<String, String>?> additionalProperties;
  /// List of tags that can be used for describing the Data Factory Dataset Azure SQL Table.
  late final pulumi.Output<List<String>?> annotations;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;
  /// The description for the Data Factory Dataset Azure SQL Table.
  late final pulumi.Output<String?> description;
  /// The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  late final pulumi.Output<String?> folder;
  /// The Data Factory Linked Service ID in which to associate the Dataset with.
  late final pulumi.Output<String> linkedServiceId;
  /// Specifies the name of the Data Factory Dataset Azure SQL Table. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;
  /// A map of parameters to associate with the Data Factory Dataset Azure SQL Table.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// The schema name of the table in the Azure SQL Database.
  late final pulumi.Output<String?> schema;
  /// A `schemaColumn` block as defined below.
  late final pulumi.Output<List<DatasetAzureSqlTableSchemaColumn>?> schemaColumns;
  /// The table name of the table in the Azure SQL Database.
  late final pulumi.Output<String?> table;

  /// Creates a new [DatasetAzureSqlTable].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatasetAzureSqlTable]. {@macro pulumi_datafactory_dataset_azure_sql_table_dataset_azure_sql_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatasetAzureSqlTable(
    String name, {
    DatasetAzureSqlTableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/datasetAzureSqlTable:DatasetAzureSqlTable',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    annotations = registerOutput<List<String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    folder = registerOutput<String?>('folder');
    linkedServiceId = registerOutput<String>('linkedServiceId');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    schema = registerOutput<String?>('schema');
    schemaColumns = registerOutput<List<DatasetAzureSqlTableSchemaColumn>?>('schemaColumns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DatasetAzureSqlTableSchemaColumn>(guardedValue, (value) => DatasetAzureSqlTableSchemaColumn.fromMap((value as Map).cast<String, dynamic>())); });
    table = registerOutput<String?>('table');
  }

  /// Gets an existing [DatasetAzureSqlTable] resource's state with the given [name] and [id].
  static DatasetAzureSqlTable get(
    String name,
    pulumi.Input<String> id, {
    DatasetAzureSqlTableState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DatasetAzureSqlTable._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DatasetAzureSqlTable._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/datasetAzureSqlTable:DatasetAzureSqlTable',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    annotations = registerOutput<List<String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    folder = registerOutput<String?>('folder');
    linkedServiceId = registerOutput<String>('linkedServiceId');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    schema = registerOutput<String?>('schema');
    schemaColumns = registerOutput<List<DatasetAzureSqlTableSchemaColumn>?>('schemaColumns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DatasetAzureSqlTableSchemaColumn>(guardedValue, (value) => DatasetAzureSqlTableSchemaColumn.fromMap((value as Map).cast<String, dynamic>())); });
    table = registerOutput<String?>('table');
  }

  /// Creates a typed reference to an existing [DatasetAzureSqlTable] resource.
  DatasetAzureSqlTable.reference(String urn)
    : super(
        'azure:datafactory/datasetAzureSqlTable:DatasetAzureSqlTable',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    annotations = registerOutput<List<String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    folder = registerOutput<String?>('folder');
    linkedServiceId = registerOutput<String>('linkedServiceId');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    schema = registerOutput<String?>('schema');
    schemaColumns = registerOutput<List<DatasetAzureSqlTableSchemaColumn>?>('schemaColumns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DatasetAzureSqlTableSchemaColumn>(guardedValue, (value) => DatasetAzureSqlTableSchemaColumn.fromMap((value as Map).cast<String, dynamic>())); });
    table = registerOutput<String?>('table');
  }
}
