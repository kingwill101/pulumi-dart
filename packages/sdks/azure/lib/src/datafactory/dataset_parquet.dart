import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_parquet_args.dart';
import 'dataset_parquet_azure_blob_fs_location.dart';
import 'dataset_parquet_azure_blob_storage_location.dart';
import 'dataset_parquet_http_server_location.dart';
import 'dataset_parquet_schema_column.dart';
import 'dataset_parquet_state.dart';

/// Manages an Azure Parquet Dataset inside an Azure Data Factory.
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
/// const exampleLinkedServiceWeb = new azure.datafactory.LinkedServiceWeb("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     authenticationType: "Anonymous",
///     url: "https://www.bing.com",
/// });
/// const exampleDatasetParquet = new azure.datafactory.DatasetParquet("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     linkedServiceName: exampleLinkedServiceWeb.name,
///     httpServerLocation: {
///         relativeUrl: "http://www.bing.com",
///         path: "foo/bar/",
///         filename: "fizz.txt",
///     },
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
/// example_linked_service_web = azure.datafactory.LinkedServiceWeb("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     authentication_type="Anonymous",
///     url="https://www.bing.com")
/// example_dataset_parquet = azure.datafactory.DatasetParquet("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     linked_service_name=example_linked_service_web.name,
///     http_server_location={
///         "relative_url": "http://www.bing.com",
///         "path": "foo/bar/",
///         "filename": "fizz.txt",
///     })
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
///     var exampleLinkedServiceWeb = new Azure.DataFactory.LinkedServiceWeb("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         AuthenticationType = "Anonymous",
///         Url = "https://www.bing.com",
///     });
///
///     var exampleDatasetParquet = new Azure.DataFactory.DatasetParquet("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         LinkedServiceName = exampleLinkedServiceWeb.Name,
///         HttpServerLocation = new Azure.DataFactory.Inputs.DatasetParquetHttpServerLocationArgs
///         {
///             RelativeUrl = "http://www.bing.com",
///             Path = "foo/bar/",
///             Filename = "fizz.txt",
///         },
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
/// 		exampleLinkedServiceWeb, err := datafactory.NewLinkedServiceWeb(ctx, "example", &datafactory.LinkedServiceWebArgs{
/// 			Name:               pulumi.String("example"),
/// 			DataFactoryId:      exampleFactory.ID().ToIDOutput().ToStringOutput(),
/// 			AuthenticationType: pulumi.String("Anonymous"),
/// 			Url:                pulumi.String("https://www.bing.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewDatasetParquet(ctx, "example", &datafactory.DatasetParquetArgs{
/// 			Name:              pulumi.String("example"),
/// 			DataFactoryId:     exampleFactory.ID().ToIDOutput().ToStringOutput(),
/// 			LinkedServiceName: exampleLinkedServiceWeb.Name,
/// 			HttpServerLocation: &datafactory.DatasetParquetHttpServerLocationArgs{
/// 				RelativeUrl: pulumi.String("http://www.bing.com"),
/// 				Path:        pulumi.String("foo/bar/"),
/// 				Filename:    pulumi.String("fizz.txt"),
/// 			},
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
/// resource "azure_datafactory_linkedserviceweb" "example" {
///   name                = "example"
///   data_factory_id     = azure_datafactory_factory.example.id
///   authentication_type = "Anonymous"
///   url                 = "https://www.bing.com"
/// }
/// resource "azure_datafactory_datasetparquet" "example" {
///   name                = "example"
///   data_factory_id     = azure_datafactory_factory.example.id
///   linked_service_name = azure_datafactory_linkedserviceweb.example.name
///   http_server_location = {
///     relative_url = "http://www.bing.com"
///     path         = "foo/bar/"
///     filename     = "fizz.txt"
///   }
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
/// import com.pulumi.azure.datafactory.LinkedServiceWeb;
/// import com.pulumi.azure.datafactory.LinkedServiceWebArgs;
/// import com.pulumi.azure.datafactory.DatasetParquet;
/// import com.pulumi.azure.datafactory.DatasetParquetArgs;
/// import com.pulumi.azure.datafactory.inputs.DatasetParquetHttpServerLocationArgs;
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
///         var exampleLinkedServiceWeb = new LinkedServiceWeb("exampleLinkedServiceWeb", LinkedServiceWebArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .authenticationType("Anonymous")
///             .url("https://www.bing.com")
///             .build());
///
///         var exampleDatasetParquet = new DatasetParquet("exampleDatasetParquet", DatasetParquetArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .linkedServiceName(exampleLinkedServiceWeb.name())
///             .httpServerLocation(DatasetParquetHttpServerLocationArgs.builder()
///                 .relativeUrl("http://www.bing.com")
///                 .path("foo/bar/")
///                 .filename("fizz.txt")
///                 .build())
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
///   exampleLinkedServiceWeb:
///     type: azure:datafactory:LinkedServiceWeb
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       authenticationType: Anonymous
///       url: https://www.bing.com
///   exampleDatasetParquet:
///     type: azure:datafactory:DatasetParquet
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       linkedServiceName: ${exampleLinkedServiceWeb.name}
///       httpServerLocation:
///         relativeUrl: http://www.bing.com
///         path: foo/bar/
///         filename: fizz.txt
/// ```
///
///
/// ## Import
///
/// Data Factory Datasets can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/datasetParquet:DatasetParquet example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/datasets/example
/// ```
class DatasetParquet extends pulumi.CustomResource {
  /// A map of additional properties to associate with the Data Factory Dataset.
  ///
  /// The following supported locations for a Parquet Dataset:
  late final pulumi.Output<Map<String, String>?> additionalProperties;
  /// List of tags that can be used for describing the Data Factory Dataset.
  late final pulumi.Output<List<String>?> annotations;
  /// A `azureBlobFsLocation` block as defined below.
  late final pulumi.Output<DatasetParquetAzureBlobFsLocation?> azureBlobFsLocation;
  /// A `azureBlobStorageLocation` block as defined below.
  ///
  /// The following supported arguments are specific to Parquet Dataset:
  late final pulumi.Output<DatasetParquetAzureBlobStorageLocation?> azureBlobStorageLocation;
  /// The compression codec used to read/write text files. Valid values are `bzip2`, `gzip`, `deflate`, `ZipDeflate`, `TarGzip`, `Tar`, `snappy`, or `lz4`. Please note these values are case-sensitive.
  late final pulumi.Output<String?> compressionCodec;
  /// Specifies the compression level. Possible values are `Optimal` and `Fastest`,
  late final pulumi.Output<String?> compressionLevel;
  /// The Data Factory ID in which to associate the Dataset with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;
  /// The description for the Data Factory Dataset.
  late final pulumi.Output<String?> description;
  /// The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  late final pulumi.Output<String?> folder;
  /// A `httpServerLocation` block as defined below.
  late final pulumi.Output<DatasetParquetHttpServerLocation?> httpServerLocation;
  /// The Data Factory Linked Service name in which to associate the Dataset with.
  late final pulumi.Output<String> linkedServiceName;
  /// Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;
  /// A map of parameters to associate with the Data Factory Dataset.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// A `schemaColumn` block as defined below.
  late final pulumi.Output<List<DatasetParquetSchemaColumn>?> schemaColumns;

  /// Creates a new [DatasetParquet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatasetParquet]. {@macro pulumi_datafactory_dataset_parquet_dataset_parquet_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatasetParquet(
    String name, {
    DatasetParquetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/datasetParquet:DatasetParquet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    annotations = registerOutput<List<String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    azureBlobFsLocation = registerOutput<DatasetParquetAzureBlobFsLocation?>('azureBlobFsLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetParquetAzureBlobFsLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureBlobStorageLocation = registerOutput<DatasetParquetAzureBlobStorageLocation?>('azureBlobStorageLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetParquetAzureBlobStorageLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    compressionCodec = registerOutput<String?>('compressionCodec');
    compressionLevel = registerOutput<String?>('compressionLevel');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    folder = registerOutput<String?>('folder');
    httpServerLocation = registerOutput<DatasetParquetHttpServerLocation?>('httpServerLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetParquetHttpServerLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    linkedServiceName = registerOutput<String>('linkedServiceName');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    schemaColumns = registerOutput<List<DatasetParquetSchemaColumn>?>('schemaColumns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DatasetParquetSchemaColumn>(guardedValue, (value) => DatasetParquetSchemaColumn.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [DatasetParquet] resource's state with the given [name] and [id].
  static DatasetParquet get(
    String name,
    pulumi.Input<String> id, {
    DatasetParquetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DatasetParquet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DatasetParquet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/datasetParquet:DatasetParquet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    annotations = registerOutput<List<String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    azureBlobFsLocation = registerOutput<DatasetParquetAzureBlobFsLocation?>('azureBlobFsLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetParquetAzureBlobFsLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureBlobStorageLocation = registerOutput<DatasetParquetAzureBlobStorageLocation?>('azureBlobStorageLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetParquetAzureBlobStorageLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    compressionCodec = registerOutput<String?>('compressionCodec');
    compressionLevel = registerOutput<String?>('compressionLevel');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    folder = registerOutput<String?>('folder');
    httpServerLocation = registerOutput<DatasetParquetHttpServerLocation?>('httpServerLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetParquetHttpServerLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    linkedServiceName = registerOutput<String>('linkedServiceName');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    schemaColumns = registerOutput<List<DatasetParquetSchemaColumn>?>('schemaColumns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DatasetParquetSchemaColumn>(guardedValue, (value) => DatasetParquetSchemaColumn.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [DatasetParquet] resource.
  DatasetParquet.reference(String urn)
    : super(
        'azure:datafactory/datasetParquet:DatasetParquet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    annotations = registerOutput<List<String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    azureBlobFsLocation = registerOutput<DatasetParquetAzureBlobFsLocation?>('azureBlobFsLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetParquetAzureBlobFsLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureBlobStorageLocation = registerOutput<DatasetParquetAzureBlobStorageLocation?>('azureBlobStorageLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetParquetAzureBlobStorageLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    compressionCodec = registerOutput<String?>('compressionCodec');
    compressionLevel = registerOutput<String?>('compressionLevel');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    folder = registerOutput<String?>('folder');
    httpServerLocation = registerOutput<DatasetParquetHttpServerLocation?>('httpServerLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetParquetHttpServerLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    linkedServiceName = registerOutput<String>('linkedServiceName');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    schemaColumns = registerOutput<List<DatasetParquetSchemaColumn>?>('schemaColumns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DatasetParquetSchemaColumn>(guardedValue, (value) => DatasetParquetSchemaColumn.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
