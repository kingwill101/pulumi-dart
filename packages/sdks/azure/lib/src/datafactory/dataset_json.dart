import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_json_args.dart';
import 'dataset_json_azure_blob_storage_location.dart';
import 'dataset_json_http_server_location.dart';
import 'dataset_json_state.dart';

/// Manages an Azure JSON Dataset inside an Azure Data Factory.
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
/// const exampleDatasetJson = new azure.datafactory.DatasetJson("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     linkedServiceName: exampleLinkedServiceWeb.name,
///     httpServerLocation: {
///         relativeUrl: "/fizz/buzz/",
///         path: "foo/bar/",
///         filename: "foo.txt",
///     },
///     encoding: "UTF-8",
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
/// example_dataset_json = azure.datafactory.DatasetJson("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     linked_service_name=example_linked_service_web.name,
///     http_server_location={
///         "relative_url": "/fizz/buzz/",
///         "path": "foo/bar/",
///         "filename": "foo.txt",
///     },
///     encoding="UTF-8")
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
///     var exampleDatasetJson = new Azure.DataFactory.DatasetJson("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         LinkedServiceName = exampleLinkedServiceWeb.Name,
///         HttpServerLocation = new Azure.DataFactory.Inputs.DatasetJsonHttpServerLocationArgs
///         {
///             RelativeUrl = "/fizz/buzz/",
///             Path = "foo/bar/",
///             Filename = "foo.txt",
///         },
///         Encoding = "UTF-8",
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
/// 			DataFactoryId:      exampleFactory.ID(),
/// 			AuthenticationType: pulumi.String("Anonymous"),
/// 			Url:                pulumi.String("https://www.bing.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewDatasetJson(ctx, "example", &datafactory.DatasetJsonArgs{
/// 			Name:              pulumi.String("example"),
/// 			DataFactoryId:     exampleFactory.ID(),
/// 			LinkedServiceName: exampleLinkedServiceWeb.Name,
/// 			HttpServerLocation: &datafactory.DatasetJsonHttpServerLocationArgs{
/// 				RelativeUrl: pulumi.String("/fizz/buzz/"),
/// 				Path:        pulumi.String("foo/bar/"),
/// 				Filename:    pulumi.String("foo.txt"),
/// 			},
/// 			Encoding: pulumi.String("UTF-8"),
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
/// import com.pulumi.azure.datafactory.LinkedServiceWeb;
/// import com.pulumi.azure.datafactory.LinkedServiceWebArgs;
/// import com.pulumi.azure.datafactory.DatasetJson;
/// import com.pulumi.azure.datafactory.DatasetJsonArgs;
/// import com.pulumi.azure.datafactory.inputs.DatasetJsonHttpServerLocationArgs;
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
///         var exampleLinkedServiceWeb = new LinkedServiceWeb("exampleLinkedServiceWeb", LinkedServiceWebArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .authenticationType("Anonymous")
///             .url("https://www.bing.com")
///             .build());
///
///         var exampleDatasetJson = new DatasetJson("exampleDatasetJson", DatasetJsonArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .linkedServiceName(exampleLinkedServiceWeb.name())
///             .httpServerLocation(DatasetJsonHttpServerLocationArgs.builder()
///                 .relativeUrl("/fizz/buzz/")
///                 .path("foo/bar/")
///                 .filename("foo.txt")
///                 .build())
///             .encoding("UTF-8")
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
///   exampleDatasetJson:
///     type: azure:datafactory:DatasetJson
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       linkedServiceName: ${exampleLinkedServiceWeb.name}
///       httpServerLocation:
///         relativeUrl: /fizz/buzz/
///         path: foo/bar/
///         filename: foo.txt
///       encoding: UTF-8
/// ```
///
///
/// ## Import
///
/// Data Factory Datasets can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/datasetJson:DatasetJson example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/datasets/example
/// ```
class DatasetJson extends pulumi.CustomResource {
  /// A map of additional properties to associate with the Data Factory Dataset.
  ///
  /// The following supported arguments are specific to JSON Dataset:
  late final pulumi.Output<Map<String, String>?> additionalProperties;

  /// List of tags that can be used for describing the Data Factory Dataset.
  late final pulumi.Output<List<String>?> annotations;

  /// A `azure_blob_storage_location` block as defined below.
  ///
  /// The following supported arguments are specific to Delimited Text Dataset:
  late final pulumi.Output<DatasetJsonAzureBlobStorageLocation?>
  azureBlobStorageLocation;

  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;

  /// The description for the Data Factory Dataset.
  late final pulumi.Output<String?> description;

  /// The encoding format for the file.
  late final pulumi.Output<String?> encoding;

  /// The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  late final pulumi.Output<String?> folder;

  /// A `http_server_location` block as defined below.
  late final pulumi.Output<DatasetJsonHttpServerLocation?> httpServerLocation;

  /// The Data Factory Linked Service name in which to associate the Dataset with.
  late final pulumi.Output<String> linkedServiceName;

  /// Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;

  /// A map of parameters to associate with the Data Factory Dataset.
  late final pulumi.Output<Map<String, String>?> parameters;

  /// A `schema_column` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> schemaColumns;

  /// Creates a new [DatasetJson].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatasetJson]. {@macro pulumi_datafactory_dataset_json_dataset_json_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatasetJson(
    String name, {
    DatasetJsonArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:datafactory/datasetJson:DatasetJson',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    additionalProperties = registerOutput<Map<String, String>?>(
      'additionalProperties',
    );
    annotations = registerOutput<List<String>?>('annotations');
    azureBlobStorageLocation =
        registerOutput<DatasetJsonAzureBlobStorageLocation?>(
          'azureBlobStorageLocation',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return DatasetJsonAzureBlobStorageLocation.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    encoding = registerOutput<String?>('encoding');
    folder = registerOutput<String?>('folder');
    httpServerLocation = registerOutput<DatasetJsonHttpServerLocation?>(
      'httpServerLocation',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DatasetJsonHttpServerLocation.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    linkedServiceName = registerOutput<String>('linkedServiceName');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters');
    schemaColumns = registerOutput<List<Map<String, dynamic>>?>(
      'schemaColumns',
    );
  }

  /// Gets an existing [DatasetJson] resource's state with the given [name] and [id].
  static DatasetJson get(
    String name,
    pulumi.Input<String> id, {
    DatasetJsonState? state,
  }) {
    return DatasetJson._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DatasetJson._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:datafactory/datasetJson:DatasetJson',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    additionalProperties = registerOutput<Map<String, String>?>(
      'additionalProperties',
    );
    annotations = registerOutput<List<String>?>('annotations');
    azureBlobStorageLocation =
        registerOutput<DatasetJsonAzureBlobStorageLocation?>(
          'azureBlobStorageLocation',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return DatasetJsonAzureBlobStorageLocation.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    encoding = registerOutput<String?>('encoding');
    folder = registerOutput<String?>('folder');
    httpServerLocation = registerOutput<DatasetJsonHttpServerLocation?>(
      'httpServerLocation',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DatasetJsonHttpServerLocation.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    linkedServiceName = registerOutput<String>('linkedServiceName');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters');
    schemaColumns = registerOutput<List<Map<String, dynamic>>?>(
      'schemaColumns',
    );
  }
}
