import 'package:pulumi/pulumi.dart' as pulumi;
import 'eventhub_namespace_disaster_recovery_config_args.dart';
import 'eventhub_namespace_disaster_recovery_config_state.dart';

/// Manages an Disaster Recovery Config for an Event Hub Namespace.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "eventhub-replication",
///     location: "West Europe",
/// });
/// const primary = new azure.eventhub.EventHubNamespace("primary", {
///     name: "eventhub-primary",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard",
/// });
/// const secondary = new azure.eventhub.EventHubNamespace("secondary", {
///     name: "eventhub-secondary",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard",
/// });
/// const exampleEventhubNamespaceDisasterRecoveryConfig = new azure.eventhub.EventhubNamespaceDisasterRecoveryConfig("example", {
///     name: "replicate-eventhub",
///     resourceGroupName: example.name,
///     namespaceName: primary.name,
///     partnerNamespaceId: secondary.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="eventhub-replication",
///     location="West Europe")
/// primary = azure.eventhub.EventHubNamespace("primary",
///     name="eventhub-primary",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard")
/// secondary = azure.eventhub.EventHubNamespace("secondary",
///     name="eventhub-secondary",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard")
/// example_eventhub_namespace_disaster_recovery_config = azure.eventhub.EventhubNamespaceDisasterRecoveryConfig("example",
///     name="replicate-eventhub",
///     resource_group_name=example.name,
///     namespace_name=primary.name,
///     partner_namespace_id=secondary.id)
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
///         Name = "eventhub-replication",
///         Location = "West Europe",
///     });
///
///     var primary = new Azure.EventHub.EventHubNamespace("primary", new()
///     {
///         Name = "eventhub-primary",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard",
///     });
///
///     var secondary = new Azure.EventHub.EventHubNamespace("secondary", new()
///     {
///         Name = "eventhub-secondary",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard",
///     });
///
///     var exampleEventhubNamespaceDisasterRecoveryConfig = new Azure.EventHub.EventhubNamespaceDisasterRecoveryConfig("example", new()
///     {
///         Name = "replicate-eventhub",
///         ResourceGroupName = example.Name,
///         NamespaceName = primary.Name,
///         PartnerNamespaceId = secondary.Id,
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
/// 			Name:     pulumi.String("eventhub-replication"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primary, err := eventhub.NewEventHubNamespace(ctx, "primary", &eventhub.EventHubNamespaceArgs{
/// 			Name:              pulumi.String("eventhub-primary"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secondary, err := eventhub.NewEventHubNamespace(ctx, "secondary", &eventhub.EventHubNamespaceArgs{
/// 			Name:              pulumi.String("eventhub-secondary"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eventhub.NewEventhubNamespaceDisasterRecoveryConfig(ctx, "example", &eventhub.EventhubNamespaceDisasterRecoveryConfigArgs{
/// 			Name:               pulumi.String("replicate-eventhub"),
/// 			ResourceGroupName:  example.Name,
/// 			NamespaceName:      primary.Name,
/// 			PartnerNamespaceId: secondary.ID(),
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
/// import com.pulumi.azure.eventhub.EventhubNamespaceDisasterRecoveryConfig;
/// import com.pulumi.azure.eventhub.EventhubNamespaceDisasterRecoveryConfigArgs;
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
///             .name("eventhub-replication")
///             .location("West Europe")
///             .build());
///
///         var primary = new EventHubNamespace("primary", EventHubNamespaceArgs.builder()
///             .name("eventhub-primary")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard")
///             .build());
///
///         var secondary = new EventHubNamespace("secondary", EventHubNamespaceArgs.builder()
///             .name("eventhub-secondary")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard")
///             .build());
///
///         var exampleEventhubNamespaceDisasterRecoveryConfig = new EventhubNamespaceDisasterRecoveryConfig("exampleEventhubNamespaceDisasterRecoveryConfig", EventhubNamespaceDisasterRecoveryConfigArgs.builder()
///             .name("replicate-eventhub")
///             .resourceGroupName(example.name())
///             .namespaceName(primary.name())
///             .partnerNamespaceId(secondary.id())
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
///       name: eventhub-replication
///       location: West Europe
///   primary:
///     type: azure:eventhub:EventHubNamespace
///     properties:
///       name: eventhub-primary
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard
///   secondary:
///     type: azure:eventhub:EventHubNamespace
///     properties:
///       name: eventhub-secondary
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard
///   exampleEventhubNamespaceDisasterRecoveryConfig:
///     type: azure:eventhub:EventhubNamespaceDisasterRecoveryConfig
///     name: example
///     properties:
///       name: replicate-eventhub
///       resourceGroupName: ${example.name}
///       namespaceName: ${primary.name}
///       partnerNamespaceId: ${secondary.id}
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
/// EventHubs can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:eventhub/eventhubNamespaceDisasterRecoveryConfig:EventhubNamespaceDisasterRecoveryConfig config1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.EventHub/namespaces/namespace1/disasterRecoveryConfigs/config1
/// ```
class EventhubNamespaceDisasterRecoveryConfig extends pulumi.CustomResource {
  /// Specifies the name of the Disaster Recovery Config. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Specifies the name of the primary EventHub Namespace to replicate. Changing this forces a new resource to be created.
  late final pulumi.Output<String> namespaceName;

  /// The ID of the EventHub Namespace to replicate to.
  late final pulumi.Output<String> partnerNamespaceId;

  /// The name of the resource group in which the Disaster Recovery Config exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [EventhubNamespaceDisasterRecoveryConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventhubNamespaceDisasterRecoveryConfig]. {@macro pulumi_eventhub_eventhub_namespace_disaster_recovery_config_eventhub_namespace_disaster_recovery_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventhubNamespaceDisasterRecoveryConfig(
    String name, {
    EventhubNamespaceDisasterRecoveryConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:eventhub/eventhubNamespaceDisasterRecoveryConfig:EventhubNamespaceDisasterRecoveryConfig',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.name = registerOutput<String>('name');
    namespaceName = registerOutput<String>('namespaceName');
    partnerNamespaceId = registerOutput<String>('partnerNamespaceId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Gets an existing [EventhubNamespaceDisasterRecoveryConfig] resource's state with the given [name] and [id].
  static EventhubNamespaceDisasterRecoveryConfig get(
    String name,
    pulumi.Input<String> id, {
    EventhubNamespaceDisasterRecoveryConfigState? state,
  }) {
    return EventhubNamespaceDisasterRecoveryConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EventhubNamespaceDisasterRecoveryConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:eventhub/eventhubNamespaceDisasterRecoveryConfig:EventhubNamespaceDisasterRecoveryConfig',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.name = registerOutput<String>('name');
    namespaceName = registerOutput<String>('namespaceName');
    partnerNamespaceId = registerOutput<String>('partnerNamespaceId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}
