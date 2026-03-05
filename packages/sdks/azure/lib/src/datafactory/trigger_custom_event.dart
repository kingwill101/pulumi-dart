import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_custom_event_args.dart';
import 'trigger_custom_event_state.dart';

/// Manages a Custom Event Trigger inside an Azure Data Factory.
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
/// const exampleTopic = new azure.eventgrid.Topic("example", {
///     name: "example-topic",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleTriggerCustomEvent = new azure.datafactory.TriggerCustomEvent("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     eventgridTopicId: exampleTopic.id,
///     events: [
///         "event1",
///         "event2",
///     ],
///     subjectBeginsWith: "abc",
///     subjectEndsWith: "xyz",
///     annotations: [
///         "example1",
///         "example2",
///         "example3",
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
/// example_topic = azure.eventgrid.Topic("example",
///     name="example-topic",
///     location=example.location,
///     resource_group_name=example.name)
/// example_trigger_custom_event = azure.datafactory.TriggerCustomEvent("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     eventgrid_topic_id=example_topic.id,
///     events=[
///         "event1",
///         "event2",
///     ],
///     subject_begins_with="abc",
///     subject_ends_with="xyz",
///     annotations=[
///         "example1",
///         "example2",
///         "example3",
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
///     var exampleTopic = new Azure.EventGrid.Topic("example", new()
///     {
///         Name = "example-topic",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleTriggerCustomEvent = new Azure.DataFactory.TriggerCustomEvent("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         EventgridTopicId = exampleTopic.Id,
///         Events = new[]
///         {
///             "event1",
///             "event2",
///         },
///         SubjectBeginsWith = "abc",
///         SubjectEndsWith = "xyz",
///         Annotations = new[]
///         {
///             "example1",
///             "example2",
///             "example3",
///         },
///         Description = "example description",
///         Pipelines = new[]
///         {
///             new Azure.DataFactory.Inputs.TriggerCustomEventPipelineArgs
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventgrid"
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
/// 		exampleTopic, err := eventgrid.NewTopic(ctx, "example", &eventgrid.TopicArgs{
/// 			Name:              pulumi.String("example-topic"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewTriggerCustomEvent(ctx, "example", &datafactory.TriggerCustomEventArgs{
/// 			Name:             pulumi.String("example"),
/// 			DataFactoryId:    exampleFactory.ID(),
/// 			EventgridTopicId: exampleTopic.ID(),
/// 			Events: pulumi.StringArray{
/// 				pulumi.String("event1"),
/// 				pulumi.String("event2"),
/// 			},
/// 			SubjectBeginsWith: pulumi.String("abc"),
/// 			SubjectEndsWith:   pulumi.String("xyz"),
/// 			Annotations: pulumi.StringArray{
/// 				pulumi.String("example1"),
/// 				pulumi.String("example2"),
/// 				pulumi.String("example3"),
/// 			},
/// 			Description: pulumi.String("example description"),
/// 			Pipelines: datafactory.TriggerCustomEventPipelineArray{
/// 				&datafactory.TriggerCustomEventPipelineArgs{
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
/// import com.pulumi.azure.eventgrid.Topic;
/// import com.pulumi.azure.eventgrid.TopicArgs;
/// import com.pulumi.azure.datafactory.TriggerCustomEvent;
/// import com.pulumi.azure.datafactory.TriggerCustomEventArgs;
/// import com.pulumi.azure.datafactory.inputs.TriggerCustomEventPipelineArgs;
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
///         var examplePipeline = new Pipeline("examplePipeline", PipelineArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .build());
///
///         var exampleTopic = new Topic("exampleTopic", TopicArgs.builder()
///             .name("example-topic")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleTriggerCustomEvent = new TriggerCustomEvent("exampleTriggerCustomEvent", TriggerCustomEventArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .eventgridTopicId(exampleTopic.id())
///             .events(
///                 "event1",
///                 "event2")
///             .subjectBeginsWith("abc")
///             .subjectEndsWith("xyz")
///             .annotations(
///                 "example1",
///                 "example2",
///                 "example3")
///             .description("example description")
///             .pipelines(TriggerCustomEventPipelineArgs.builder()
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
///   exampleTopic:
///     type: azure:eventgrid:Topic
///     name: example
///     properties:
///       name: example-topic
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleTriggerCustomEvent:
///     type: azure:datafactory:TriggerCustomEvent
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       eventgridTopicId: ${exampleTopic.id}
///       events:
///         - event1
///         - event2
///       subjectBeginsWith: abc
///       subjectEndsWith: xyz
///       annotations:
///         - example1
///         - example2
///         - example3
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
/// Data Factory Custom Event Trigger can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/triggerCustomEvent:TriggerCustomEvent example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/triggers/example
/// ```
class TriggerCustomEvent extends pulumi.CustomResource {
  /// Specifies if the Data Factory Custom Event Trigger is activated. Defaults to `true`.
  late final pulumi.Output<bool?> activated;
  /// A map of additional properties to associate with the Data Factory Custom Event Trigger.
  late final pulumi.Output<Map<String, String>?> additionalProperties;
  /// List of tags that can be used for describing the Data Factory Custom Event Trigger.
  late final pulumi.Output<List<String>?> annotations;
  /// The ID of Data Factory in which to associate the Trigger with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;
  /// The description for the Data Factory Custom Event Trigger.
  late final pulumi.Output<String?> description;
  /// The ID of Event Grid Topic in which event will be listened. Changing this forces a new resource.
  late final pulumi.Output<String> eventgridTopicId;
  /// List of events that will fire this trigger. At least one event must be specified.
  late final pulumi.Output<List<String>> events;
  /// Specifies the name of the Data Factory Custom Event Trigger. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// One or more `pipeline` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> pipelines;
  /// The pattern that event subject starts with for trigger to fire.
  late final pulumi.Output<String?> subjectBeginsWith;
  /// The pattern that event subject ends with for trigger to fire.
  late final pulumi.Output<String?> subjectEndsWith;

  /// Creates a new [TriggerCustomEvent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TriggerCustomEvent]. {@macro pulumi_datafactory_trigger_custom_event_trigger_custom_event_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TriggerCustomEvent(
    String name, {
    TriggerCustomEventArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/triggerCustomEvent:TriggerCustomEvent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activated = registerOutput<bool?>('activated');
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    annotations = registerOutput<List<String>?>('annotations');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    eventgridTopicId = registerOutput<String>('eventgridTopicId');
    events = registerOutput<List<String>>('events');
    this.name = registerOutput<String>('name');
    pipelines = registerOutput<List<Map<String, dynamic>>>('pipelines');
    subjectBeginsWith = registerOutput<String?>('subjectBeginsWith');
    subjectEndsWith = registerOutput<String?>('subjectEndsWith');
  }

  /// Gets an existing [TriggerCustomEvent] resource's state with the given [name] and [id].
  static TriggerCustomEvent get(
    String name,
    pulumi.Input<String> id, {
    TriggerCustomEventState? state,
  }) {
    return TriggerCustomEvent._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TriggerCustomEvent._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/triggerCustomEvent:TriggerCustomEvent',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activated = registerOutput<bool?>('activated');
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    annotations = registerOutput<List<String>?>('annotations');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    description = registerOutput<String?>('description');
    eventgridTopicId = registerOutput<String>('eventgridTopicId');
    events = registerOutput<List<String>>('events');
    this.name = registerOutput<String>('name');
    pipelines = registerOutput<List<Map<String, dynamic>>>('pipelines');
    subjectBeginsWith = registerOutput<String?>('subjectBeginsWith');
    subjectEndsWith = registerOutput<String?>('subjectEndsWith');
  }
}
