import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_hub_namespace_authorization_rule_args.dart';
import 'event_hub_namespace_authorization_rule_state.dart';

/// Manages an Authorization Rule for an Event Hub Namespace.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "resourcegroup",
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
/// const exampleEventHubNamespaceAuthorizationRule = new azure.eventhub.EventHubNamespaceAuthorizationRule("example", {
///     name: "navi",
///     namespaceName: exampleEventHubNamespace.name,
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
///     name="resourcegroup",
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
/// example_event_hub_namespace_authorization_rule = azure.eventhub.EventHubNamespaceAuthorizationRule("example",
///     name="navi",
///     namespace_name=example_event_hub_namespace.name,
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
///         Name = "resourcegroup",
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
///     var exampleEventHubNamespaceAuthorizationRule = new Azure.EventHub.EventHubNamespaceAuthorizationRule("example", new()
///     {
///         Name = "navi",
///         NamespaceName = exampleEventHubNamespace.Name,
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
/// 			Name:     pulumi.String("resourcegroup"),
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
/// 		_, err = eventhub.NewEventHubNamespaceAuthorizationRule(ctx, "example", &eventhub.EventHubNamespaceAuthorizationRuleArgs{
/// 			Name:              pulumi.String("navi"),
/// 			NamespaceName:     exampleEventHubNamespace.Name,
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
/// import com.pulumi.azure.eventhub.EventHubNamespaceAuthorizationRule;
/// import com.pulumi.azure.eventhub.EventHubNamespaceAuthorizationRuleArgs;
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
///             .name("resourcegroup")
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
///         var exampleEventHubNamespaceAuthorizationRule = new EventHubNamespaceAuthorizationRule("exampleEventHubNamespaceAuthorizationRule", EventHubNamespaceAuthorizationRuleArgs.builder()
///             .name("navi")
///             .namespaceName(exampleEventHubNamespace.name())
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
///       name: resourcegroup
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
///   exampleEventHubNamespaceAuthorizationRule:
///     type: azure:eventhub:EventHubNamespaceAuthorizationRule
///     name: example
///     properties:
///       name: navi
///       namespaceName: ${exampleEventHubNamespace.name}
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
/// EventHub Namespace Authorization Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:eventhub/eventHubNamespaceAuthorizationRule:EventHubNamespaceAuthorizationRule example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.EventHub/namespaces/namespace1/authorizationRules/rule1
/// ```
class EventHubNamespaceAuthorizationRule extends pulumi.CustomResource {
  /// Grants listen access to this this Authorization Rule. Defaults to `false`.
  late final pulumi.Output<bool?> listen;
  /// Grants manage access to this this Authorization Rule. When this property is `true` - both `listen` and `send` must be too. Defaults to `false`.
  late final pulumi.Output<bool?> manage;
  /// Specifies the name of the Authorization Rule. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the name of the EventHub Namespace. Changing this forces a new resource to be created.
  late final pulumi.Output<String> namespaceName;
  /// The Primary Connection String for the Authorization Rule.
  late final pulumi.Output<String> primaryConnectionString;
  /// The alias of the Primary Connection String for the Authorization Rule, which is generated when disaster recovery is enabled.
  late final pulumi.Output<String> primaryConnectionStringAlias;
  /// The Primary Key for the Authorization Rule.
  late final pulumi.Output<String> primaryKey;
  /// The name of the resource group in which the EventHub Namespace exists. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** At least one of the 3 permissions below needs to be set.
  late final pulumi.Output<String> resourceGroupName;
  /// The Secondary Connection String for the Authorization Rule.
  late final pulumi.Output<String> secondaryConnectionString;
  /// The alias of the Secondary Connection String for the Authorization Rule, which is generated when disaster recovery is enabled.
  late final pulumi.Output<String> secondaryConnectionStringAlias;
  /// The Secondary Key for the Authorization Rule.
  late final pulumi.Output<String> secondaryKey;
  /// Grants send access to this this Authorization Rule. Defaults to `false`.
  late final pulumi.Output<bool?> send;

  /// Creates a new [EventHubNamespaceAuthorizationRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventHubNamespaceAuthorizationRule]. {@macro pulumi_eventhub_event_hub_namespace_authorization_rule_event_hub_namespace_authorization_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventHubNamespaceAuthorizationRule(
    String name, {
    EventHubNamespaceAuthorizationRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:eventhub/eventHubNamespaceAuthorizationRule:EventHubNamespaceAuthorizationRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    listen = registerOutput<bool?>('listen');
    manage = registerOutput<bool?>('manage');
    this.name = registerOutput<String>('name');
    namespaceName = registerOutput<String>('namespaceName');
    primaryConnectionString = registerOutput<String>('primaryConnectionString');
    primaryConnectionStringAlias = registerOutput<String>('primaryConnectionStringAlias');
    primaryKey = registerOutput<String>('primaryKey');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryConnectionString = registerOutput<String>('secondaryConnectionString');
    secondaryConnectionStringAlias = registerOutput<String>('secondaryConnectionStringAlias');
    secondaryKey = registerOutput<String>('secondaryKey');
    send = registerOutput<bool?>('send');
  }

  /// Gets an existing [EventHubNamespaceAuthorizationRule] resource's state with the given [name] and [id].
  static EventHubNamespaceAuthorizationRule get(
    String name,
    pulumi.Input<String> id, {
    EventHubNamespaceAuthorizationRuleState? state,
  }) {
    return EventHubNamespaceAuthorizationRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EventHubNamespaceAuthorizationRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:eventhub/eventHubNamespaceAuthorizationRule:EventHubNamespaceAuthorizationRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    listen = registerOutput<bool?>('listen');
    manage = registerOutput<bool?>('manage');
    this.name = registerOutput<String>('name');
    namespaceName = registerOutput<String>('namespaceName');
    primaryConnectionString = registerOutput<String>('primaryConnectionString');
    primaryConnectionStringAlias = registerOutput<String>('primaryConnectionStringAlias');
    primaryKey = registerOutput<String>('primaryKey');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryConnectionString = registerOutput<String>('secondaryConnectionString');
    secondaryConnectionStringAlias = registerOutput<String>('secondaryConnectionStringAlias');
    secondaryKey = registerOutput<String>('secondaryKey');
    send = registerOutput<bool?>('send');
  }
}
