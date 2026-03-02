// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ChannelTeams resources.
class ChannelTeamsState {
  /// The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String>? botName;
  /// Specifies whether to enable Microsoft Teams channel calls. This defaults to `false`.
  final pulumi.Input<bool>? callingEnabled;
  /// Specifies the webhook for Microsoft Teams channel calls.
  final pulumi.Input<String>? callingWebHook;
  /// The deployment environment for Microsoft Teams channel calls. Possible values are `CommercialDeployment` and `GCCModerateDeployment`. Defaults to `CommercialDeployment`.
  final pulumi.Input<String>? deploymentEnvironment;
  final pulumi.Input<bool>? enableCalling;
  /// The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the resource group in which to create the Bot Channel. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [ChannelTeamsState].
  /// [botName] The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  /// [callingEnabled] Specifies whether to enable Microsoft Teams channel calls. This defaults to `false`.
  /// [callingWebHook] Specifies the webhook for Microsoft Teams channel calls.
  /// [deploymentEnvironment] The deployment environment for Microsoft Teams channel calls. Possible values are `CommercialDeployment` and `GCCModerateDeployment`. Defaults to `CommercialDeployment`.
  /// [enableCalling] Optional.
  /// [location] The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Bot Channel. Changing this forces a new resource to be created.
  ChannelTeamsState({
    this.botName,
    this.callingEnabled,
    this.callingWebHook,
    this.deploymentEnvironment,
    this.enableCalling,
    this.location,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botName': ?botName,
      'callingEnabled': ?callingEnabled,
      'callingWebHook': ?callingWebHook,
      'deploymentEnvironment': ?deploymentEnvironment,
      'enableCalling': ?enableCalling,
      'location': ?location,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory ChannelTeamsState.fromMap(Map<String, dynamic> map) {
    return ChannelTeamsState(
      botName: map['botName'] == null ? null : (map['botName']! as String).input(),
      callingEnabled: map['callingEnabled'] == null ? null : (map['callingEnabled']! as bool).input(),
      callingWebHook: map['callingWebHook'] == null ? null : (map['callingWebHook']! as String).input(),
      deploymentEnvironment: map['deploymentEnvironment'] == null ? null : (map['deploymentEnvironment']! as String).input(),
      enableCalling: map['enableCalling'] == null ? null : (map['enableCalling']! as bool).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
    );
  }
}

