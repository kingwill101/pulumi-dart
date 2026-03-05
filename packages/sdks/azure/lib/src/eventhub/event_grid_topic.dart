import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_grid_topic_args.dart';
import 'event_grid_topic_identity.dart';
import 'event_grid_topic_input_mapping_default_values.dart';
import 'event_grid_topic_input_mapping_fields.dart';
import 'event_grid_topic_state.dart';

/// Manages an EventGrid Topic
///
/// &gt; **Note:** at this time EventGrid Topics are only available in a limited number of regions.
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
/// const exampleTopic = new azure.eventgrid.Topic("example", {
///     name: "my-eventgrid-topic",
///     location: example.location,
///     resourceGroupName: example.name,
///     tags: {
///         environment: "Production",
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
/// example_topic = azure.eventgrid.Topic("example",
///     name="my-eventgrid-topic",
///     location=example.location,
///     resource_group_name=example.name,
///     tags={
///         "environment": "Production",
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
///     var exampleTopic = new Azure.EventGrid.Topic("example", new()
///     {
///         Name = "my-eventgrid-topic",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Tags =
///         {
///             { "environment", "Production" },
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
/// 		_, err = eventgrid.NewTopic(ctx, "example", &eventgrid.TopicArgs{
/// 			Name:              pulumi.String("my-eventgrid-topic"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Production"),
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
/// import com.pulumi.azure.eventgrid.Topic;
/// import com.pulumi.azure.eventgrid.TopicArgs;
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
///         var exampleTopic = new Topic("exampleTopic", TopicArgs.builder()
///             .name("my-eventgrid-topic")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tags(Map.of("environment", "Production"))
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
///   exampleTopic:
///     type: azure:eventgrid:Topic
///     name: example
///     properties:
///       name: my-eventgrid-topic
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tags:
///         environment: Production
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.EventGrid` - 2025-02-15
///
/// ## Import
///
/// EventGrid Topic's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:eventhub/eventGridTopic:EventGridTopic topic1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.EventGrid/topics/topic1
/// ```
class EventGridTopic extends pulumi.CustomResource {
  /// The Endpoint associated with the EventGrid Topic.
  late final pulumi.Output<String> endpoint;
  /// An `identity` block as defined below.
  late final pulumi.Output<EventGridTopicIdentity?> identity;
  /// One or more `inbound_ip_rule` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> inboundIpRules;
  /// A `input_mapping_default_values` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<EventGridTopicInputMappingDefaultValues?> inputMappingDefaultValues;
  /// A `input_mapping_fields` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<EventGridTopicInputMappingFields?> inputMappingFields;
  /// Specifies the schema in which incoming events will be published to this domain. Allowed values are `CloudEventSchemaV1_0`, `CustomEventSchema`, or `EventGridSchema`. Defaults to `EventGridSchema`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> inputSchema;
  /// Whether local authentication methods is enabled for the EventGrid Topic. Defaults to `true`.
  late final pulumi.Output<bool?> localAuthEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the EventGrid Topic resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The Primary Shared Access Key associated with the EventGrid Topic.
  late final pulumi.Output<String> primaryAccessKey;
  /// Whether or not public network access is allowed for this server. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The name of the resource group in which the EventGrid Topic exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The Secondary Shared Access Key associated with the EventGrid Topic.
  late final pulumi.Output<String> secondaryAccessKey;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [EventGridTopic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventGridTopic]. {@macro pulumi_eventhub_event_grid_topic_event_grid_topic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventGridTopic(
    String name, {
    EventGridTopicArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:eventhub/eventGridTopic:EventGridTopic',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    endpoint = registerOutput<String>('endpoint');
    identity = registerOutput<EventGridTopicIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventGridTopicIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inboundIpRules = registerOutput<List<Map<String, dynamic>>?>('inboundIpRules');
    inputMappingDefaultValues = registerOutput<EventGridTopicInputMappingDefaultValues?>('inputMappingDefaultValues', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventGridTopicInputMappingDefaultValues.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inputMappingFields = registerOutput<EventGridTopicInputMappingFields?>('inputMappingFields', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventGridTopicInputMappingFields.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inputSchema = registerOutput<String?>('inputSchema');
    localAuthEnabled = registerOutput<bool?>('localAuthEnabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    primaryAccessKey = registerOutput<String>('primaryAccessKey');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryAccessKey = registerOutput<String>('secondaryAccessKey');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [EventGridTopic] resource's state with the given [name] and [id].
  static EventGridTopic get(
    String name,
    pulumi.Input<String> id, {
    EventGridTopicState? state,
  }) {
    return EventGridTopic._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EventGridTopic._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:eventhub/eventGridTopic:EventGridTopic',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    endpoint = registerOutput<String>('endpoint');
    identity = registerOutput<EventGridTopicIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventGridTopicIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inboundIpRules = registerOutput<List<Map<String, dynamic>>?>('inboundIpRules');
    inputMappingDefaultValues = registerOutput<EventGridTopicInputMappingDefaultValues?>('inputMappingDefaultValues', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventGridTopicInputMappingDefaultValues.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inputMappingFields = registerOutput<EventGridTopicInputMappingFields?>('inputMappingFields', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventGridTopicInputMappingFields.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inputSchema = registerOutput<String?>('inputSchema');
    localAuthEnabled = registerOutput<bool?>('localAuthEnabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    primaryAccessKey = registerOutput<String>('primaryAccessKey');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryAccessKey = registerOutput<String>('secondaryAccessKey');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
