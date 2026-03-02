// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_topic_identity.dart';

/// Input properties used for looking up and filtering SystemTopic resources.
class SystemTopicState {
  /// An `identity` block as defined below.
  final pulumi.Input<SystemTopicIdentity>? identity;
  /// The Azure Region where the Event Grid System Topic should exist. Changing this forces a new Event Grid System Topic to be created.
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? metricArmResourceId;
  /// The Metric Resource ID of the Event Grid System Topic.
  final pulumi.Input<String>? metricResourceId;
  /// The name which should be used for this Event Grid System Topic. Changing this forces a new Event Grid System Topic to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Event Grid System Topic should exist. Changing this forces a new Event Grid System Topic to be created.
  final pulumi.Input<String>? resourceGroupName;
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
  final pulumi.Input<String>? topicType;

  /// Creates a new [SystemTopicState].
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the Event Grid System Topic should exist. Changing this forces a new Event Grid System Topic to be created.
  /// [metricArmResourceId] Optional.
  /// [metricResourceId] The Metric Resource ID of the Event Grid System Topic.
  /// [name] The name which should be used for this Event Grid System Topic. Changing this forces a new Event Grid System Topic to be created.
  /// [resourceGroupName] The name of the Resource Group where the Event Grid System Topic should exist. Changing this forces a new Event Grid System Topic to be created.
  /// [sourceArmResourceId] Optional.
  /// [sourceResourceId] The ID of the Event Grid System Topic ARM Source. Changing this forces a new Event Grid System Topic to be created.
  /// [tags] A mapping of tags which should be assigned to the Event Grid System Topic.
  /// [topicType] The Topic Type of the Event Grid System Topic. The topic type is validated by Azure and there may be additional topic types beyond the following: `Microsoft.AppConfiguration.ConfigurationStores`, `Microsoft.Communication.CommunicationServices`, `Microsoft.ContainerRegistry.Registries`, `Microsoft.Devices.IoTHubs`, `Microsoft.EventGrid.Domains`, `Microsoft.EventGrid.Topics`, `Microsoft.Eventhub.Namespaces`, `Microsoft.KeyVault.vaults`, `Microsoft.MachineLearningServices.Workspaces`, `Microsoft.Maps.Accounts`, `Microsoft.Media.MediaServices`, `Microsoft.Resources.ResourceGroups`, `Microsoft.Resources.Subscriptions`, `Microsoft.ServiceBus.Namespaces`, `Microsoft.SignalRService.SignalR`, `Microsoft.Storage.StorageAccounts`, `Microsoft.Web.ServerFarms` and `Microsoft.Web.Sites`. Changing this forces a new Event Grid System Topic to be created.
  SystemTopicState({
    this.identity,
    this.location,
    this.metricArmResourceId,
    this.metricResourceId,
    this.name,
    this.resourceGroupName,
    this.sourceArmResourceId,
    this.sourceResourceId,
    this.tags,
    this.topicType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<SystemTopicIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'metricArmResourceId': ?metricArmResourceId,
      'metricResourceId': ?metricResourceId,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'sourceArmResourceId': ?sourceArmResourceId,
      'sourceResourceId': ?sourceResourceId,
      'tags': ?tags,
      'topicType': ?topicType,
    };
  }

  factory SystemTopicState.fromMap(Map<String, dynamic> map) {
    return SystemTopicState(
      identity: map['identity'] == null ? null : (SystemTopicIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      metricArmResourceId: map['metricArmResourceId'] == null ? null : (map['metricArmResourceId'] as String).input(),
      metricResourceId: map['metricResourceId'] == null ? null : (map['metricResourceId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      sourceArmResourceId: map['sourceArmResourceId'] == null ? null : (map['sourceArmResourceId'] as String).input(),
      sourceResourceId: map['sourceResourceId'] == null ? null : (map['sourceResourceId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      topicType: map['topicType'] == null ? null : (map['topicType'] as String).input(),
    );
  }
}

