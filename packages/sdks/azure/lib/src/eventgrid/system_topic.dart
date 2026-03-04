import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_topic_args.dart';
import 'system_topic_identity.dart';
import 'system_topic_state.dart';

/// Manages an Event Grid System Topic.
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
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplestoracct",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
///     tags: {
///         environment: "staging",
///     },
/// });
/// const exampleSystemTopic = new azure.eventgrid.SystemTopic("example", {
///     name: "example-topic",
///     resourceGroupName: example.name,
///     location: example.location,
///     sourceResourceId: exampleAccount.id,
///     topicType: "Microsoft.Storage.StorageAccounts",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="examplestoracct",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS",
///     tags={
///         "environment": "staging",
///     })
/// example_system_topic = azure.eventgrid.SystemTopic("example",
///     name="example-topic",
///     resource_group_name=example.name,
///     location=example.location,
///     source_resource_id=example_account.id,
///     topic_type="Microsoft.Storage.StorageAccounts")
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
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplestoracct",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///         Tags =
///         {
///             { "environment", "staging" },
///         },
///     });
///
///     var exampleSystemTopic = new Azure.EventGrid.SystemTopic("example", new()
///     {
///         Name = "example-topic",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         SourceResourceId = exampleAccount.Id,
///         TopicType = "Microsoft.Storage.StorageAccounts",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
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
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplestoracct"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("staging"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eventgrid.NewSystemTopic(ctx, "example", &eventgrid.SystemTopicArgs{
/// 			Name:              pulumi.String("example-topic"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			SourceResourceId:  exampleAccount.ID(),
/// 			TopicType:         pulumi.String("Microsoft.Storage.StorageAccounts"),
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.eventgrid.SystemTopic;
/// import com.pulumi.azure.eventgrid.SystemTopicArgs;
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
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplestoracct")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .tags(Map.of("environment", "staging"))
///             .build());
///
///         var exampleSystemTopic = new SystemTopic("exampleSystemTopic", SystemTopicArgs.builder()
///             .name("example-topic")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sourceResourceId(exampleAccount.id())
///             .topicType("Microsoft.Storage.StorageAccounts")
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
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplestoracct
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///       tags:
///         environment: staging
///   exampleSystemTopic:
///     type: azure:eventgrid:SystemTopic
///     name: example
///     properties:
///       name: example-topic
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sourceResourceId: ${exampleAccount.id}
///       topicType: Microsoft.Storage.StorageAccounts
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
/// Event Grid System Topic can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:eventgrid/systemTopic:SystemTopic example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.EventGrid/systemTopics/systemTopic1
/// ```
class SystemTopic extends pulumi.CustomResource {
  /// An `identity` block as defined below.
  late final pulumi.Output<SystemTopicIdentity?> identity;

  /// The Azure Region where the Event Grid System Topic should exist. Changing this forces a new Event Grid System Topic to be created.
  late final pulumi.Output<String> location;
  late final pulumi.Output<String> metricArmResourceId;

  /// The Metric Resource ID of the Event Grid System Topic.
  late final pulumi.Output<String> metricResourceId;

  /// The name which should be used for this Event Grid System Topic. Changing this forces a new Event Grid System Topic to be created.
  late final pulumi.Output<String> name;

  /// The name of the Resource Group where the Event Grid System Topic should exist. Changing this forces a new Event Grid System Topic to be created.
  late final pulumi.Output<String> resourceGroupName;
  late final pulumi.Output<String> sourceArmResourceId;

  /// The ID of the Event Grid System Topic ARM Source. Changing this forces a new Event Grid System Topic to be created.
  late final pulumi.Output<String> sourceResourceId;

  /// A mapping of tags which should be assigned to the Event Grid System Topic.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The Topic Type of the Event Grid System Topic. The topic type is validated by Azure and there may be additional topic types beyond the following: `Microsoft.AppConfiguration.ConfigurationStores`, `Microsoft.Communication.CommunicationServices`, `Microsoft.ContainerRegistry.Registries`, `Microsoft.Devices.IoTHubs`, `Microsoft.EventGrid.Domains`, `Microsoft.EventGrid.Topics`, `Microsoft.Eventhub.Namespaces`, `Microsoft.KeyVault.vaults`, `Microsoft.MachineLearningServices.Workspaces`, `Microsoft.Maps.Accounts`, `Microsoft.Media.MediaServices`, `Microsoft.Resources.ResourceGroups`, `Microsoft.Resources.Subscriptions`, `Microsoft.ServiceBus.Namespaces`, `Microsoft.SignalRService.SignalR`, `Microsoft.Storage.StorageAccounts`, `Microsoft.Web.ServerFarms` and `Microsoft.Web.Sites`. Changing this forces a new Event Grid System Topic to be created.
  ///
  /// &gt; **Note:** Some `topic_type`s (e.g. **Microsoft.Resources.Subscriptions**) requires location to be set to `Global` instead of a real location like `West US`.
  ///
  /// &gt; **Note:** You can use Azure CLI to get a full list of the available topic types: `az eventgrid topic-type  list --output json | grep -w id`
  late final pulumi.Output<String> topicType;

  /// Creates a new [SystemTopic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SystemTopic]. {@macro pulumi_eventgrid_system_topic_system_topic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SystemTopic(
    String name, {
    SystemTopicArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:eventgrid/systemTopic:SystemTopic',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    identity = registerOutput<SystemTopicIdentity?>('identity');
    location = registerOutput<String>('location');
    metricArmResourceId = registerOutput<String>('metricArmResourceId');
    metricResourceId = registerOutput<String>('metricResourceId');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sourceArmResourceId = registerOutput<String>('sourceArmResourceId');
    sourceResourceId = registerOutput<String>('sourceResourceId');
    tags = registerOutput<Map<String, String>?>('tags');
    topicType = registerOutput<String>('topicType');
  }

  /// Gets an existing [SystemTopic] resource's state with the given [name] and [id].
  static SystemTopic get(
    String name,
    pulumi.Input<String> id, {
    SystemTopicState? state,
  }) {
    return SystemTopic._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SystemTopic._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:eventgrid/systemTopic:SystemTopic',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    identity = registerOutput<SystemTopicIdentity?>('identity');
    location = registerOutput<String>('location');
    metricArmResourceId = registerOutput<String>('metricArmResourceId');
    metricResourceId = registerOutput<String>('metricResourceId');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sourceArmResourceId = registerOutput<String>('sourceArmResourceId');
    sourceResourceId = registerOutput<String>('sourceResourceId');
    tags = registerOutput<Map<String, String>?>('tags');
    topicType = registerOutput<String>('topicType');
  }
}
