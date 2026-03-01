// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_topic_identity.dart';

/// {@template pulumi_eventgrid_system_topic_system_topic_args_doc}
/// The set of arguments for SystemTopic.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_system_topic_system_topic_args_doc}
class SystemTopicArgs {
  /// An `identity` block as defined below.
  final pulumi.Input<SystemTopicIdentity>? identity;
  /// The Azure Region where the Event Grid System Topic should exist. Changing this forces a new Event Grid System Topic to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Event Grid System Topic. Changing this forces a new Event Grid System Topic to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Event Grid System Topic should exist. Changing this forces a new Event Grid System Topic to be created.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<String>? sourceArmResourceId;
  /// The ID of the Event Grid System Topic ARM Source. Changing this forces a new Event Grid System Topic to be created.
  final pulumi.Input<String>? sourceResourceId;
  /// A mapping of tags which should be assigned to the Event Grid System Topic.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Topic Type of the Event Grid System Topic. The topic type is validated by Azure and there may be additional topic types beyond the following: `Microsoft.AppConfiguration.ConfigurationStores`, `Microsoft.Communication.CommunicationServices`, `Microsoft.ContainerRegistry.Registries`, `Microsoft.Devices.IoTHubs`, `Microsoft.EventGrid.Domains`, `Microsoft.EventGrid.Topics`, `Microsoft.Eventhub.Namespaces`, `Microsoft.KeyVault.vaults`, `Microsoft.MachineLearningServices.Workspaces`, `Microsoft.Maps.Accounts`, `Microsoft.Media.MediaServices`, `Microsoft.Resources.ResourceGroups`, `Microsoft.Resources.Subscriptions`, `Microsoft.ServiceBus.Namespaces`, `Microsoft.SignalRService.SignalR`, `Microsoft.Storage.StorageAccounts`, `Microsoft.Web.ServerFarms` and `Microsoft.Web.Sites`. Changing this forces a new Event Grid System Topic to be created.
  ///
  /// > **Note:** Some `topic_type`s (e.g. **Microsoft.Resources.Subscriptions**) requires location to be set to `Global` instead of a real location like `West US`.
  ///
  /// > **Note:** You can use Azure CLI to get a full list of the available topic types: `az eventgrid topic-type  list --output json | grep -w id`
  final pulumi.Input<String> topicType;

  /// Creates a new [SystemTopicArgs].
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the Event Grid System Topic should exist. Changing this forces a new Event Grid System Topic to be created.
  /// [name] The name which should be used for this Event Grid System Topic. Changing this forces a new Event Grid System Topic to be created.
  /// [resourceGroupName] The name of the Resource Group where the Event Grid System Topic should exist. Changing this forces a new Event Grid System Topic to be created.
  /// [sourceArmResourceId] Optional.
  /// [sourceResourceId] The ID of the Event Grid System Topic ARM Source. Changing this forces a new Event Grid System Topic to be created.
  /// [tags] A mapping of tags which should be assigned to the Event Grid System Topic.
  /// [topicType] The Topic Type of the Event Grid System Topic. The topic type is validated by Azure and there may be additional topic types beyond the following: `Microsoft.AppConfiguration.ConfigurationStores`, `Microsoft.Communication.CommunicationServices`, `Microsoft.ContainerRegistry.Registries`, `Microsoft.Devices.IoTHubs`, `Microsoft.EventGrid.Domains`, `Microsoft.EventGrid.Topics`, `Microsoft.Eventhub.Namespaces`, `Microsoft.KeyVault.vaults`, `Microsoft.MachineLearningServices.Workspaces`, `Microsoft.Maps.Accounts`, `Microsoft.Media.MediaServices`, `Microsoft.Resources.ResourceGroups`, `Microsoft.Resources.Subscriptions`, `Microsoft.ServiceBus.Namespaces`, `Microsoft.SignalRService.SignalR`, `Microsoft.Storage.StorageAccounts`, `Microsoft.Web.ServerFarms` and `Microsoft.Web.Sites`. Changing this forces a new Event Grid System Topic to be created.
  SystemTopicArgs({
    pulumi.Output<SystemTopicIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? sourceArmResourceId,
    pulumi.Output<String>? sourceResourceId,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> topicType,
  }) :
      identity = pulumi.Input.asOptionalInput<SystemTopicIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sourceArmResourceId = pulumi.Input.asOptionalInput<String>(sourceArmResourceId),
      sourceResourceId = pulumi.Input.asOptionalInput<String>(sourceResourceId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      topicType = pulumi.Input.asInput<String>(topicType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<SystemTopicIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'sourceArmResourceId': ?sourceArmResourceId,
      'sourceResourceId': ?sourceResourceId,
      'tags': ?tags,
      'topicType': topicType,
    };
  }

  factory SystemTopicArgs.fromMap(Map<String, dynamic> map) {
    return SystemTopicArgs(
      identity: map['identity'] == null ? null : pulumi.Output.create<SystemTopicIdentity>(SystemTopicIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sourceArmResourceId: map['sourceArmResourceId'] == null ? null : pulumi.Output.create<String>(map['sourceArmResourceId'] as String),
      sourceResourceId: map['sourceResourceId'] == null ? null : pulumi.Output.create<String>(map['sourceResourceId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      topicType: pulumi.Output.create<String>(map['topicType'] as String),
    );
  }
}

