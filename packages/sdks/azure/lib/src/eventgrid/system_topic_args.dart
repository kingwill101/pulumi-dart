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
  /// &gt; **Note:** Some `topicType`s (e.g. **Microsoft.Resources.Subscriptions**) requires location to be set to `Global` instead of a real location like `West US`.
  ///
  /// &gt; **Note:** You can use Azure CLI to get a full list of the available topic types: `az eventgrid topic-type  list --output json | grep -w id`
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
  const SystemTopicArgs({
    this.identity,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.sourceArmResourceId,
    this.sourceResourceId,
    this.tags,
    required this.topicType,
  });

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
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SystemTopicIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sourceArmResourceId: (() { final guardedValue = map['sourceArmResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceResourceId: (() { final guardedValue = map['sourceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      topicType: pulumi.Input.fromValue(map['topicType'] as String),
    );
  }
}
