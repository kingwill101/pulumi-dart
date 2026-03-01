import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_snowflake_args.dart';
import 'dataset_snowflake_schema_column.dart';
import 'dataset_snowflake_state.dart';

/// Manages a Snowflake Dataset inside an Azure Data Factory.
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
/// const exampleLinkedServiceSnowflake = new azure.datafactory.LinkedServiceSnowflake("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     connectionString: "jdbc:snowflake://account.region.snowflakecomputing.com/?user=user&db=db&warehouse=wh",
/// });
/// const exampleDatasetSnowflake = new azure.datafactory.DatasetSnowflake("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     linkedServiceName: exampleLinkedServiceSnowflake.name,
///     schemaName: "foo_schema",
///     tableName: "foo_table",
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
/// example_linked_service_snowflake = azure.datafactory.LinkedServiceSnowflake("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     connection_string="jdbc:snowflake://account.region.snowflakecomputing.com/?user=user&db=db&warehouse=wh")
/// example_dataset_snowflake = azure.datafactory.DatasetSnowflake("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     linked_service_name=example_linked_service_snowflake.name,
///     schema_name="foo_schema",
///     table_name="foo_table")
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
///     var exampleLinkedServiceSnowflake = new Azure.DataFactory.LinkedServiceSnowflake("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         ConnectionString = "jdbc:snowflake://account.region.snowflakecomputing.com/?user=user&db=db&warehouse=wh",
///     });
///
///     var exampleDatasetSnowflake = new Azure.DataFactory.DatasetSnowflake("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         LinkedServiceName = exampleLinkedServiceSnowflake.Name,
///         SchemaName = "foo_schema",
///         TableName = "foo_table",
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
/// 		exampleLinkedServiceSnowflake, err := datafactory.NewLinkedServiceSnowflake(ctx, "example", &datafactory.LinkedServiceSnowflakeArgs{
/// 			Name:             pulumi.String("example"),
/// 			DataFactoryId:    exampleFactory.ID(),
/// 			ConnectionString: pulumi.String("jdbc:snowflake://account.region.snowflakecomputing.com/?user=user&db=db&warehouse=wh"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewDatasetSnowflake(ctx, "example", &datafactory.DatasetSnowflakeArgs{
/// 			Name:              pulumi.String("example"),
/// 			DataFactoryId:     exampleFactory.ID(),
/// 			LinkedServiceName: exampleLinkedServiceSnowflake.Name,
/// 			SchemaName:        pulumi.String("foo_schema"),
/// 			TableName:         pulumi.String("foo_table"),
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
/// import com.pulumi.azure.datafactory.LinkedServiceSnowflake;
/// import com.pulumi.azure.datafactory.LinkedServiceSnowflakeArgs;
/// import com.pulumi.azure.datafactory.DatasetSnowflake;
/// import com.pulumi.azure.datafactory.DatasetSnowflakeArgs;
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
///         var exampleLinkedServiceSnowflake = new LinkedServiceSnowflake("exampleLinkedServiceSnowflake", LinkedServiceSnowflakeArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .connectionString("jdbc:snowflake://account.region.snowflakecomputing.com/?user=user&db=db&warehouse=wh")
///             .build());
///
///         var exampleDatasetSnowflake = new DatasetSnowflake("exampleDatasetSnowflake", DatasetSnowflakeArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .linkedServiceName(exampleLinkedServiceSnowflake.name())
///             .schemaName("foo_schema")
///             .tableName("foo_table")
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
///   exampleLinkedServiceSnowflake:
///     type: azure:datafactory:LinkedServiceSnowflake
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       connectionString: jdbc:snowflake://account.region.snowflakecomputing.com/?user=user&db=db&warehouse=wh
///   exampleDatasetSnowflake:
///     type: azure:datafactory:DatasetSnowflake
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       linkedServiceName: ${exampleLinkedServiceSnowflake.name}
///       schemaName: foo_schema
///       tableName: foo_table
/// ```
///
///
/// ## Import
///
/// Data Factory Snowflake Datasets can be imported using the `resource id`,  e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/datasetSnowflake:DatasetSnowflake example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/datasets/example
/// ```
class DatasetSnowflake extends pulumi.CustomResource {
  /// A map of additional properties to associate with the Data Factory Dataset Snowflake.
  late final pulumi.Output<Map<String, String>?> additionalProperties;
  /// List of tags that can be used for describing the Data Factory Dataset Snowflake.
  late final pulumi.Output<List<String>?> annotations;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;
  /// The description for the Data Factory Dataset Snowflake.
  late final pulumi.Output<String?> description;
  /// The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  late final pulumi.Output<String?> folder;
  /// The Data Factory Linked Service name in which to associate the Dataset with.
  late final pulumi.Output<String> linkedServiceName;
  /// Specifies the name of the Data Factory Dataset Snowflake. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;
  /// A map of parameters to associate with the Data Factory Dataset Snowflake.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// A `schema_column` block as defined below.
  late final pulumi.Output<List<DatasetSnowflakeSchemaColumn>?> schemaColumns;
  /// The schema name of the Data Factory Dataset Snowflake.
  late final pulumi.Output<String?> schemaName;
  /// The table name of the Data Factory Dataset Snowflake.
  late final pulumi.Output<String?> tableName;

  /// Creates a new [DatasetSnowflake].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatasetSnowflake]. {@macro pulumi_datafactory_dataset_snowflake_dataset_snowflake_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatasetSnowflake(
    String name, {
    DatasetSnowflakeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/datasetSnowflake:DatasetSnowflake',
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
    this.schemaColumns = registerOutput<List<DatasetSnowflakeSchemaColumn>?>('schemaColumns');
    this.schemaName = registerOutput<String?>('schemaName');
    this.tableName = registerOutput<String?>('tableName');
  }

  /// Gets an existing [DatasetSnowflake] resource's state with the given [name] and [id].
  static DatasetSnowflake get(
    String name,
    pulumi.Input<String> id, {
    DatasetSnowflakeState? state,
  }) {
    return DatasetSnowflake._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DatasetSnowflake._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/datasetSnowflake:DatasetSnowflake',
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
    this.schemaColumns = registerOutput<List<DatasetSnowflakeSchemaColumn>?>('schemaColumns');
    this.schemaName = registerOutput<String?>('schemaName');
    this.tableName = registerOutput<String?>('tableName');
  }
}
