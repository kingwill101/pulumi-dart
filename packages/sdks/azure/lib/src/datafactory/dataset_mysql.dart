import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_mysql_args.dart';
import 'dataset_mysql_schema_column.dart';
import 'dataset_mysql_state.dart';

/// Manages a MySQL Dataset inside a Azure Data Factory.
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
/// const exampleLinkedServiceMysql = new azure.datafactory.LinkedServiceMysql("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     connectionString: "Server=test;Port=3306;Database=test;User=test;SSLMode=1;UseSystemTrustStore=0;Password=test",
/// });
/// const exampleDatasetMysql = new azure.datafactory.DatasetMysql("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     linkedServiceName: exampleLinkedServiceMysql.name,
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
/// example_linked_service_mysql = azure.datafactory.LinkedServiceMysql("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     connection_string="Server=test;Port=3306;Database=test;User=test;SSLMode=1;UseSystemTrustStore=0;Password=test")
/// example_dataset_mysql = azure.datafactory.DatasetMysql("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     linked_service_name=example_linked_service_mysql.name)
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
///     var exampleLinkedServiceMysql = new Azure.DataFactory.LinkedServiceMysql("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         ConnectionString = "Server=test;Port=3306;Database=test;User=test;SSLMode=1;UseSystemTrustStore=0;Password=test",
///     });
///
///     var exampleDatasetMysql = new Azure.DataFactory.DatasetMysql("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         LinkedServiceName = exampleLinkedServiceMysql.Name,
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
/// 		exampleLinkedServiceMysql, err := datafactory.NewLinkedServiceMysql(ctx, "example", &datafactory.LinkedServiceMysqlArgs{
/// 			Name:             pulumi.String("example"),
/// 			DataFactoryId:    exampleFactory.ID().ToIDOutput().ToStringOutput(),
/// 			ConnectionString: pulumi.String("Server=test;Port=3306;Database=test;User=test;SSLMode=1;UseSystemTrustStore=0;Password=test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewDatasetMysql(ctx, "example", &datafactory.DatasetMysqlArgs{
/// 			Name:              pulumi.String("example"),
/// 			DataFactoryId:     exampleFactory.ID().ToIDOutput().ToStringOutput(),
/// 			LinkedServiceName: exampleLinkedServiceMysql.Name,
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
/// resource "azure_datafactory_linkedservicemysql" "example" {
///   name              = "example"
///   data_factory_id   = azure_datafactory_factory.example.id
///   connection_string = "Server=test;Port=3306;Database=test;User=test;SSLMode=1;UseSystemTrustStore=0;Password=test"
/// }
/// resource "azure_datafactory_datasetmysql" "example" {
///   name                = "example"
///   data_factory_id     = azure_datafactory_factory.example.id
///   linked_service_name = azure_datafactory_linkedservicemysql.example.name
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
/// import com.pulumi.azure.datafactory.LinkedServiceMysql;
/// import com.pulumi.azure.datafactory.LinkedServiceMysqlArgs;
/// import com.pulumi.azure.datafactory.DatasetMysql;
/// import com.pulumi.azure.datafactory.DatasetMysqlArgs;
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
///         var exampleLinkedServiceMysql = new LinkedServiceMysql("exampleLinkedServiceMysql", LinkedServiceMysqlArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .connectionString("Server=test;Port=3306;Database=test;User=test;SSLMode=1;UseSystemTrustStore=0;Password=test")
///             .build());
///
///         var exampleDatasetMysql = new DatasetMysql("exampleDatasetMysql", DatasetMysqlArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .linkedServiceName(exampleLinkedServiceMysql.name())
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
///   exampleLinkedServiceMysql:
///     type: azure:datafactory:LinkedServiceMysql
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       connectionString: Server=test;Port=3306;Database=test;User=test;SSLMode=1;UseSystemTrustStore=0;Password=test
///   exampleDatasetMysql:
///     type: azure:datafactory:DatasetMysql
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       linkedServiceName: ${exampleLinkedServiceMysql.name}
/// ```
///
///
/// ## Import
///
/// Data Factory MySQL Datasets can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/datasetMysql:DatasetMysql example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/datasets/example
/// ```
class DatasetMysql extends pulumi.CustomResource {
  /// A map of additional properties to associate with the Data Factory Dataset MySQL.
  ///
  /// The following supported arguments are specific to MySQL Dataset:
  late final pulumi.Output<Map<String, String>?> additionalProperties;
  /// List of tags that can be used for describing the Data Factory Dataset MySQL.
  late final pulumi.Output<List<String>?> annotations;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;
  /// The description for the Data Factory Dataset MySQL.
  late final pulumi.Output<String?> description;
  /// The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  late final pulumi.Output<String?> folder;
  /// The Data Factory Linked Service name in which to associate the Dataset with.
  late final pulumi.Output<String> linkedServiceName;
  /// Specifies the name of the Data Factory Dataset MySQL. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;
  /// A map of parameters to associate with the Data Factory Dataset MySQL.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// A `schemaColumn` block as defined below.
  late final pulumi.Output<List<DatasetMysqlSchemaColumn>?> schemaColumns;
  /// The table name of the Data Factory Dataset MySQL.
  late final pulumi.Output<String?> tableName;

  /// Creates a new [DatasetMysql].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatasetMysql]. {@macro pulumi_datafactory_dataset_mysql_dataset_mysql_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatasetMysql(
    String name, {
    DatasetMysqlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/datasetMysql:DatasetMysql',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    annotations = registerOutput<List<String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    folder = registerOutput<String?>('folder');
    linkedServiceName = registerOutput<String>('linkedServiceName');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    schemaColumns = registerOutput<List<DatasetMysqlSchemaColumn>?>('schemaColumns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DatasetMysqlSchemaColumn>(guardedValue, (value) => DatasetMysqlSchemaColumn.fromMap((value as Map).cast<String, dynamic>())); });
    tableName = registerOutput<String?>('tableName');
  }

  /// Gets an existing [DatasetMysql] resource's state with the given [name] and [id].
  static DatasetMysql get(
    String name,
    pulumi.Input<String> id, {
    DatasetMysqlState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DatasetMysql._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DatasetMysql._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/datasetMysql:DatasetMysql',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    annotations = registerOutput<List<String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    folder = registerOutput<String?>('folder');
    linkedServiceName = registerOutput<String>('linkedServiceName');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    schemaColumns = registerOutput<List<DatasetMysqlSchemaColumn>?>('schemaColumns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DatasetMysqlSchemaColumn>(guardedValue, (value) => DatasetMysqlSchemaColumn.fromMap((value as Map).cast<String, dynamic>())); });
    tableName = registerOutput<String?>('tableName');
  }

  /// Creates a typed reference to an existing [DatasetMysql] resource.
  DatasetMysql.reference(String urn)
    : super(
        'azure:datafactory/datasetMysql:DatasetMysql',
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
    linkedServiceName = registerOutput<String>('linkedServiceName');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    schemaColumns = registerOutput<List<DatasetMysqlSchemaColumn>?>('schemaColumns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DatasetMysqlSchemaColumn>(guardedValue, (value) => DatasetMysqlSchemaColumn.fromMap((value as Map).cast<String, dynamic>())); });
    tableName = registerOutput<String?>('tableName');
  }
}
