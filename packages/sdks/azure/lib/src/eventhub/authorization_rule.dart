import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_rule_args.dart';
import 'authorization_rule_state.dart';

/// Manages a Event Hubs authorization Rule within an Event Hub.
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
///     name: "acceptanceTestEventHubNamespace",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Basic",
///     capacity: 2,
///     tags: {
///         environment: "Production",
///     },
/// });
/// const exampleEventHub = new azure.eventhub.EventHub("example", {
///     name: "acceptanceTestEventHub",
///     namespaceId: exampleEventHubNamespace.id,
///     partitionCount: 2,
///     messageRetention: 2,
/// });
/// const exampleAuthorizationRule = new azure.eventhub.AuthorizationRule("example", {
///     name: "navi",
///     namespaceName: exampleEventHubNamespace.name,
///     eventhubName: exampleEventHub.name,
///     resourceGroupName: example.name,
///     listen: true,
///     send: false,
///     manage: false,
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
///     name="acceptanceTestEventHubNamespace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Basic",
///     capacity=2,
///     tags={
///         "environment": "Production",
///     })
/// example_event_hub = azure.eventhub.EventHub("example",
///     name="acceptanceTestEventHub",
///     namespace_id=example_event_hub_namespace.id,
///     partition_count=2,
///     message_retention=2)
/// example_authorization_rule = azure.eventhub.AuthorizationRule("example",
///     name="navi",
///     namespace_name=example_event_hub_namespace.name,
///     eventhub_name=example_event_hub.name,
///     resource_group_name=example.name,
///     listen=True,
///     send=False,
///     manage=False)
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
///         Name = "acceptanceTestEventHubNamespace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Basic",
///         Capacity = 2,
///         Tags =
///         {
///             { "environment", "Production" },
///         },
///     });
///
///     var exampleEventHub = new Azure.EventHub.EventHub("example", new()
///     {
///         Name = "acceptanceTestEventHub",
///         NamespaceId = exampleEventHubNamespace.Id,
///         PartitionCount = 2,
///         MessageRetention = 2,
///     });
///
///     var exampleAuthorizationRule = new Azure.EventHub.AuthorizationRule("example", new()
///     {
///         Name = "navi",
///         NamespaceName = exampleEventHubNamespace.Name,
///         EventhubName = exampleEventHub.Name,
///         ResourceGroupName = example.Name,
///         Listen = true,
///         Send = false,
///         Manage = false,
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
/// 		exampleEventHubNamespace, err := eventhub.NewEventHubNamespace(ctx, "example", &eventhub.EventHubNamespaceArgs{
/// 			Name:              pulumi.String("acceptanceTestEventHubNamespace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Basic"),
/// 			Capacity:          pulumi.Int(2),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEventHub, err := eventhub.NewEventHub(ctx, "example", &eventhub.EventHubArgs{
/// 			Name:             pulumi.String("acceptanceTestEventHub"),
/// 			NamespaceId:      exampleEventHubNamespace.ID().ToIDOutput().ToStringOutput(),
/// 			PartitionCount:   pulumi.Int(2),
/// 			MessageRetention: pulumi.Int(2),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eventhub.NewAuthorizationRule(ctx, "example", &eventhub.AuthorizationRuleArgs{
/// 			Name:              pulumi.String("navi"),
/// 			NamespaceName:     exampleEventHubNamespace.Name,
/// 			EventhubName:      exampleEventHub.Name,
/// 			ResourceGroupName: example.Name,
/// 			Listen:            pulumi.Bool(true),
/// 			Send:              pulumi.Bool(false),
/// 			Manage:            pulumi.Bool(false),
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
/// resource "azure_eventhub_eventhubnamespace" "example" {
///   name                = "acceptanceTestEventHubNamespace"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "Basic"
///   capacity            = 2
///   tags = {
///     "environment" = "Production"
///   }
/// }
/// resource "azure_eventhub_eventhub" "example" {
///   name              = "acceptanceTestEventHub"
///   namespace_id      = azure_eventhub_eventhubnamespace.example.id
///   partition_count   = 2
///   message_retention = 2
/// }
/// resource "azure_eventhub_authorizationrule" "example" {
///   name                = "navi"
///   namespace_name      = azure_eventhub_eventhubnamespace.example.name
///   eventhub_name       = azure_eventhub_eventhub.example.name
///   resource_group_name = azure_core_resourcegroup.example.name
///   listen              = true
///   send                = false
///   manage              = false
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
/// import com.pulumi.azure.eventhub.EventHub;
/// import com.pulumi.azure.eventhub.EventHubArgs;
/// import com.pulumi.azure.eventhub.AuthorizationRule;
/// import com.pulumi.azure.eventhub.AuthorizationRuleArgs;
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
///         var exampleEventHubNamespace = new EventHubNamespace("exampleEventHubNamespace", EventHubNamespaceArgs.builder()
///             .name("acceptanceTestEventHubNamespace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Basic")
///             .capacity(2)
///             .tags(Map.of("environment", "Production"))
///             .build());
///
///         var exampleEventHub = new EventHub("exampleEventHub", EventHubArgs.builder()
///             .name("acceptanceTestEventHub")
///             .namespaceId(exampleEventHubNamespace.id())
///             .partitionCount(2)
///             .messageRetention(2)
///             .build());
///
///         var exampleAuthorizationRule = new AuthorizationRule("exampleAuthorizationRule", AuthorizationRuleArgs.builder()
///             .name("navi")
///             .namespaceName(exampleEventHubNamespace.name())
///             .eventhubName(exampleEventHub.name())
///             .resourceGroupName(example.name())
///             .listen(true)
///             .send(false)
///             .manage(false)
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
///       name: acceptanceTestEventHubNamespace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Basic
///       capacity: 2
///       tags:
///         environment: Production
///   exampleEventHub:
///     type: azure:eventhub:EventHub
///     name: example
///     properties:
///       name: acceptanceTestEventHub
///       namespaceId: ${exampleEventHubNamespace.id}
///       partitionCount: 2
///       messageRetention: 2
///   exampleAuthorizationRule:
///     type: azure:eventhub:AuthorizationRule
///     name: example
///     properties:
///       name: navi
///       namespaceName: ${exampleEventHubNamespace.name}
///       eventhubName: ${exampleEventHub.name}
///       resourceGroupName: ${example.name}
///       listen: true
///       send: false
///       manage: false
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
/// EventHub Authorization Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:eventhub/authorizationRule:AuthorizationRule rule1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.EventHub/namespaces/namespace1/eventhubs/eventhub1/authorizationRules/rule1
/// ```
class AuthorizationRule extends pulumi.CustomResource {
  /// Specifies the name of the EventHub. Changing this forces a new resource to be created.
  late final pulumi.Output<String> eventhubName;
  /// Does this Authorization Rule have permissions to Listen to the Event Hub? Defaults to `false`.
  late final pulumi.Output<bool?> listen;
  /// Does this Authorization Rule have permissions to Manage to the Event Hub? When this property is `true` - both `listen` and `send` must be too. Defaults to `false`.
  late final pulumi.Output<bool?> manage;
  /// Specifies the name of the EventHub Authorization Rule resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the name of the grandparent EventHub Namespace. Changing this forces a new resource to be created.
  late final pulumi.Output<String> namespaceName;
  /// The Primary Connection String for the Event Hubs authorization Rule.
  late final pulumi.Output<String> primaryConnectionString;
  /// The alias of the Primary Connection String for the Event Hubs authorization Rule, which is generated when disaster recovery is enabled.
  late final pulumi.Output<String> primaryConnectionStringAlias;
  /// The Primary Key for the Event Hubs authorization Rule.
  late final pulumi.Output<String> primaryKey;
  /// The name of the resource group in which the EventHub Namespace exists. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** At least one of the 3 permissions below needs to be set.
  late final pulumi.Output<String> resourceGroupName;
  /// The Secondary Connection String for the Event Hubs Authorization Rule.
  late final pulumi.Output<String> secondaryConnectionString;
  /// The alias of the Secondary Connection String for the Event Hubs Authorization Rule, which is generated when disaster recovery is enabled.
  late final pulumi.Output<String> secondaryConnectionStringAlias;
  /// The Secondary Key for the Event Hubs Authorization Rule.
  late final pulumi.Output<String> secondaryKey;
  /// Does this Authorization Rule have permissions to Send to the Event Hub? Defaults to `false`.
  late final pulumi.Output<bool?> send;

  /// Creates a new [AuthorizationRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuthorizationRule]. {@macro pulumi_eventhub_authorization_rule_authorization_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuthorizationRule(
    String name, {
    AuthorizationRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:eventhub/authorizationRule:AuthorizationRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['primaryConnectionString', 'primaryConnectionStringAlias', 'primaryKey', 'secondaryConnectionString', 'secondaryConnectionStringAlias', 'secondaryKey'],
        ) {
    eventhubName = registerOutput<String>('eventhubName');
    listen = registerOutput<bool?>('listen');
    manage = registerOutput<bool?>('manage');
    this.name = registerOutput<String>('name');
    namespaceName = registerOutput<String>('namespaceName');
    primaryConnectionString = registerOutput<String>('primaryConnectionString', isSecret: true);
    primaryConnectionStringAlias = registerOutput<String>('primaryConnectionStringAlias', isSecret: true);
    primaryKey = registerOutput<String>('primaryKey', isSecret: true);
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryConnectionString = registerOutput<String>('secondaryConnectionString', isSecret: true);
    secondaryConnectionStringAlias = registerOutput<String>('secondaryConnectionStringAlias', isSecret: true);
    secondaryKey = registerOutput<String>('secondaryKey', isSecret: true);
    send = registerOutput<bool?>('send');
  }

  /// Gets an existing [AuthorizationRule] resource's state with the given [name] and [id].
  static AuthorizationRule get(
    String name,
    pulumi.Input<String> id, {
    AuthorizationRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AuthorizationRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AuthorizationRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:eventhub/authorizationRule:AuthorizationRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    eventhubName = registerOutput<String>('eventhubName');
    listen = registerOutput<bool?>('listen');
    manage = registerOutput<bool?>('manage');
    this.name = registerOutput<String>('name');
    namespaceName = registerOutput<String>('namespaceName');
    primaryConnectionString = registerOutput<String>('primaryConnectionString', isSecret: true);
    primaryConnectionStringAlias = registerOutput<String>('primaryConnectionStringAlias', isSecret: true);
    primaryKey = registerOutput<String>('primaryKey', isSecret: true);
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryConnectionString = registerOutput<String>('secondaryConnectionString', isSecret: true);
    secondaryConnectionStringAlias = registerOutput<String>('secondaryConnectionStringAlias', isSecret: true);
    secondaryKey = registerOutput<String>('secondaryKey', isSecret: true);
    send = registerOutput<bool?>('send');
  }

  /// Creates a typed reference to an existing [AuthorizationRule] resource.
  AuthorizationRule.reference(String urn)
    : super(
        'azure:eventhub/authorizationRule:AuthorizationRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['primaryConnectionString', 'primaryConnectionStringAlias', 'primaryKey', 'secondaryConnectionString', 'secondaryConnectionStringAlias', 'secondaryKey'],
        isResourceReference: true,
      ) {
    eventhubName = registerOutput<String>('eventhubName');
    listen = registerOutput<bool?>('listen');
    manage = registerOutput<bool?>('manage');
    this.name = registerOutput<String>('name');
    namespaceName = registerOutput<String>('namespaceName');
    primaryConnectionString = registerOutput<String>('primaryConnectionString', isSecret: true);
    primaryConnectionStringAlias = registerOutput<String>('primaryConnectionStringAlias', isSecret: true);
    primaryKey = registerOutput<String>('primaryKey', isSecret: true);
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryConnectionString = registerOutput<String>('secondaryConnectionString', isSecret: true);
    secondaryConnectionStringAlias = registerOutput<String>('secondaryConnectionStringAlias', isSecret: true);
    secondaryKey = registerOutput<String>('secondaryKey', isSecret: true);
    send = registerOutput<bool?>('send');
  }
}
