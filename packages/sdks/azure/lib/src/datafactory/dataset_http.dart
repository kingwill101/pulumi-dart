import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_http_args.dart';
import 'dataset_http_schema_column.dart';
import 'dataset_http_state.dart';

/// Manages an Azure HTTP Dataset inside an Azure Data Factory.
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
/// const exampleDatasetHttp = new azure.datafactory.DatasetHttp("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     linkedServiceName: exampleLinkedServiceWeb.name,
///     relativeUrl: "http://www.bing.com",
///     requestBody: "foo=bar",
///     requestMethod: "POST",
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
/// example_dataset_http = azure.datafactory.DatasetHttp("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     linked_service_name=example_linked_service_web.name,
///     relative_url="http://www.bing.com",
///     request_body="foo=bar",
///     request_method="POST")
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
///     var exampleDatasetHttp = new Azure.DataFactory.DatasetHttp("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         LinkedServiceName = exampleLinkedServiceWeb.Name,
///         RelativeUrl = "http://www.bing.com",
///         RequestBody = "foo=bar",
///         RequestMethod = "POST",
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
/// 		_, err = datafactory.NewDatasetHttp(ctx, "example", &datafactory.DatasetHttpArgs{
/// 			Name:              pulumi.String("example"),
/// 			DataFactoryId:     exampleFactory.ID(),
/// 			LinkedServiceName: exampleLinkedServiceWeb.Name,
/// 			RelativeUrl:       pulumi.String("http://www.bing.com"),
/// 			RequestBody:       pulumi.String("foo=bar"),
/// 			RequestMethod:     pulumi.String("POST"),
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
/// import com.pulumi.azure.datafactory.DatasetHttp;
/// import com.pulumi.azure.datafactory.DatasetHttpArgs;
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
///         var exampleDatasetHttp = new DatasetHttp("exampleDatasetHttp", DatasetHttpArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .linkedServiceName(exampleLinkedServiceWeb.name())
///             .relativeUrl("http://www.bing.com")
///             .requestBody("foo=bar")
///             .requestMethod("POST")
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
///   exampleDatasetHttp:
///     type: azure:datafactory:DatasetHttp
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       linkedServiceName: ${exampleLinkedServiceWeb.name}
///       relativeUrl: http://www.bing.com
///       requestBody: foo=bar
///       requestMethod: POST
/// ```
///
///
/// ## Import
///
/// Data Factory Datasets can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/datasetHttp:DatasetHttp example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/datasets/example
/// ```
class DatasetHttp extends pulumi.CustomResource {
  /// A map of additional properties to associate with the Data Factory Dataset.
  ///
  /// The following supported arguments are specific to HTTP Dataset:
  late final pulumi.Output<Map<String, String>?> additionalProperties;
  /// List of tags that can be used for describing the Data Factory Dataset.
  late final pulumi.Output<List<String>?> annotations;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;
  /// The description for the Data Factory Dataset.
  late final pulumi.Output<String?> description;
  /// The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  late final pulumi.Output<String?> folder;
  /// The Data Factory Linked Service name in which to associate the Dataset with.
  late final pulumi.Output<String> linkedServiceName;
  /// Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;
  /// A map of parameters to associate with the Data Factory Dataset.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// The relative URL based on the URL in the HTTP Linked Service.
  late final pulumi.Output<String?> relativeUrl;
  /// The body for the HTTP request.
  late final pulumi.Output<String?> requestBody;
  /// The HTTP method for the HTTP request. (e.g. GET, POST)
  late final pulumi.Output<String?> requestMethod;
  /// A `schema_column` block as defined below.
  late final pulumi.Output<List<DatasetHttpSchemaColumn>?> schemaColumns;

  /// Creates a new [DatasetHttp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatasetHttp]. {@macro pulumi_datafactory_dataset_http_dataset_http_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatasetHttp(
    String name, {
    DatasetHttpArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/datasetHttp:DatasetHttp',
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
    this.relativeUrl = registerOutput<String?>('relativeUrl');
    this.requestBody = registerOutput<String?>('requestBody');
    this.requestMethod = registerOutput<String?>('requestMethod');
    this.schemaColumns = registerOutput<List<DatasetHttpSchemaColumn>?>('schemaColumns');
  }

  /// Gets an existing [DatasetHttp] resource's state with the given [name] and [id].
  static DatasetHttp get(
    String name,
    pulumi.Input<String> id, {
    DatasetHttpState? state,
  }) {
    return DatasetHttp._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DatasetHttp._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/datasetHttp:DatasetHttp',
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
    this.relativeUrl = registerOutput<String?>('relativeUrl');
    this.requestBody = registerOutput<String?>('requestBody');
    this.requestMethod = registerOutput<String?>('requestMethod');
    this.schemaColumns = registerOutput<List<DatasetHttpSchemaColumn>?>('schemaColumns');
  }
}
