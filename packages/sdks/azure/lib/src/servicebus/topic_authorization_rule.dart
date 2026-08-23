import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_authorization_rule_args.dart';
import 'topic_authorization_rule_state.dart';

/// Manages a ServiceBus Topic authorization Rule within a ServiceBus Topic.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "tfex-servicebus",
///     location: "West Europe",
/// });
/// const exampleNamespace = new azure.servicebus.Namespace("example", {
///     name: "tfex-servicebus-namespace",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard",
///     tags: {
///         source: "example",
///     },
/// });
/// const exampleTopic = new azure.servicebus.Topic("example", {
///     name: "tfex_servicebus_topic",
///     namespaceId: exampleNamespace.id,
/// });
/// const exampleTopicAuthorizationRule = new azure.servicebus.TopicAuthorizationRule("example", {
///     name: "tfex_servicebus_topic_sasPolicy",
///     topicId: exampleTopic.id,
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
///     name="tfex-servicebus",
///     location="West Europe")
/// example_namespace = azure.servicebus.Namespace("example",
///     name="tfex-servicebus-namespace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard",
///     tags={
///         "source": "example",
///     })
/// example_topic = azure.servicebus.Topic("example",
///     name="tfex_servicebus_topic",
///     namespace_id=example_namespace.id)
/// example_topic_authorization_rule = azure.servicebus.TopicAuthorizationRule("example",
///     name="tfex_servicebus_topic_sasPolicy",
///     topic_id=example_topic.id,
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
///         Name = "tfex-servicebus",
///         Location = "West Europe",
///     });
///
///     var exampleNamespace = new Azure.ServiceBus.Namespace("example", new()
///     {
///         Name = "tfex-servicebus-namespace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard",
///         Tags =
///         {
///             { "source", "example" },
///         },
///     });
///
///     var exampleTopic = new Azure.ServiceBus.Topic("example", new()
///     {
///         Name = "tfex_servicebus_topic",
///         NamespaceId = exampleNamespace.Id,
///     });
///
///     var exampleTopicAuthorizationRule = new Azure.ServiceBus.TopicAuthorizationRule("example", new()
///     {
///         Name = "tfex_servicebus_topic_sasPolicy",
///         TopicId = exampleTopic.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/servicebus"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("tfex-servicebus"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNamespace, err := servicebus.NewNamespace(ctx, "example", &servicebus.NamespaceArgs{
/// 			Name:              pulumi.String("tfex-servicebus-namespace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 			Tags: pulumi.StringMap{
/// 				"source": pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTopic, err := servicebus.NewTopic(ctx, "example", &servicebus.TopicArgs{
/// 			Name:        pulumi.String("tfex_servicebus_topic"),
/// 			NamespaceId: exampleNamespace.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = servicebus.NewTopicAuthorizationRule(ctx, "example", &servicebus.TopicAuthorizationRuleArgs{
/// 			Name:    pulumi.String("tfex_servicebus_topic_sasPolicy"),
/// 			TopicId: exampleTopic.ID(),
/// 			Listen:  pulumi.Bool(true),
/// 			Send:    pulumi.Bool(false),
/// 			Manage:  pulumi.Bool(false),
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
///   name     = "tfex-servicebus"
///   location = "West Europe"
/// }
/// resource "azure_servicebus_namespace" "example" {
///   name                = "tfex-servicebus-namespace"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "Standard"
///   tags = {
///     "source" = "example"
///   }
/// }
/// resource "azure_servicebus_topic" "example" {
///   name         = "tfex_servicebus_topic"
///   namespace_id = azure_servicebus_namespace.example.id
/// }
/// resource "azure_servicebus_topicauthorizationrule" "example" {
///   name     = "tfex_servicebus_topic_sasPolicy"
///   topic_id = azure_servicebus_topic.example.id
///   listen   = true
///   send     = false
///   manage   = false
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
/// import com.pulumi.azure.servicebus.Namespace;
/// import com.pulumi.azure.servicebus.NamespaceArgs;
/// import com.pulumi.azure.servicebus.Topic;
/// import com.pulumi.azure.servicebus.TopicArgs;
/// import com.pulumi.azure.servicebus.TopicAuthorizationRule;
/// import com.pulumi.azure.servicebus.TopicAuthorizationRuleArgs;
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
///             .name("tfex-servicebus")
///             .location("West Europe")
///             .build());
///
///         var exampleNamespace = new Namespace("exampleNamespace", NamespaceArgs.builder()
///             .name("tfex-servicebus-namespace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard")
///             .tags(Map.of("source", "example"))
///             .build());
///
///         var exampleTopic = new Topic("exampleTopic", TopicArgs.builder()
///             .name("tfex_servicebus_topic")
///             .namespaceId(exampleNamespace.id())
///             .build());
///
///         var exampleTopicAuthorizationRule = new TopicAuthorizationRule("exampleTopicAuthorizationRule", TopicAuthorizationRuleArgs.builder()
///             .name("tfex_servicebus_topic_sasPolicy")
///             .topicId(exampleTopic.id())
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
///       name: tfex-servicebus
///       location: West Europe
///   exampleNamespace:
///     type: azure:servicebus:Namespace
///     name: example
///     properties:
///       name: tfex-servicebus-namespace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard
///       tags:
///         source: example
///   exampleTopic:
///     type: azure:servicebus:Topic
///     name: example
///     properties:
///       name: tfex_servicebus_topic
///       namespaceId: ${exampleNamespace.id}
///   exampleTopicAuthorizationRule:
///     type: azure:servicebus:TopicAuthorizationRule
///     name: example
///     properties:
///       name: tfex_servicebus_topic_sasPolicy
///       topicId: ${exampleTopic.id}
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
/// * `Microsoft.ServiceBus` - 2024-01-01
///
/// ## Import
///
/// ServiceBus Topic authorization rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:servicebus/topicAuthorizationRule:TopicAuthorizationRule rule1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ServiceBus/namespaces/namespace1/topics/topic1/authorizationRules/rule1
/// ```
class TopicAuthorizationRule extends pulumi.CustomResource {
  /// Grants listen access to this this Authorization Rule. Defaults to `false`.
  late final pulumi.Output<bool?> listen;
  /// Grants manage access to this this Authorization Rule. When this property is `true` - both `listen` and `send` must be too. Defaults to `false`.
  late final pulumi.Output<bool?> manage;
  /// Specifies the name of the ServiceBus Topic Authorization Rule resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The Primary Connection String for the ServiceBus Topic authorization Rule.
  late final pulumi.Output<String> primaryConnectionString;
  /// The alias Primary Connection String for the ServiceBus Namespace, if the namespace is Geo DR paired.
  late final pulumi.Output<String> primaryConnectionStringAlias;
  /// The Primary Key for the ServiceBus Topic authorization Rule.
  late final pulumi.Output<String> primaryKey;
  /// The Secondary Connection String for the ServiceBus Topic authorization Rule.
  late final pulumi.Output<String> secondaryConnectionString;
  /// The alias Secondary Connection String for the ServiceBus Namespace
  late final pulumi.Output<String> secondaryConnectionStringAlias;
  /// The Secondary Key for the ServiceBus Topic authorization Rule.
  late final pulumi.Output<String> secondaryKey;
  /// Grants send access to this this Authorization Rule. Defaults to `false`.
  late final pulumi.Output<bool?> send;
  /// Specifies the ID of the ServiceBus Topic. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** At least one of the 3 permissions below needs to be set.
  late final pulumi.Output<String> topicId;

  /// Creates a new [TopicAuthorizationRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TopicAuthorizationRule]. {@macro pulumi_servicebus_topic_authorization_rule_topic_authorization_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TopicAuthorizationRule(
    String name, {
    TopicAuthorizationRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:servicebus/topicAuthorizationRule:TopicAuthorizationRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    listen = registerOutput<bool?>('listen');
    manage = registerOutput<bool?>('manage');
    this.name = registerOutput<String>('name');
    primaryConnectionString = registerOutput<String>('primaryConnectionString');
    primaryConnectionStringAlias = registerOutput<String>('primaryConnectionStringAlias');
    primaryKey = registerOutput<String>('primaryKey');
    secondaryConnectionString = registerOutput<String>('secondaryConnectionString');
    secondaryConnectionStringAlias = registerOutput<String>('secondaryConnectionStringAlias');
    secondaryKey = registerOutput<String>('secondaryKey');
    send = registerOutput<bool?>('send');
    topicId = registerOutput<String>('topicId');
  }

  /// Gets an existing [TopicAuthorizationRule] resource's state with the given [name] and [id].
  static TopicAuthorizationRule get(
    String name,
    pulumi.Input<String> id, {
    TopicAuthorizationRuleState? state,
  }) {
    return TopicAuthorizationRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TopicAuthorizationRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:servicebus/topicAuthorizationRule:TopicAuthorizationRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    listen = registerOutput<bool?>('listen');
    manage = registerOutput<bool?>('manage');
    this.name = registerOutput<String>('name');
    primaryConnectionString = registerOutput<String>('primaryConnectionString');
    primaryConnectionStringAlias = registerOutput<String>('primaryConnectionStringAlias');
    primaryKey = registerOutput<String>('primaryKey');
    secondaryConnectionString = registerOutput<String>('secondaryConnectionString');
    secondaryConnectionStringAlias = registerOutput<String>('secondaryConnectionStringAlias');
    secondaryKey = registerOutput<String>('secondaryKey');
    send = registerOutput<bool?>('send');
    topicId = registerOutput<String>('topicId');
  }
}
