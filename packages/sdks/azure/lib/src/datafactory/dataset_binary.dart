import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_binary_args.dart';
import 'dataset_binary_azure_blob_storage_location.dart';
import 'dataset_binary_compression.dart';
import 'dataset_binary_http_server_location.dart';
import 'dataset_binary_sftp_server_location.dart';
import 'dataset_binary_state.dart';

/// Manages a Data Factory Binary Dataset inside an Azure Data Factory.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example",
///     location: "West Europe",
/// });
/// const exampleFactory = new azure.datafactory.Factory("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleLinkedServiceSftp = new azure.datafactory.LinkedServiceSftp("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     authenticationType: "Basic",
///     host: "http://www.bing.com",
///     port: 22,
///     username: "foo",
///     password: "bar",
/// });
/// const exampleDatasetBinary = new azure.datafactory.DatasetBinary("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     linkedServiceName: exampleLinkedServiceSftp.name,
///     sftpServerLocation: {
///         path: "/test/",
///         filename: "**",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example",
///     location="West Europe")
/// example_factory = azure.datafactory.Factory("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name)
/// example_linked_service_sftp = azure.datafactory.LinkedServiceSftp("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     authentication_type="Basic",
///     host="http://www.bing.com",
///     port=22,
///     username="foo",
///     password="bar")
/// example_dataset_binary = azure.datafactory.DatasetBinary("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     linked_service_name=example_linked_service_sftp.name,
///     sftp_server_location={
///         "path": "/test/",
///         "filename": "**",
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
///         Name = "example",
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
///     var exampleLinkedServiceSftp = new Azure.DataFactory.LinkedServiceSftp("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         AuthenticationType = "Basic",
///         Host = "http://www.bing.com",
///         Port = 22,
///         Username = "foo",
///         Password = "bar",
///     });
///
///     var exampleDatasetBinary = new Azure.DataFactory.DatasetBinary("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         LinkedServiceName = exampleLinkedServiceSftp.Name,
///         SftpServerLocation = new Azure.DataFactory.Inputs.DatasetBinarySftpServerLocationArgs
///         {
///             Path = "/test/",
///             Filename = "**",
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
/// 			Name:     pulumi.String("example"),
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
/// 		exampleLinkedServiceSftp, err := datafactory.NewLinkedServiceSftp(ctx, "example", &datafactory.LinkedServiceSftpArgs{
/// 			Name:               pulumi.String("example"),
/// 			DataFactoryId:      exampleFactory.ID(),
/// 			AuthenticationType: pulumi.String("Basic"),
/// 			Host:               pulumi.String("http://www.bing.com"),
/// 			Port:               pulumi.Int(22),
/// 			Username:           pulumi.String("foo"),
/// 			Password:           pulumi.String("bar"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewDatasetBinary(ctx, "example", &datafactory.DatasetBinaryArgs{
/// 			Name:              pulumi.String("example"),
/// 			DataFactoryId:     exampleFactory.ID(),
/// 			LinkedServiceName: exampleLinkedServiceSftp.Name,
/// 			SftpServerLocation: &datafactory.DatasetBinarySftpServerLocationArgs{
/// 				Path:     pulumi.String("/test/"),
/// 				Filename: pulumi.String("**"),
/// 			},
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
/// import com.pulumi.azure.datafactory.LinkedServiceSftp;
/// import com.pulumi.azure.datafactory.LinkedServiceSftpArgs;
/// import com.pulumi.azure.datafactory.DatasetBinary;
/// import com.pulumi.azure.datafactory.DatasetBinaryArgs;
/// import com.pulumi.azure.datafactory.inputs.DatasetBinarySftpServerLocationArgs;
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
///             .name("example")
///             .location("West Europe")
///             .build());
///
///         var exampleFactory = new Factory("exampleFactory", FactoryArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleLinkedServiceSftp = new LinkedServiceSftp("exampleLinkedServiceSftp", LinkedServiceSftpArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .authenticationType("Basic")
///             .host("http://www.bing.com")
///             .port(22)
///             .username("foo")
///             .password("bar")
///             .build());
///
///         var exampleDatasetBinary = new DatasetBinary("exampleDatasetBinary", DatasetBinaryArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .linkedServiceName(exampleLinkedServiceSftp.name())
///             .sftpServerLocation(DatasetBinarySftpServerLocationArgs.builder()
///                 .path("/test/")
///                 .filename("**")
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
///       name: example
///       location: West Europe
///   exampleFactory:
///     type: azure:datafactory:Factory
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleLinkedServiceSftp:
///     type: azure:datafactory:LinkedServiceSftp
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       authenticationType: Basic
///       host: http://www.bing.com
///       port: 22
///       username: foo
///       password: bar
///   exampleDatasetBinary:
///     type: azure:datafactory:DatasetBinary
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       linkedServiceName: ${exampleLinkedServiceSftp.name}
///       sftpServerLocation:
///         path: /test/
///         filename: '**'
/// ```
///
///
/// ## Import
///
/// Data Factory Binary Datasets can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/datasetBinary:DatasetBinary example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/datasets/example
/// ```
class DatasetBinary extends pulumi.CustomResource {
  /// A map of additional properties to associate with the Data Factory Binary Dataset.
  late final pulumi.Output<Map<String, String>?> additionalProperties;
  /// List of tags that can be used for describing the Data Factory Binary Dataset.
  late final pulumi.Output<List<String>?> annotations;
  /// A `azure_blob_storage_location` block as defined below.
  late final pulumi.Output<DatasetBinaryAzureBlobStorageLocation?> azureBlobStorageLocation;
  /// A `compression` block as defined below.
  late final pulumi.Output<DatasetBinaryCompression?> compression;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;
  /// The description for the Data Factory Dataset.
  late final pulumi.Output<String?> description;
  /// The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  late final pulumi.Output<String?> folder;
  /// A `http_server_location` block as defined below.
  late final pulumi.Output<DatasetBinaryHttpServerLocation?> httpServerLocation;
  /// The Data Factory Linked Service name in which to associate the Binary Dataset with.
  late final pulumi.Output<String> linkedServiceName;
  /// Specifies the name of the Data Factory Binary Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;
  /// Specifies a list of parameters to associate with the Data Factory Binary Dataset.
  ///
  /// The following supported locations for a Binary Dataset. One of these should be specified:
  late final pulumi.Output<Map<String, String>?> parameters;
  /// A `sftp_server_location` block as defined below.
  late final pulumi.Output<DatasetBinarySftpServerLocation?> sftpServerLocation;

  /// Creates a new [DatasetBinary].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatasetBinary]. {@macro pulumi_datafactory_dataset_binary_dataset_binary_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatasetBinary(
    String name, {
    DatasetBinaryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/datasetBinary:DatasetBinary',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    annotations = registerOutput<List<String>?>('annotations');
    azureBlobStorageLocation = registerOutput<DatasetBinaryAzureBlobStorageLocation?>('azureBlobStorageLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetBinaryAzureBlobStorageLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    compression = registerOutput<DatasetBinaryCompression?>('compression', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetBinaryCompression.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    folder = registerOutput<String?>('folder');
    httpServerLocation = registerOutput<DatasetBinaryHttpServerLocation?>('httpServerLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetBinaryHttpServerLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    linkedServiceName = registerOutput<String>('linkedServiceName');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters');
    sftpServerLocation = registerOutput<DatasetBinarySftpServerLocation?>('sftpServerLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetBinarySftpServerLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [DatasetBinary] resource's state with the given [name] and [id].
  static DatasetBinary get(
    String name,
    pulumi.Input<String> id, {
    DatasetBinaryState? state,
  }) {
    return DatasetBinary._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DatasetBinary._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/datasetBinary:DatasetBinary',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    annotations = registerOutput<List<String>?>('annotations');
    azureBlobStorageLocation = registerOutput<DatasetBinaryAzureBlobStorageLocation?>('azureBlobStorageLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetBinaryAzureBlobStorageLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    compression = registerOutput<DatasetBinaryCompression?>('compression', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetBinaryCompression.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    folder = registerOutput<String?>('folder');
    httpServerLocation = registerOutput<DatasetBinaryHttpServerLocation?>('httpServerLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetBinaryHttpServerLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    linkedServiceName = registerOutput<String>('linkedServiceName');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters');
    sftpServerLocation = registerOutput<DatasetBinarySftpServerLocation?>('sftpServerLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetBinarySftpServerLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
