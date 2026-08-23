import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_blob_event_args.dart';
import 'trigger_blob_event_state.dart';

/// Manages a Blob Event Trigger inside an Azure Data Factory.
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
/// const examplePipeline = new azure.datafactory.Pipeline("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleTriggerBlobEvent = new azure.datafactory.TriggerBlobEvent("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     storageAccountId: exampleAccount.id,
///     events: [
///         "Microsoft.Storage.BlobCreated",
///         "Microsoft.Storage.BlobDeleted",
///     ],
///     blobPathEndsWith: ".txt",
///     ignoreEmptyBlobs: true,
///     activated: true,
///     annotations: [
///         "test1",
///         "test2",
///         "test3",
///     ],
///     description: "example description",
///     pipelines: [{
///         name: examplePipeline.name,
///         parameters: {
///             Env: "Prod",
///         },
///     }],
///     additionalProperties: {
///         foo: "foo1",
///         bar: "bar2",
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
/// example_pipeline = azure.datafactory.Pipeline("example",
///     name="example",
///     data_factory_id=example_factory.id)
/// example_account = azure.storage.Account("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_trigger_blob_event = azure.datafactory.TriggerBlobEvent("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     storage_account_id=example_account.id,
///     events=[
///         "Microsoft.Storage.BlobCreated",
///         "Microsoft.Storage.BlobDeleted",
///     ],
///     blob_path_ends_with=".txt",
///     ignore_empty_blobs=True,
///     activated=True,
///     annotations=[
///         "test1",
///         "test2",
///         "test3",
///     ],
///     description="example description",
///     pipelines=[{
///         "name": example_pipeline.name,
///         "parameters": {
///             "Env": "Prod",
///         },
///     }],
///     additional_properties={
///         "foo": "foo1",
///         "bar": "bar2",
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
///     var examplePipeline = new Azure.DataFactory.Pipeline("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleTriggerBlobEvent = new Azure.DataFactory.TriggerBlobEvent("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         StorageAccountId = exampleAccount.Id,
///         Events = new[]
///         {
///             "Microsoft.Storage.BlobCreated",
///             "Microsoft.Storage.BlobDeleted",
///         },
///         BlobPathEndsWith = ".txt",
///         IgnoreEmptyBlobs = true,
///         Activated = true,
///         Annotations = new[]
///         {
///             "test1",
///             "test2",
///             "test3",
///         },
///         Description = "example description",
///         Pipelines = new[]
///         {
///             new Azure.DataFactory.Inputs.TriggerBlobEventPipelineArgs
///             {
///                 Name = examplePipeline.Name,
///                 Parameters =
///                 {
///                     { "Env", "Prod" },
///                 },
///             },
///         },
///         AdditionalProperties =
///         {
///             { "foo", "foo1" },
///             { "bar", "bar2" },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
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
/// 		examplePipeline, err := datafactory.NewPipeline(ctx, "example", &datafactory.PipelineArgs{
/// 			Name:          pulumi.String("example"),
/// 			DataFactoryId: exampleFactory.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("example"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewTriggerBlobEvent(ctx, "example", &datafactory.TriggerBlobEventArgs{
/// 			Name:             pulumi.String("example"),
/// 			DataFactoryId:    exampleFactory.ID(),
/// 			StorageAccountId: exampleAccount.ID(),
/// 			Events: pulumi.StringArray{
/// 				pulumi.String("Microsoft.Storage.BlobCreated"),
/// 				pulumi.String("Microsoft.Storage.BlobDeleted"),
/// 			},
/// 			BlobPathEndsWith: pulumi.String(".txt"),
/// 			IgnoreEmptyBlobs: pulumi.Bool(true),
/// 			Activated:        pulumi.Bool(true),
/// 			Annotations: pulumi.StringArray{
/// 				pulumi.String("test1"),
/// 				pulumi.String("test2"),
/// 				pulumi.String("test3"),
/// 			},
/// 			Description: pulumi.String("example description"),
/// 			Pipelines: datafactory.TriggerBlobEventPipelineArray{
/// 				&datafactory.TriggerBlobEventPipelineArgs{
/// 					Name: examplePipeline.Name,
/// 					Parameters: pulumi.StringMap{
/// 						"Env": pulumi.String("Prod"),
/// 					},
/// 				},
/// 			},
/// 			AdditionalProperties: pulumi.StringMap{
/// 				"foo": pulumi.String("foo1"),
/// 				"bar": pulumi.String("bar2"),
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
/// resource "azure_datafactory_pipeline" "example" {
///   name            = "example"
///   data_factory_id = azure_datafactory_factory.example.id
/// }
/// resource "azure_storage_account" "example" {
///   name                     = "example"
///   resource_group_name      = azure_core_resourcegroup.example.name
///   location                 = azure_core_resourcegroup.example.location
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
/// }
/// resource "azure_datafactory_triggerblobevent" "example" {
///   name                = "example"
///   data_factory_id     = azure_datafactory_factory.example.id
///   storage_account_id  = azure_storage_account.example.id
///   events              = ["Microsoft.Storage.BlobCreated", "Microsoft.Storage.BlobDeleted"]
///   blob_path_ends_with = ".txt"
///   ignore_empty_blobs  = true
///   activated           = true
///   annotations         = ["test1", "test2", "test3"]
///   description         = "example description"
///   pipelines {
///     name = azure_datafactory_pipeline.example.name
///     parameters = {
///       "Env" = "Prod"
///     }
///   }
///   additional_properties = {
///     "foo" = "foo1"
///     "bar" = "bar2"
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
/// import com.pulumi.azure.datafactory.Pipeline;
/// import com.pulumi.azure.datafactory.PipelineArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.datafactory.TriggerBlobEvent;
/// import com.pulumi.azure.datafactory.TriggerBlobEventArgs;
/// import com.pulumi.azure.datafactory.inputs.TriggerBlobEventPipelineArgs;
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
///         var examplePipeline = new Pipeline("examplePipeline", PipelineArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleTriggerBlobEvent = new TriggerBlobEvent("exampleTriggerBlobEvent", TriggerBlobEventArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .storageAccountId(exampleAccount.id())
///             .events(
///                 "Microsoft.Storage.BlobCreated",
///                 "Microsoft.Storage.BlobDeleted")
///             .blobPathEndsWith(".txt")
///             .ignoreEmptyBlobs(true)
///             .activated(true)
///             .annotations(
///                 "test1",
///                 "test2",
///                 "test3")
///             .description("example description")
///             .pipelines(TriggerBlobEventPipelineArgs.builder()
///                 .name(examplePipeline.name())
///                 .parameters(Map.of("Env", "Prod"))
///                 .build())
///             .additionalProperties(Map.ofEntries(
///                 Map.entry("foo", "foo1"),
///                 Map.entry("bar", "bar2")
///             ))
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
///   examplePipeline:
///     type: azure:datafactory:Pipeline
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleTriggerBlobEvent:
///     type: azure:datafactory:TriggerBlobEvent
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       storageAccountId: ${exampleAccount.id}
///       events:
///         - Microsoft.Storage.BlobCreated
///         - Microsoft.Storage.BlobDeleted
///       blobPathEndsWith: .txt
///       ignoreEmptyBlobs: true
///       activated: true
///       annotations:
///         - test1
///         - test2
///         - test3
///       description: example description
///       pipelines:
///         - name: ${examplePipeline.name}
///           parameters:
///             Env: Prod
///       additionalProperties:
///         foo: foo1
///         bar: bar2
/// ```
///
///
/// ## Import
///
/// Data Factory Blob Event Trigger can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/triggerBlobEvent:TriggerBlobEvent example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/triggers/example
/// ```
class TriggerBlobEvent extends pulumi.CustomResource {
  /// Specifies if the Data Factory Blob Event Trigger is activated. Defaults to `true`.
  late final pulumi.Output<bool?> activated;
  /// A map of additional properties to associate with the Data Factory Blob Event Trigger.
  late final pulumi.Output<Map<String, String>?> additionalProperties;
  /// List of tags that can be used for describing the Data Factory Blob Event Trigger.
  late final pulumi.Output<List<String>?> annotations;
  /// The pattern that blob path starts with for trigger to fire.
  late final pulumi.Output<String?> blobPathBeginsWith;
  /// The pattern that blob path ends with for trigger to fire.
  ///
  /// &gt; **Note:** At least one of `blobPathBeginsWith` and `blobPathEndsWith` must be set.
  late final pulumi.Output<String?> blobPathEndsWith;
  /// The ID of Data Factory in which to associate the Trigger with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;
  /// The description for the Data Factory Blob Event Trigger.
  late final pulumi.Output<String?> description;
  /// List of events that will fire this trigger. Possible values are `Microsoft.Storage.BlobCreated` and `Microsoft.Storage.BlobDeleted`.
  late final pulumi.Output<List<String>> events;
  /// are blobs with zero bytes ignored?
  late final pulumi.Output<bool?> ignoreEmptyBlobs;
  /// Specifies the name of the Data Factory Blob Event Trigger. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// One or more `pipeline` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> pipelines;
  /// The ID of Storage Account in which blob event will be listened. Changing this forces a new resource.
  late final pulumi.Output<String> storageAccountId;

  /// Creates a new [TriggerBlobEvent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TriggerBlobEvent]. {@macro pulumi_datafactory_trigger_blob_event_trigger_blob_event_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TriggerBlobEvent(
    String name, {
    TriggerBlobEventArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/triggerBlobEvent:TriggerBlobEvent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activated = registerOutput<bool?>('activated');
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    annotations = registerOutput<List<String>?>('annotations');
    blobPathBeginsWith = registerOutput<String?>('blobPathBeginsWith');
    blobPathEndsWith = registerOutput<String?>('blobPathEndsWith');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    events = registerOutput<List<String>>('events');
    ignoreEmptyBlobs = registerOutput<bool?>('ignoreEmptyBlobs');
    this.name = registerOutput<String>('name');
    pipelines = registerOutput<List<Map<String, dynamic>>>('pipelines');
    storageAccountId = registerOutput<String>('storageAccountId');
  }

  /// Gets an existing [TriggerBlobEvent] resource's state with the given [name] and [id].
  static TriggerBlobEvent get(
    String name,
    pulumi.Input<String> id, {
    TriggerBlobEventState? state,
  }) {
    return TriggerBlobEvent._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TriggerBlobEvent._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/triggerBlobEvent:TriggerBlobEvent',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activated = registerOutput<bool?>('activated');
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    annotations = registerOutput<List<String>?>('annotations');
    blobPathBeginsWith = registerOutput<String?>('blobPathBeginsWith');
    blobPathEndsWith = registerOutput<String?>('blobPathEndsWith');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    events = registerOutput<List<String>>('events');
    ignoreEmptyBlobs = registerOutput<bool?>('ignoreEmptyBlobs');
    this.name = registerOutput<String>('name');
    pipelines = registerOutput<List<Map<String, dynamic>>>('pipelines');
    storageAccountId = registerOutput<String>('storageAccountId');
  }
}
