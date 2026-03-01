import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_event_hub_args.dart';
import 'endpoint_event_hub_state.dart';

/// Manages a Digital Twins Event Hub Endpoint.
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
/// const exampleEventHubNamespace = new azure.eventhub.EventHubNamespace("example", {
///     name: "example-eh-ns",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard",
/// });
/// const exampleEventHub = new azure.eventhub.EventHub("example", {
///     name: "example-eh",
///     namespaceName: exampleEventHubNamespace.name,
///     resourceGroupName: example.name,
///     partitionCount: 2,
///     messageRetention: 1,
/// });
/// const exampleAuthorizationRule = new azure.eventhub.AuthorizationRule("example", {
///     name: "example-ar",
///     namespaceName: exampleEventHubNamespace.name,
///     eventhubName: exampleEventHub.name,
///     resourceGroupName: example.name,
///     listen: false,
///     send: true,
///     manage: false,
/// });
/// const exampleEndpointEventHub = new azure.digitaltwins.EndpointEventHub("example", {
///     name: "example-EH",
///     digitalTwinsId: exampleInstance.id,
///     eventhubPrimaryConnectionString: exampleAuthorizationRule.primaryConnectionString,
///     eventhubSecondaryConnectionString: exampleAuthorizationRule.secondaryConnectionString,
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
/// example_event_hub_namespace = azure.eventhub.EventHubNamespace("example",
///     name="example-eh-ns",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard")
/// example_event_hub = azure.eventhub.EventHub("example",
///     name="example-eh",
///     namespace_name=example_event_hub_namespace.name,
///     resource_group_name=example.name,
///     partition_count=2,
///     message_retention=1)
/// example_authorization_rule = azure.eventhub.AuthorizationRule("example",
///     name="example-ar",
///     namespace_name=example_event_hub_namespace.name,
///     eventhub_name=example_event_hub.name,
///     resource_group_name=example.name,
///     listen=False,
///     send=True,
///     manage=False)
/// example_endpoint_event_hub = azure.digitaltwins.EndpointEventHub("example",
///     name="example-EH",
///     digital_twins_id=example_instance.id,
///     eventhub_primary_connection_string=example_authorization_rule.primary_connection_string,
///     eventhub_secondary_connection_string=example_authorization_rule.secondary_connection_string)
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
///     var exampleEventHubNamespace = new Azure.EventHub.EventHubNamespace("example", new()
///     {
///         Name = "example-eh-ns",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard",
///     });
///
///     var exampleEventHub = new Azure.EventHub.EventHub("example", new()
///     {
///         Name = "example-eh",
///         NamespaceName = exampleEventHubNamespace.Name,
///         ResourceGroupName = example.Name,
///         PartitionCount = 2,
///         MessageRetention = 1,
///     });
///
///     var exampleAuthorizationRule = new Azure.EventHub.AuthorizationRule("example", new()
///     {
///         Name = "example-ar",
///         NamespaceName = exampleEventHubNamespace.Name,
///         EventhubName = exampleEventHub.Name,
///         ResourceGroupName = example.Name,
///         Listen = false,
///         Send = true,
///         Manage = false,
///     });
///
///     var exampleEndpointEventHub = new Azure.DigitalTwins.EndpointEventHub("example", new()
///     {
///         Name = "example-EH",
///         DigitalTwinsId = exampleInstance.Id,
///         EventhubPrimaryConnectionString = exampleAuthorizationRule.PrimaryConnectionString,
///         EventhubSecondaryConnectionString = exampleAuthorizationRule.SecondaryConnectionString,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventhub"
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
/// 		exampleEventHubNamespace, err := eventhub.NewEventHubNamespace(ctx, "example", &eventhub.EventHubNamespaceArgs{
/// 			Name:              pulumi.String("example-eh-ns"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEventHub, err := eventhub.NewEventHub(ctx, "example", &eventhub.EventHubArgs{
/// 			Name:              pulumi.String("example-eh"),
/// 			NamespaceName:     exampleEventHubNamespace.Name,
/// 			ResourceGroupName: example.Name,
/// 			PartitionCount:    pulumi.Int(2),
/// 			MessageRetention:  pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAuthorizationRule, err := eventhub.NewAuthorizationRule(ctx, "example", &eventhub.AuthorizationRuleArgs{
/// 			Name:              pulumi.String("example-ar"),
/// 			NamespaceName:     exampleEventHubNamespace.Name,
/// 			EventhubName:      exampleEventHub.Name,
/// 			ResourceGroupName: example.Name,
/// 			Listen:            pulumi.Bool(false),
/// 			Send:              pulumi.Bool(true),
/// 			Manage:            pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitaltwins.NewEndpointEventHub(ctx, "example", &digitaltwins.EndpointEventHubArgs{
/// 			Name:                              pulumi.String("example-EH"),
/// 			DigitalTwinsId:                    exampleInstance.ID(),
/// 			EventhubPrimaryConnectionString:   exampleAuthorizationRule.PrimaryConnectionString,
/// 			EventhubSecondaryConnectionString: exampleAuthorizationRule.SecondaryConnectionString,
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
/// import com.pulumi.azure.digitaltwins.Instance;
/// import com.pulumi.azure.digitaltwins.InstanceArgs;
/// import com.pulumi.azure.eventhub.EventHubNamespace;
/// import com.pulumi.azure.eventhub.EventHubNamespaceArgs;
/// import com.pulumi.azure.eventhub.EventHub;
/// import com.pulumi.azure.eventhub.EventHubArgs;
/// import com.pulumi.azure.eventhub.AuthorizationRule;
/// import com.pulumi.azure.eventhub.AuthorizationRuleArgs;
/// import com.pulumi.azure.digitaltwins.EndpointEventHub;
/// import com.pulumi.azure.digitaltwins.EndpointEventHubArgs;
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
///         var exampleEventHubNamespace = new EventHubNamespace("exampleEventHubNamespace", EventHubNamespaceArgs.builder()
///             .name("example-eh-ns")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard")
///             .build());
///
///         var exampleEventHub = new EventHub("exampleEventHub", EventHubArgs.builder()
///             .name("example-eh")
///             .namespaceName(exampleEventHubNamespace.name())
///             .resourceGroupName(example.name())
///             .partitionCount(2)
///             .messageRetention(1)
///             .build());
///
///         var exampleAuthorizationRule = new AuthorizationRule("exampleAuthorizationRule", AuthorizationRuleArgs.builder()
///             .name("example-ar")
///             .namespaceName(exampleEventHubNamespace.name())
///             .eventhubName(exampleEventHub.name())
///             .resourceGroupName(example.name())
///             .listen(false)
///             .send(true)
///             .manage(false)
///             .build());
///
///         var exampleEndpointEventHub = new EndpointEventHub("exampleEndpointEventHub", EndpointEventHubArgs.builder()
///             .name("example-EH")
///             .digitalTwinsId(exampleInstance.id())
///             .eventhubPrimaryConnectionString(exampleAuthorizationRule.primaryConnectionString())
///             .eventhubSecondaryConnectionString(exampleAuthorizationRule.secondaryConnectionString())
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
///   exampleEventHubNamespace:
///     type: azure:eventhub:EventHubNamespace
///     name: example
///     properties:
///       name: example-eh-ns
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard
///   exampleEventHub:
///     type: azure:eventhub:EventHub
///     name: example
///     properties:
///       name: example-eh
///       namespaceName: ${exampleEventHubNamespace.name}
///       resourceGroupName: ${example.name}
///       partitionCount: 2
///       messageRetention: 1
///   exampleAuthorizationRule:
///     type: azure:eventhub:AuthorizationRule
///     name: example
///     properties:
///       name: example-ar
///       namespaceName: ${exampleEventHubNamespace.name}
///       eventhubName: ${exampleEventHub.name}
///       resourceGroupName: ${example.name}
///       listen: false
///       send: true
///       manage: false
///   exampleEndpointEventHub:
///     type: azure:digitaltwins:EndpointEventHub
///     name: example
///     properties:
///       name: example-EH
///       digitalTwinsId: ${exampleInstance.id}
///       eventhubPrimaryConnectionString: ${exampleAuthorizationRule.primaryConnectionString}
///       eventhubSecondaryConnectionString: ${exampleAuthorizationRule.secondaryConnectionString}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DigitalTwins` - 2023-01-31
///
/// ## Import
///
/// Digital Twins Eventhub Endpoints can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:digitaltwins/endpointEventHub:EndpointEventHub example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DigitalTwins/digitalTwinsInstances/dt1/endpoints/ep1
/// ```
class EndpointEventHub extends pulumi.CustomResource {
  /// The storage secret of the dead-lettering, whose format is `https://<storageAccountname>.blob.core.windows.net/<containerName>?<SASToken>`. When an endpoint can't deliver an event within a certain time period or after trying to deliver the event a certain number of times, it can send the undelivered event to a storage account.
  late final pulumi.Output<String?> deadLetterStorageSecret;
  /// The resource ID of the Digital Twins Instance. Changing this forces a new Digital Twins Event Hub Endpoint to be created.
  late final pulumi.Output<String> digitalTwinsId;
  /// The primary connection string of the Event Hub Authorization Rule with a minimum of `send` permission.
  late final pulumi.Output<String> eventhubPrimaryConnectionString;
  /// The secondary connection string of the Event Hub Authorization Rule with a minimum of `send` permission.
  late final pulumi.Output<String> eventhubSecondaryConnectionString;
  /// The name which should be used for this Digital Twins Event Hub Endpoint. Changing this forces a new Digital Twins Event Hub Endpoint to be created.
  late final pulumi.Output<String> name;

  /// Creates a new [EndpointEventHub].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointEventHub]. {@macro pulumi_digitaltwins_endpoint_event_hub_endpoint_event_hub_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointEventHub(
    String name, {
    EndpointEventHubArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:digitaltwins/endpointEventHub:EndpointEventHub',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.deadLetterStorageSecret = registerOutput<String?>('deadLetterStorageSecret');
    this.digitalTwinsId = registerOutput<String>('digitalTwinsId');
    this.eventhubPrimaryConnectionString = registerOutput<String>('eventhubPrimaryConnectionString');
    this.eventhubSecondaryConnectionString = registerOutput<String>('eventhubSecondaryConnectionString');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [EndpointEventHub] resource's state with the given [name] and [id].
  static EndpointEventHub get(
    String name,
    pulumi.Input<String> id, {
    EndpointEventHubState? state,
  }) {
    return EndpointEventHub._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EndpointEventHub._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:digitaltwins/endpointEventHub:EndpointEventHub',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.deadLetterStorageSecret = registerOutput<String?>('deadLetterStorageSecret');
    this.digitalTwinsId = registerOutput<String>('digitalTwinsId');
    this.eventhubPrimaryConnectionString = registerOutput<String>('eventhubPrimaryConnectionString');
    this.eventhubSecondaryConnectionString = registerOutput<String>('eventhubSecondaryConnectionString');
    this.name = registerOutput<String>('name');
  }
}
