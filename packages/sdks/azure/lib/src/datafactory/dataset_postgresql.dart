import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_postgresql_args.dart';
import 'dataset_postgresql_schema_column.dart';
import 'dataset_postgresql_state.dart';

/// Manages a PostgreSQL Dataset inside a Azure Data Factory.
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
/// const exampleLinkedServicePostgresql = new azure.datafactory.LinkedServicePostgresql("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     connectionString: "Host=example;Port=5432;Database=example;UID=example;EncryptionMethod=0;Password=example",
/// });
/// const exampleDatasetPostgresql = new azure.datafactory.DatasetPostgresql("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     linkedServiceName: exampleLinkedServicePostgresql.name,
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
/// example_linked_service_postgresql = azure.datafactory.LinkedServicePostgresql("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     connection_string="Host=example;Port=5432;Database=example;UID=example;EncryptionMethod=0;Password=example")
/// example_dataset_postgresql = azure.datafactory.DatasetPostgresql("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     linked_service_name=example_linked_service_postgresql.name)
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
///     var exampleLinkedServicePostgresql = new Azure.DataFactory.LinkedServicePostgresql("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         ConnectionString = "Host=example;Port=5432;Database=example;UID=example;EncryptionMethod=0;Password=example",
///     });
///
///     var exampleDatasetPostgresql = new Azure.DataFactory.DatasetPostgresql("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         LinkedServiceName = exampleLinkedServicePostgresql.Name,
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
/// 		exampleLinkedServicePostgresql, err := datafactory.NewLinkedServicePostgresql(ctx, "example", &datafactory.LinkedServicePostgresqlArgs{
/// 			Name:             pulumi.String("example"),
/// 			DataFactoryId:    exampleFactory.ID(),
/// 			ConnectionString: pulumi.String("Host=example;Port=5432;Database=example;UID=example;EncryptionMethod=0;Password=example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewDatasetPostgresql(ctx, "example", &datafactory.DatasetPostgresqlArgs{
/// 			Name:              pulumi.String("example"),
/// 			DataFactoryId:     exampleFactory.ID(),
/// 			LinkedServiceName: exampleLinkedServicePostgresql.Name,
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
/// import com.pulumi.azure.datafactory.LinkedServicePostgresql;
/// import com.pulumi.azure.datafactory.LinkedServicePostgresqlArgs;
/// import com.pulumi.azure.datafactory.DatasetPostgresql;
/// import com.pulumi.azure.datafactory.DatasetPostgresqlArgs;
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
///         var exampleLinkedServicePostgresql = new LinkedServicePostgresql("exampleLinkedServicePostgresql", LinkedServicePostgresqlArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .connectionString("Host=example;Port=5432;Database=example;UID=example;EncryptionMethod=0;Password=example")
///             .build());
///
///         var exampleDatasetPostgresql = new DatasetPostgresql("exampleDatasetPostgresql", DatasetPostgresqlArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .linkedServiceName(exampleLinkedServicePostgresql.name())
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
///   exampleLinkedServicePostgresql:
///     type: azure:datafactory:LinkedServicePostgresql
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       connectionString: Host=example;Port=5432;Database=example;UID=example;EncryptionMethod=0;Password=example
///   exampleDatasetPostgresql:
///     type: azure:datafactory:DatasetPostgresql
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       linkedServiceName: ${exampleLinkedServicePostgresql.name}
/// ```
///
///
/// ## Import
///
/// Data Factory PostgreSQL Datasets can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/datasetPostgresql:DatasetPostgresql example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/datasets/example
/// ```
class DatasetPostgresql extends pulumi.CustomResource {
  /// A map of additional properties to associate with the Data Factory Dataset PostgreSQL.
  late final pulumi.Output<Map<String, String>?> additionalProperties;
  /// List of tags that can be used for describing the Data Factory Dataset PostgreSQL.
  late final pulumi.Output<List<String>?> annotations;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;
  /// The description for the Data Factory Dataset PostgreSQL.
  late final pulumi.Output<String?> description;
  /// The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  late final pulumi.Output<String?> folder;
  /// The Data Factory Linked Service name in which to associate the Dataset with.
  late final pulumi.Output<String> linkedServiceName;
  /// Specifies the name of the Data Factory Dataset PostgreSQL. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;
  /// A map of parameters to associate with the Data Factory Dataset PostgreSQL.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// A `schema_column` block as defined below.
  late final pulumi.Output<List<DatasetPostgresqlSchemaColumn>?> schemaColumns;
  /// The table name of the Data Factory Dataset PostgreSQL.
  late final pulumi.Output<String?> tableName;

  /// Creates a new [DatasetPostgresql].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatasetPostgresql]. {@macro pulumi_datafactory_dataset_postgresql_dataset_postgresql_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatasetPostgresql(
    String name, {
    DatasetPostgresqlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/datasetPostgresql:DatasetPostgresql',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    this.annotations = registerOutput<List<String>?>('annotations');
    this.dataFactoryId = registerOutput<String>('dataFactoryId');
    this.description = registerOutput<String?>('description');
    this.folder = registerOutput<String?>('folder');
    this.linkedServiceName = registerOutput<String>('linkedServiceName');
    this.name = registerOutput<String>('name');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
    this.schemaColumns = registerOutput<List<DatasetPostgresqlSchemaColumn>?>('schemaColumns');
    this.tableName = registerOutput<String?>('tableName');
  }

  /// Gets an existing [DatasetPostgresql] resource's state with the given [name] and [id].
  static DatasetPostgresql get(
    String name,
    pulumi.Input<String> id, {
    DatasetPostgresqlState? state,
  }) {
    return DatasetPostgresql._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DatasetPostgresql._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/datasetPostgresql:DatasetPostgresql',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    this.annotations = registerOutput<List<String>?>('annotations');
    this.dataFactoryId = registerOutput<String>('dataFactoryId');
    this.description = registerOutput<String?>('description');
    this.folder = registerOutput<String?>('folder');
    this.linkedServiceName = registerOutput<String>('linkedServiceName');
    this.name = registerOutput<String>('name');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
    this.schemaColumns = registerOutput<List<DatasetPostgresqlSchemaColumn>?>('schemaColumns');
    this.tableName = registerOutput<String?>('tableName');
  }
}
