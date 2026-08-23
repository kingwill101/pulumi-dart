import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_event_grid_args.dart';
import 'endpoint_event_grid_state.dart';

/// Manages a Digital Twins Event Grid Endpoint.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example_resources",
///     location: "West Europe",
/// });
/// const exampleInstance = new azure.digitaltwins.Instance("example", {
///     name: "example-DT",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleTopic = new azure.eventgrid.Topic("example", {
///     name: "example-topic",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleEndpointEventGrid = new azure.digitaltwins.EndpointEventGrid("example", {
///     name: "example-EG",
///     digitalTwinsId: exampleInstance.id,
///     eventgridTopicEndpoint: exampleTopic.endpoint,
///     eventgridTopicPrimaryAccessKey: exampleTopic.primaryAccessKey,
///     eventgridTopicSecondaryAccessKey: exampleTopic.secondaryAccessKey,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example_resources",
///     location="West Europe")
/// example_instance = azure.digitaltwins.Instance("example",
///     name="example-DT",
///     resource_group_name=example.name,
///     location=example.location)
/// example_topic = azure.eventgrid.Topic("example",
///     name="example-topic",
///     location=example.location,
///     resource_group_name=example.name)
/// example_endpoint_event_grid = azure.digitaltwins.EndpointEventGrid("example",
///     name="example-EG",
///     digital_twins_id=example_instance.id,
///     eventgrid_topic_endpoint=example_topic.endpoint,
///     eventgrid_topic_primary_access_key=example_topic.primary_access_key,
///     eventgrid_topic_secondary_access_key=example_topic.secondary_access_key)
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
///         Name = "example_resources",
///         Location = "West Europe",
///     });
///
///     var exampleInstance = new Azure.DigitalTwins.Instance("example", new()
///     {
///         Name = "example-DT",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleTopic = new Azure.EventGrid.Topic("example", new()
///     {
///         Name = "example-topic",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleEndpointEventGrid = new Azure.DigitalTwins.EndpointEventGrid("example", new()
///     {
///         Name = "example-EG",
///         DigitalTwinsId = exampleInstance.Id,
///         EventgridTopicEndpoint = exampleTopic.Endpoint,
///         EventgridTopicPrimaryAccessKey = exampleTopic.PrimaryAccessKey,
///         EventgridTopicSecondaryAccessKey = exampleTopic.SecondaryAccessKey,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/digitaltwins"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventgrid"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example_resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInstance, err := digitaltwins.NewInstance(ctx, "example", &digitaltwins.InstanceArgs{
/// 			Name:              pulumi.String("example-DT"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
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
/// 		_, err = digitaltwins.NewEndpointEventGrid(ctx, "example", &digitaltwins.EndpointEventGridArgs{
/// 			Name:                             pulumi.String("example-EG"),
/// 			DigitalTwinsId:                   exampleInstance.ID(),
/// 			EventgridTopicEndpoint:           exampleTopic.Endpoint,
/// 			EventgridTopicPrimaryAccessKey:   exampleTopic.PrimaryAccessKey,
/// 			EventgridTopicSecondaryAccessKey: exampleTopic.SecondaryAccessKey,
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
///   name     = "example_resources"
///   location = "West Europe"
/// }
/// resource "azure_digitaltwins_instance" "example" {
///   name                = "example-DT"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
/// }
/// resource "azure_eventgrid_topic" "example" {
///   name                = "example-topic"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_digitaltwins_endpointeventgrid" "example" {
///   name                                 = "example-EG"
///   digital_twins_id                     = azure_digitaltwins_instance.example.id
///   eventgrid_topic_endpoint             = azure_eventgrid_topic.example.endpoint
///   eventgrid_topic_primary_access_key   = azure_eventgrid_topic.example.primary_access_key
///   eventgrid_topic_secondary_access_key = azure_eventgrid_topic.example.secondary_access_key
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
/// import com.pulumi.azure.digitaltwins.Instance;
/// import com.pulumi.azure.digitaltwins.InstanceArgs;
/// import com.pulumi.azure.eventgrid.Topic;
/// import com.pulumi.azure.eventgrid.TopicArgs;
/// import com.pulumi.azure.digitaltwins.EndpointEventGrid;
/// import com.pulumi.azure.digitaltwins.EndpointEventGridArgs;
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
///             .name("example_resources")
///             .location("West Europe")
///             .build());
///
///         var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
///             .name("example-DT")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleTopic = new Topic("exampleTopic", TopicArgs.builder()
///             .name("example-topic")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleEndpointEventGrid = new EndpointEventGrid("exampleEndpointEventGrid", EndpointEventGridArgs.builder()
///             .name("example-EG")
///             .digitalTwinsId(exampleInstance.id())
///             .eventgridTopicEndpoint(exampleTopic.endpoint())
///             .eventgridTopicPrimaryAccessKey(exampleTopic.primaryAccessKey())
///             .eventgridTopicSecondaryAccessKey(exampleTopic.secondaryAccessKey())
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
///       name: example_resources
///       location: West Europe
///   exampleInstance:
///     type: azure:digitaltwins:Instance
///     name: example
///     properties:
///       name: example-DT
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleTopic:
///     type: azure:eventgrid:Topic
///     name: example
///     properties:
///       name: example-topic
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleEndpointEventGrid:
///     type: azure:digitaltwins:EndpointEventGrid
///     name: example
///     properties:
///       name: example-EG
///       digitalTwinsId: ${exampleInstance.id}
///       eventgridTopicEndpoint: ${exampleTopic.endpoint}
///       eventgridTopicPrimaryAccessKey: ${exampleTopic.primaryAccessKey}
///       eventgridTopicSecondaryAccessKey: ${exampleTopic.secondaryAccessKey}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DigitalTwins` - 2023-01-31
///
/// ## Import
///
/// Digital Twins Eventgrid Endpoints can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:digitaltwins/endpointEventGrid:EndpointEventGrid example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DigitalTwins/digitalTwinsInstances/dt1/endpoints/ep1
/// ```
class EndpointEventGrid extends pulumi.CustomResource {
  /// The storage secret of the dead-lettering, whose format is `https://&lt;storageAccountname&gt;.blob.core.windows.net/&lt;containerName&gt;?&lt;SASToken&gt;`. When an endpoint can't deliver an event within a certain time period or after trying to deliver the event a certain number of times, it can send the undelivered event to a storage account.
  late final pulumi.Output<String?> deadLetterStorageSecret;
  /// The resource ID of the Digital Twins Instance. Changing this forces a new Digital Twins Eventgrid Endpoint to be created.
  late final pulumi.Output<String> digitalTwinsId;
  /// The endpoint of the Event Grid Topic.
  late final pulumi.Output<String> eventgridTopicEndpoint;
  /// The primary access key of the Event Grid Topic.
  late final pulumi.Output<String> eventgridTopicPrimaryAccessKey;
  /// The secondary access key of the Event Grid Topic.
  late final pulumi.Output<String> eventgridTopicSecondaryAccessKey;
  /// The name which should be used for this Digital Twins Eventgrid Endpoint. Changing this forces a new Digital Twins Eventgrid Endpoint to be created.
  late final pulumi.Output<String> name;

  /// Creates a new [EndpointEventGrid].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointEventGrid]. {@macro pulumi_digitaltwins_endpoint_event_grid_endpoint_event_grid_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointEventGrid(
    String name, {
    EndpointEventGridArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:digitaltwins/endpointEventGrid:EndpointEventGrid',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deadLetterStorageSecret = registerOutput<String?>('deadLetterStorageSecret');
    digitalTwinsId = registerOutput<String>('digitalTwinsId');
    eventgridTopicEndpoint = registerOutput<String>('eventgridTopicEndpoint');
    eventgridTopicPrimaryAccessKey = registerOutput<String>('eventgridTopicPrimaryAccessKey');
    eventgridTopicSecondaryAccessKey = registerOutput<String>('eventgridTopicSecondaryAccessKey');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [EndpointEventGrid] resource's state with the given [name] and [id].
  static EndpointEventGrid get(
    String name,
    pulumi.Input<String> id, {
    EndpointEventGridState? state,
  }) {
    return EndpointEventGrid._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EndpointEventGrid._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:digitaltwins/endpointEventGrid:EndpointEventGrid',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deadLetterStorageSecret = registerOutput<String?>('deadLetterStorageSecret');
    digitalTwinsId = registerOutput<String>('digitalTwinsId');
    eventgridTopicEndpoint = registerOutput<String>('eventgridTopicEndpoint');
    eventgridTopicPrimaryAccessKey = registerOutput<String>('eventgridTopicPrimaryAccessKey');
    eventgridTopicSecondaryAccessKey = registerOutput<String>('eventgridTopicSecondaryAccessKey');
    this.name = registerOutput<String>('name');
  }
}
