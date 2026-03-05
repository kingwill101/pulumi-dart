import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_tumbling_window_args.dart';
import 'trigger_tumbling_window_pipeline.dart';
import 'trigger_tumbling_window_retry.dart';
import 'trigger_tumbling_window_state.dart';

/// Manages a Tumbling Window Trigger inside an Azure Data Factory.
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
/// const exampleTriggerTumblingWindow = new azure.datafactory.TriggerTumblingWindow("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     startTime: "2022-09-21T00:00:00Z",
///     endTime: "2022-09-21T08:00:00Z",
///     frequency: "Minute",
///     interval: 15,
///     delay: "16:00:00",
///     annotations: [
///         "example1",
///         "example2",
///         "example3",
///     ],
///     description: "example description",
///     retry: {
///         count: 1,
///         interval: 30,
///     },
///     pipeline: {
///         name: examplePipeline.name,
///         parameters: {
///             Env: "Prod",
///         },
///     },
///     triggerDependencies: [{
///         size: "24:00:00",
///         offset: "-24:00:00",
///     }],
///     additionalProperties: {
///         foo: "value1",
///         bar: "value2",
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
/// example_trigger_tumbling_window = azure.datafactory.TriggerTumblingWindow("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     start_time="2022-09-21T00:00:00Z",
///     end_time="2022-09-21T08:00:00Z",
///     frequency="Minute",
///     interval=15,
///     delay="16:00:00",
///     annotations=[
///         "example1",
///         "example2",
///         "example3",
///     ],
///     description="example description",
///     retry={
///         "count": 1,
///         "interval": 30,
///     },
///     pipeline={
///         "name": example_pipeline.name,
///         "parameters": {
///             "Env": "Prod",
///         },
///     },
///     trigger_dependencies=[{
///         "size": "24:00:00",
///         "offset": "-24:00:00",
///     }],
///     additional_properties={
///         "foo": "value1",
///         "bar": "value2",
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
///     var exampleTriggerTumblingWindow = new Azure.DataFactory.TriggerTumblingWindow("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         StartTime = "2022-09-21T00:00:00Z",
///         EndTime = "2022-09-21T08:00:00Z",
///         Frequency = "Minute",
///         Interval = 15,
///         Delay = "16:00:00",
///         Annotations = new[]
///         {
///             "example1",
///             "example2",
///             "example3",
///         },
///         Description = "example description",
///         Retry = new Azure.DataFactory.Inputs.TriggerTumblingWindowRetryArgs
///         {
///             Count = 1,
///             Interval = 30,
///         },
///         Pipeline = new Azure.DataFactory.Inputs.TriggerTumblingWindowPipelineArgs
///         {
///             Name = examplePipeline.Name,
///             Parameters =
///             {
///                 { "Env", "Prod" },
///             },
///         },
///         TriggerDependencies = new[]
///         {
///             new Azure.DataFactory.Inputs.TriggerTumblingWindowTriggerDependencyArgs
///             {
///                 Size = "24:00:00",
///                 Offset = "-24:00:00",
///             },
///         },
///         AdditionalProperties =
///         {
///             { "foo", "value1" },
///             { "bar", "value2" },
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
/// 		examplePipeline, err := datafactory.NewPipeline(ctx, "example", &datafactory.PipelineArgs{
/// 			Name:          pulumi.String("example"),
/// 			DataFactoryId: exampleFactory.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewTriggerTumblingWindow(ctx, "example", &datafactory.TriggerTumblingWindowArgs{
/// 			Name:          pulumi.String("example"),
/// 			DataFactoryId: exampleFactory.ID(),
/// 			StartTime:     pulumi.String("2022-09-21T00:00:00Z"),
/// 			EndTime:       pulumi.String("2022-09-21T08:00:00Z"),
/// 			Frequency:     pulumi.String("Minute"),
/// 			Interval:      pulumi.Int(15),
/// 			Delay:         pulumi.String("16:00:00"),
/// 			Annotations: pulumi.StringArray{
/// 				pulumi.String("example1"),
/// 				pulumi.String("example2"),
/// 				pulumi.String("example3"),
/// 			},
/// 			Description: pulumi.String("example description"),
/// 			Retry: &datafactory.TriggerTumblingWindowRetryArgs{
/// 				Count:    pulumi.Int(1),
/// 				Interval: pulumi.Int(30),
/// 			},
/// 			Pipeline: &datafactory.TriggerTumblingWindowPipelineArgs{
/// 				Name: examplePipeline.Name,
/// 				Parameters: pulumi.StringMap{
/// 					"Env": pulumi.String("Prod"),
/// 				},
/// 			},
/// 			TriggerDependencies: datafactory.TriggerTumblingWindowTriggerDependencyArray{
/// 				&datafactory.TriggerTumblingWindowTriggerDependencyArgs{
/// 					Size:   pulumi.String("24:00:00"),
/// 					Offset: pulumi.String("-24:00:00"),
/// 				},
/// 			},
/// 			AdditionalProperties: pulumi.StringMap{
/// 				"foo": pulumi.String("value1"),
/// 				"bar": pulumi.String("value2"),
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
/// import com.pulumi.azure.datafactory.TriggerTumblingWindow;
/// import com.pulumi.azure.datafactory.TriggerTumblingWindowArgs;
/// import com.pulumi.azure.datafactory.inputs.TriggerTumblingWindowRetryArgs;
/// import com.pulumi.azure.datafactory.inputs.TriggerTumblingWindowPipelineArgs;
/// import com.pulumi.azure.datafactory.inputs.TriggerTumblingWindowTriggerDependencyArgs;
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
///         var exampleTriggerTumblingWindow = new TriggerTumblingWindow("exampleTriggerTumblingWindow", TriggerTumblingWindowArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .startTime("2022-09-21T00:00:00Z")
///             .endTime("2022-09-21T08:00:00Z")
///             .frequency("Minute")
///             .interval(15)
///             .delay("16:00:00")
///             .annotations(
///                 "example1",
///                 "example2",
///                 "example3")
///             .description("example description")
///             .retry(TriggerTumblingWindowRetryArgs.builder()
///                 .count(1)
///                 .interval(30)
///                 .build())
///             .pipeline(TriggerTumblingWindowPipelineArgs.builder()
///                 .name(examplePipeline.name())
///                 .parameters(Map.of("Env", "Prod"))
///                 .build())
///             .triggerDependencies(TriggerTumblingWindowTriggerDependencyArgs.builder()
///                 .size("24:00:00")
///                 .offset("-24:00:00")
///                 .build())
///             .additionalProperties(Map.ofEntries(
///                 Map.entry("foo", "value1"),
///                 Map.entry("bar", "value2")
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
///   exampleTriggerTumblingWindow:
///     type: azure:datafactory:TriggerTumblingWindow
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       startTime: 2022-09-21T00:00:00Z
///       endTime: 2022-09-21T08:00:00Z
///       frequency: Minute
///       interval: 15
///       delay: 16:00:00
///       annotations:
///         - example1
///         - example2
///         - example3
///       description: example description
///       retry:
///         count: 1
///         interval: 30
///       pipeline:
///         name: ${examplePipeline.name}
///         parameters:
///           Env: Prod
///       triggerDependencies:
///         - size: 24:00:00
///           offset: -24:00:00
///       additionalProperties:
///         foo: value1
///         bar: value2
/// ```
///
///
/// ## Import
///
/// Data Factory Tumbling Window Trigger can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/triggerTumblingWindow:TriggerTumblingWindow example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/triggers/example
/// ```
class TriggerTumblingWindow extends pulumi.CustomResource {
  /// Specifies if the Data Factory Tumbling Window Trigger is activated. Defaults to `true`.
  late final pulumi.Output<bool?> activated;
  /// A map of additional properties to associate with the Data Factory Tumbling Window Trigger.
  late final pulumi.Output<Map<String, String>?> additionalProperties;
  /// List of tags that can be used for describing the Data Factory Tumbling Window Trigger.
  late final pulumi.Output<List<String>?> annotations;
  /// The ID of Data Factory in which to associate the Trigger with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;
  /// Specifies how long the trigger waits before triggering new run. formatted as an `D.HH:MM:SS`.
  late final pulumi.Output<String?> delay;
  /// The description for the Data Factory Tumbling Window Trigger.
  late final pulumi.Output<String?> description;
  /// Specifies the end time of Tumbling Window, formatted as an RFC3339 string.
  late final pulumi.Output<String?> endTime;
  /// Specifies the frequency of Tumbling Window. Possible values are `Hour`, `Minute` and `Month`. Changing this forces a new resource.
  late final pulumi.Output<String> frequency;
  /// Specifies the interval of Tumbling Window. Changing this forces a new resource.
  late final pulumi.Output<int> interval;
  /// The max number for simultaneous trigger run fired by Tumbling Window. Possible values are between `1` and `50`. Defaults to `50`.
  late final pulumi.Output<int?> maxConcurrency;
  /// Specifies the name of the Data Factory Tumbling Window Trigger. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A `pipeline` block as defined below.
  late final pulumi.Output<TriggerTumblingWindowPipeline> pipeline;
  /// A `retry` block as defined below.
  late final pulumi.Output<TriggerTumblingWindowRetry?> retry;
  /// Specifies the start time of Tumbling Window, formatted as an RFC3339 string. Changing this forces a new resource.
  late final pulumi.Output<String> startTime;
  /// One or more `trigger_dependency` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> triggerDependencies;

  /// Creates a new [TriggerTumblingWindow].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TriggerTumblingWindow]. {@macro pulumi_datafactory_trigger_tumbling_window_trigger_tumbling_window_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TriggerTumblingWindow(
    String name, {
    TriggerTumblingWindowArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/triggerTumblingWindow:TriggerTumblingWindow',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activated = registerOutput<bool?>('activated');
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    annotations = registerOutput<List<String>?>('annotations');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    delay = registerOutput<String?>('delay');
    description = registerOutput<String?>('description');
    endTime = registerOutput<String?>('endTime');
    frequency = registerOutput<String>('frequency');
    interval = registerOutput<int>('interval');
    maxConcurrency = registerOutput<int?>('maxConcurrency');
    this.name = registerOutput<String>('name');
    pipeline = registerOutput<TriggerTumblingWindowPipeline>('pipeline', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TriggerTumblingWindowPipeline.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    retry = registerOutput<TriggerTumblingWindowRetry?>('retry', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TriggerTumblingWindowRetry.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    startTime = registerOutput<String>('startTime');
    triggerDependencies = registerOutput<List<Map<String, dynamic>>?>('triggerDependencies');
  }

  /// Gets an existing [TriggerTumblingWindow] resource's state with the given [name] and [id].
  static TriggerTumblingWindow get(
    String name,
    pulumi.Input<String> id, {
    TriggerTumblingWindowState? state,
  }) {
    return TriggerTumblingWindow._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TriggerTumblingWindow._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/triggerTumblingWindow:TriggerTumblingWindow',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activated = registerOutput<bool?>('activated');
    additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    annotations = registerOutput<List<String>?>('annotations');
    dataFactoryId = registerOutput<String>('dataFactoryId');
    delay = registerOutput<String?>('delay');
    description = registerOutput<String?>('description');
    endTime = registerOutput<String?>('endTime');
    frequency = registerOutput<String>('frequency');
    interval = registerOutput<int>('interval');
    maxConcurrency = registerOutput<int?>('maxConcurrency');
    this.name = registerOutput<String>('name');
    pipeline = registerOutput<TriggerTumblingWindowPipeline>('pipeline', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TriggerTumblingWindowPipeline.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    retry = registerOutput<TriggerTumblingWindowRetry?>('retry', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TriggerTumblingWindowRetry.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    startTime = registerOutput<String>('startTime');
    triggerDependencies = registerOutput<List<Map<String, dynamic>>?>('triggerDependencies');
  }
}
