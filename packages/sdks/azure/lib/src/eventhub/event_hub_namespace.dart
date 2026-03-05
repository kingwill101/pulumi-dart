import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_hub_namespace_args.dart';
import 'event_hub_namespace_identity.dart';
import 'event_hub_namespace_network_rulesets.dart';
import 'event_hub_namespace_state.dart';

/// Manages an EventHub Namespace.
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
/// const exampleEventHubNamespace = new azure.eventhub.EventHubNamespace("example", {
///     name: "example-namespace",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard",
///     capacity: 2,
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
/// example_event_hub_namespace = azure.eventhub.EventHubNamespace("example",
///     name="example-namespace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard",
///     capacity=2,
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
///     var exampleEventHubNamespace = new Azure.EventHub.EventHubNamespace("example", new()
///     {
///         Name = "example-namespace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard",
///         Capacity = 2,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventhub"
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
/// 		_, err = eventhub.NewEventHubNamespace(ctx, "example", &eventhub.EventHubNamespaceArgs{
/// 			Name:              pulumi.String("example-namespace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 			Capacity:          pulumi.Int(2),
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
/// import com.pulumi.azure.eventhub.EventHubNamespace;
/// import com.pulumi.azure.eventhub.EventHubNamespaceArgs;
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
///         var exampleEventHubNamespace = new EventHubNamespace("exampleEventHubNamespace", EventHubNamespaceArgs.builder()
///             .name("example-namespace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard")
///             .capacity(2)
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
///   exampleEventHubNamespace:
///     type: azure:eventhub:EventHubNamespace
///     name: example
///     properties:
///       name: example-namespace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard
///       capacity: 2
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
/// * `Microsoft.EventHub` - 2024-01-01
///
/// ## Import
///
/// EventHub Namespaces can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:eventhub/eventHubNamespace:EventHubNamespace namespace1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.EventHub/namespaces/namespace1
/// ```
class EventHubNamespace extends pulumi.CustomResource {
  /// Is Auto Inflate enabled for the EventHub Namespace?
  late final pulumi.Output<bool?> autoInflateEnabled;
  /// Specifies the Capacity / Throughput Units for a `Standard` SKU namespace. Default capacity has a maximum of `2`, but can be increased in blocks of 2 on a committed purchase basis. Defaults to `1`.
  late final pulumi.Output<int?> capacity;
  /// Specifies the ID of the EventHub Dedicated Cluster where this Namespace should created. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> dedicatedClusterId;
  /// The primary connection string for the authorization rule `RootManageSharedAccessKey`.
  late final pulumi.Output<String> defaultPrimaryConnectionString;
  /// The alias of the primary connection string for the authorization rule `RootManageSharedAccessKey`, which is generated when disaster recovery is enabled.
  late final pulumi.Output<String> defaultPrimaryConnectionStringAlias;
  /// The primary access key for the authorization rule `RootManageSharedAccessKey`.
  late final pulumi.Output<String> defaultPrimaryKey;
  /// The secondary connection string for the authorization rule `RootManageSharedAccessKey`.
  late final pulumi.Output<String> defaultSecondaryConnectionString;
  /// The alias of the secondary connection string for the authorization rule `RootManageSharedAccessKey`, which is generated when disaster recovery is enabled.
  late final pulumi.Output<String> defaultSecondaryConnectionStringAlias;
  /// The secondary access key for the authorization rule `RootManageSharedAccessKey`.
  late final pulumi.Output<String> defaultSecondaryKey;
  /// An `identity` block as defined below.
  late final pulumi.Output<EventHubNamespaceIdentity?> identity;
  /// Is SAS authentication enabled for the EventHub Namespace? Defaults to `true`.
  late final pulumi.Output<bool?> localAuthenticationEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the maximum number of throughput units when Auto Inflate is Enabled. Valid values range from `1` - `40`.
  late final pulumi.Output<int?> maximumThroughputUnits;
  /// The minimum supported TLS version for this EventHub Namespace. Valid values are: `1.0`, `1.1` and `1.2`. Defaults to `1.2`.
  ///
  /// &gt; **Note:** Azure Services will require TLS 1.2+ by August 2025, please see this [announcement](https://azure.microsoft.com/en-us/updates/v2/update-retirement-tls1-0-tls1-1-versions-azure-services/) for more.
  late final pulumi.Output<String?> minimumTlsVersion;
  /// Specifies the name of the EventHub Namespace resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A `network_rulesets` block as defined below.
  late final pulumi.Output<EventHubNamespaceNetworkRulesets> networkRulesets;
  /// Is public network access enabled for the EventHub Namespace? Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The name of the resource group in which to create the namespace. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Defines which tier to use. Valid options are `Basic`, `Standard`, and `Premium`. Please note that setting this field to `Premium` will force the creation of a new resource.
  late final pulumi.Output<String> sku;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [EventHubNamespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventHubNamespace]. {@macro pulumi_eventhub_event_hub_namespace_event_hub_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventHubNamespace(
    String name, {
    EventHubNamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:eventhub/eventHubNamespace:EventHubNamespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoInflateEnabled = registerOutput<bool?>('autoInflateEnabled');
    capacity = registerOutput<int?>('capacity');
    dedicatedClusterId = registerOutput<String?>('dedicatedClusterId');
    defaultPrimaryConnectionString = registerOutput<String>('defaultPrimaryConnectionString');
    defaultPrimaryConnectionStringAlias = registerOutput<String>('defaultPrimaryConnectionStringAlias');
    defaultPrimaryKey = registerOutput<String>('defaultPrimaryKey');
    defaultSecondaryConnectionString = registerOutput<String>('defaultSecondaryConnectionString');
    defaultSecondaryConnectionStringAlias = registerOutput<String>('defaultSecondaryConnectionStringAlias');
    defaultSecondaryKey = registerOutput<String>('defaultSecondaryKey');
    identity = registerOutput<EventHubNamespaceIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventHubNamespaceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    localAuthenticationEnabled = registerOutput<bool?>('localAuthenticationEnabled');
    location = registerOutput<String>('location');
    maximumThroughputUnits = registerOutput<int?>('maximumThroughputUnits');
    minimumTlsVersion = registerOutput<String?>('minimumTlsVersion');
    this.name = registerOutput<String>('name');
    networkRulesets = registerOutput<EventHubNamespaceNetworkRulesets>('networkRulesets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventHubNamespaceNetworkRulesets.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<String>('sku');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [EventHubNamespace] resource's state with the given [name] and [id].
  static EventHubNamespace get(
    String name,
    pulumi.Input<String> id, {
    EventHubNamespaceState? state,
  }) {
    return EventHubNamespace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EventHubNamespace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:eventhub/eventHubNamespace:EventHubNamespace',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoInflateEnabled = registerOutput<bool?>('autoInflateEnabled');
    capacity = registerOutput<int?>('capacity');
    dedicatedClusterId = registerOutput<String?>('dedicatedClusterId');
    defaultPrimaryConnectionString = registerOutput<String>('defaultPrimaryConnectionString');
    defaultPrimaryConnectionStringAlias = registerOutput<String>('defaultPrimaryConnectionStringAlias');
    defaultPrimaryKey = registerOutput<String>('defaultPrimaryKey');
    defaultSecondaryConnectionString = registerOutput<String>('defaultSecondaryConnectionString');
    defaultSecondaryConnectionStringAlias = registerOutput<String>('defaultSecondaryConnectionStringAlias');
    defaultSecondaryKey = registerOutput<String>('defaultSecondaryKey');
    identity = registerOutput<EventHubNamespaceIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventHubNamespaceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    localAuthenticationEnabled = registerOutput<bool?>('localAuthenticationEnabled');
    location = registerOutput<String>('location');
    maximumThroughputUnits = registerOutput<int?>('maximumThroughputUnits');
    minimumTlsVersion = registerOutput<String?>('minimumTlsVersion');
    this.name = registerOutput<String>('name');
    networkRulesets = registerOutput<EventHubNamespaceNetworkRulesets>('networkRulesets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventHubNamespaceNetworkRulesets.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<String>('sku');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
