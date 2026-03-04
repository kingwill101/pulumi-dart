import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_sql_server_table_args.dart';
import 'dataset_sql_server_table_state.dart';

/// Manages a SQL Server Table Dataset inside a Azure Data Factory.
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
/// const exampleLinkedServiceSqlServer = new azure.datafactory.LinkedServiceSqlServer("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     connectionString: "Integrated Security=False;Data Source=test;Initial Catalog=test;User ID=test;Password=test",
/// });
/// const exampleDatasetSqlServerTable = new azure.datafactory.DatasetSqlServerTable("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     linkedServiceName: exampleLinkedServiceSqlServer.name,
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
/// example_linked_service_sql_server = azure.datafactory.LinkedServiceSqlServer("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     connection_string="Integrated Security=False;Data Source=test;Initial Catalog=test;User ID=test;Password=test")
/// example_dataset_sql_server_table = azure.datafactory.DatasetSqlServerTable("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     linked_service_name=example_linked_service_sql_server.name)
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
///     var exampleLinkedServiceSqlServer = new Azure.DataFactory.LinkedServiceSqlServer("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         ConnectionString = "Integrated Security=False;Data Source=test;Initial Catalog=test;User ID=test;Password=test",
///     });
///
///     var exampleDatasetSqlServerTable = new Azure.DataFactory.DatasetSqlServerTable("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         LinkedServiceName = exampleLinkedServiceSqlServer.Name,
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
/// 		exampleLinkedServiceSqlServer, err := datafactory.NewLinkedServiceSqlServer(ctx, "example", &datafactory.LinkedServiceSqlServerArgs{
/// 			Name:             pulumi.String("example"),
/// 			DataFactoryId:    exampleFactory.ID(),
/// 			ConnectionString: pulumi.String("Integrated Security=False;Data Source=test;Initial Catalog=test;User ID=test;Password=test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewDatasetSqlServerTable(ctx, "example", &datafactory.DatasetSqlServerTableArgs{
/// 			Name:              pulumi.String("example"),
/// 			DataFactoryId:     exampleFactory.ID(),
/// 			LinkedServiceName: exampleLinkedServiceSqlServer.Name,
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
/// import com.pulumi.azure.datafactory.LinkedServiceSqlServer;
/// import com.pulumi.azure.datafactory.LinkedServiceSqlServerArgs;
/// import com.pulumi.azure.datafactory.DatasetSqlServerTable;
/// import com.pulumi.azure.datafactory.DatasetSqlServerTableArgs;
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
///         var exampleLinkedServiceSqlServer = new LinkedServiceSqlServer("exampleLinkedServiceSqlServer", LinkedServiceSqlServerArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .connectionString("Integrated Security=False;Data Source=test;Initial Catalog=test;User ID=test;Password=test")
///             .build());
///
///         var exampleDatasetSqlServerTable = new DatasetSqlServerTable("exampleDatasetSqlServerTable", DatasetSqlServerTableArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .linkedServiceName(exampleLinkedServiceSqlServer.name())
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
///   exampleLinkedServiceSqlServer:
///     type: azure:datafactory:LinkedServiceSqlServer
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       connectionString: Integrated Security=False;Data Source=test;Initial Catalog=test;User ID=test;Password=test
///   exampleDatasetSqlServerTable:
///     type: azure:datafactory:DatasetSqlServerTable
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       linkedServiceName: ${exampleLinkedServiceSqlServer.name}
/// ```
///
///
/// ## Import
///
/// Data Factory SQL Server Table Datasets can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/datasetSqlServerTable:DatasetSqlServerTable example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/datasets/example
/// ```
class DatasetSqlServerTable extends pulumi.CustomResource {
  /// A map of additional properties to associate with the Data Factory Dataset SQL Server Table.
  late final pulumi.Output<Map<String, String>?> additionalProperties;

  /// List of tags that can be used for describing the Data Factory Dataset SQL Server Table.
  late final pulumi.Output<List<String>?> annotations;

  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;

  /// The description for the Data Factory Dataset SQL Server Table.
  late final pulumi.Output<String?> description;

  /// The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  late final pulumi.Output<String?> folder;

  /// The Data Factory Linked Service name in which to associate the Dataset with.
  late final pulumi.Output<String> linkedServiceName;

  /// Specifies the name of the Data Factory Dataset SQL Server Table. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;

  /// A map of parameters to associate with the Data Factory Dataset SQL Server Table.
  late final pulumi.Output<Map<String, String>?> parameters;

  /// A `schema_column` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> schemaColumns;

  /// The table name of the Data Factory Dataset SQL Server Table.
  late final pulumi.Output<String?> tableName;

  /// Creates a new [DatasetSqlServerTable].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatasetSqlServerTable]. {@macro pulumi_datafactory_dataset_sql_server_table_dataset_sql_server_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatasetSqlServerTable(
    String name, {
    DatasetSqlServerTableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:datafactory/datasetSqlServerTable:DatasetSqlServerTable',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    additionalProperties = registerOutput<Map<String, String>?>(
      'additionalProperties',
    );
    annotations = registerOutput<List<String>?>('annotations');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    folder = registerOutput<String?>('folder');
    linkedServiceName = registerOutput<String>('linkedServiceName');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters');
    schemaColumns = registerOutput<List<Map<String, dynamic>>?>(
      'schemaColumns',
    );
    tableName = registerOutput<String?>('tableName');
  }

  /// Gets an existing [DatasetSqlServerTable] resource's state with the given [name] and [id].
  static DatasetSqlServerTable get(
    String name,
    pulumi.Input<String> id, {
    DatasetSqlServerTableState? state,
  }) {
    return DatasetSqlServerTable._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DatasetSqlServerTable._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:datafactory/datasetSqlServerTable:DatasetSqlServerTable',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    additionalProperties = registerOutput<Map<String, String>?>(
      'additionalProperties',
    );
    annotations = registerOutput<List<String>?>('annotations');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    folder = registerOutput<String?>('folder');
    linkedServiceName = registerOutput<String>('linkedServiceName');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters');
    schemaColumns = registerOutput<List<Map<String, dynamic>>?>(
      'schemaColumns',
    );
    tableName = registerOutput<String?>('tableName');
  }
}
