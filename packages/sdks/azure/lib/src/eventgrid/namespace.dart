import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_args.dart';
import 'namespace_identity.dart';
import 'namespace_inbound_ip_rule.dart';
import 'namespace_state.dart';
import 'namespace_topic_spaces_configuration.dart';

/// Manages an EventGrid Namespace
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
/// example_namespace = azure.eventgrid.Namespace("example",
///     name="my-eventgrid-namespace",
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
///     var exampleNamespace = new Azure.EventGrid.Namespace("example", new()
///     {
///         Name = "my-eventgrid-namespace",
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
/// 		_, err = eventgrid.NewNamespace(ctx, "example", &eventgrid.NamespaceArgs{
/// 			Name:              pulumi.String("my-eventgrid-namespace"),
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
/// import com.pulumi.azure.eventgrid.Namespace;
/// import com.pulumi.azure.eventgrid.NamespaceArgs;
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
///         var exampleNamespace = new Namespace("exampleNamespace", NamespaceArgs.builder()
///             .name("my-eventgrid-namespace")
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
///   exampleNamespace:
///     type: azure:eventgrid:Namespace
///     name: example
///     properties:
///       name: my-eventgrid-namespace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tags:
///         environment: Production
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.EventGrid` - 2023-12-15-preview
///
/// ## Import
///
/// EventGrid Namespace's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:eventgrid/namespace:Namespace namespace1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.EventGrid/namespaces/namespace1
/// ```
class Namespace extends pulumi.CustomResource {
  /// Specifies the Capacity / Throughput Units for an Eventgrid Namespace. Valid values can be between `1` and `40`.
  late final pulumi.Output<int?> capacity;
  /// An `identity` block as defined below.
  late final pulumi.Output<NamespaceIdentity?> identity;
  /// One or more `inbound_ip_rule` blocks as defined below.
  late final pulumi.Output<List<NamespaceInboundIpRule>?> inboundIpRules;
  /// Specifies the supported Azure location where the resource should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the Event Grid Namespace resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Whether or not public network access is allowed for this server. Possible values are `Enabled` and `Disabled`. Defaults to `Enabled`.
  late final pulumi.Output<String?> publicNetworkAccess;
  /// The name of the resource group in which the Event Grid Namespace should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Defines which tier to use. The only possible value is `Standard`. Defaults to `Standard`.
  late final pulumi.Output<String?> sku;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A `topic_spaces_configuration` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<List<NamespaceTopicSpacesConfiguration>?> topicSpacesConfigurations;

  /// Creates a new [Namespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Namespace]. {@macro pulumi_eventgrid_namespace_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Namespace(
    String name, {
    NamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:eventgrid/namespace:Namespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.capacity = registerOutput<int?>('capacity');
    this.identity = registerOutput<NamespaceIdentity?>('identity');
    this.inboundIpRules = registerOutput<List<NamespaceInboundIpRule>?>('inboundIpRules');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.sku = registerOutput<String?>('sku');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.topicSpacesConfigurations = registerOutput<List<NamespaceTopicSpacesConfiguration>?>('topicSpacesConfigurations');
  }

  /// Gets an existing [Namespace] resource's state with the given [name] and [id].
  static Namespace get(
    String name,
    pulumi.Input<String> id, {
    NamespaceState? state,
  }) {
    return Namespace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Namespace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:eventgrid/namespace:Namespace',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.capacity = registerOutput<int?>('capacity');
    this.identity = registerOutput<NamespaceIdentity?>('identity');
    this.inboundIpRules = registerOutput<List<NamespaceInboundIpRule>?>('inboundIpRules');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.sku = registerOutput<String?>('sku');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.topicSpacesConfigurations = registerOutput<List<NamespaceTopicSpacesConfiguration>?>('topicSpacesConfigurations');
  }
}
