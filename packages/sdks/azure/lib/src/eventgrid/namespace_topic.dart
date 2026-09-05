import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_topic_args.dart';
import 'namespace_topic_state.dart';

/// Manages an Event Grid Namespace Topic.
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
/// const exampleNamespace = new azure.eventgrid.Namespace("example", {
///     name: "my-eventgrid-namespace",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleNamespaceTopic = new azure.eventgrid.NamespaceTopic("example", {
///     name: "topic-namespace-example",
///     eventgridNamespaceId: test.id,
///     eventRetentionInDays: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_namespace = azure.eventgrid.Namespace("example",
///     name="my-eventgrid-namespace",
///     location=example.location,
///     resource_group_name=example.name)
/// example_namespace_topic = azure.eventgrid.NamespaceTopic("example",
///     name="topic-namespace-example",
///     eventgrid_namespace_id=test["id"],
///     event_retention_in_days=1)
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
///     var exampleNamespace = new Azure.EventGrid.Namespace("example", new()
///     {
///         Name = "my-eventgrid-namespace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleNamespaceTopic = new Azure.EventGrid.NamespaceTopic("example", new()
///     {
///         Name = "topic-namespace-example",
///         EventgridNamespaceId = test.Id,
///         EventRetentionInDays = 1,
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
/// 		_, err = eventgrid.NewNamespace(ctx, "example", &eventgrid.NamespaceArgs{
/// 			Name:              pulumi.String("my-eventgrid-namespace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eventgrid.NewNamespaceTopic(ctx, "example", &eventgrid.NamespaceTopicArgs{
/// 			Name:                 pulumi.String("topic-namespace-example"),
/// 			EventgridNamespaceId: pulumi.Any(test.Id),
/// 			EventRetentionInDays: pulumi.Int(1),
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
/// resource "azure_eventgrid_namespace" "example" {
///   name                = "my-eventgrid-namespace"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_eventgrid_namespacetopic" "example" {
///   name                    = "topic-namespace-example"
///   eventgrid_namespace_id  = test.id
///   event_retention_in_days = 1
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
/// import com.pulumi.azure.eventgrid.Namespace;
/// import com.pulumi.azure.eventgrid.NamespaceArgs;
/// import com.pulumi.azure.eventgrid.NamespaceTopic;
/// import com.pulumi.azure.eventgrid.NamespaceTopicArgs;
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
///         var exampleNamespace = new Namespace("exampleNamespace", NamespaceArgs.builder()
///             .name("my-eventgrid-namespace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleNamespaceTopic = new NamespaceTopic("exampleNamespaceTopic", NamespaceTopicArgs.builder()
///             .name("topic-namespace-example")
///             .eventgridNamespaceId(test.id())
///             .eventRetentionInDays(1)
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
///   exampleNamespace:
///     type: azure:eventgrid:Namespace
///     name: example
///     properties:
///       name: my-eventgrid-namespace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleNamespaceTopic:
///     type: azure:eventgrid:NamespaceTopic
///     name: example
///     properties:
///       name: topic-namespace-example
///       eventgridNamespaceId: ${test.id}
///       eventRetentionInDays: 1
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
/// Event Grid Namespace Topics can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:eventgrid/namespaceTopic:NamespaceTopic example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.EventGrid/namespaces/eventgrid1/topics/topic1
/// ```
class NamespaceTopic extends pulumi.CustomResource {
  /// Event retention for the namespace topic expressed in days. Defaults to `7`.
  late final pulumi.Output<int?> eventRetentionInDays;
  /// The ID of the Event Grid Namespace. Changing this forces a new resource to be created.
  late final pulumi.Output<String> eventgridNamespaceId;
  /// The name which should be used for this Event Grid Namespace Topic. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Creates a new [NamespaceTopic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NamespaceTopic]. {@macro pulumi_eventgrid_namespace_topic_namespace_topic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NamespaceTopic(
    String name, {
    NamespaceTopicArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:eventgrid/namespaceTopic:NamespaceTopic',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    eventRetentionInDays = registerOutput<int?>('eventRetentionInDays');
    eventgridNamespaceId = registerOutput<String>('eventgridNamespaceId');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [NamespaceTopic] resource's state with the given [name] and [id].
  static NamespaceTopic get(
    String name,
    pulumi.Input<String> id, {
    NamespaceTopicState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return NamespaceTopic._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  NamespaceTopic._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:eventgrid/namespaceTopic:NamespaceTopic',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    eventRetentionInDays = registerOutput<int?>('eventRetentionInDays');
    eventgridNamespaceId = registerOutput<String>('eventgridNamespaceId');
    this.name = registerOutput<String>('name');
  }

  /// Creates a typed reference to an existing [NamespaceTopic] resource.
  NamespaceTopic.reference(String urn)
    : super(
        'azure:eventgrid/namespaceTopic:NamespaceTopic',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    eventRetentionInDays = registerOutput<int?>('eventRetentionInDays');
    eventgridNamespaceId = registerOutput<String>('eventgridNamespaceId');
    this.name = registerOutput<String>('name');
  }
}
