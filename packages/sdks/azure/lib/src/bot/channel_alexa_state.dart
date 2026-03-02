// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ChannelAlexa resources.
class ChannelAlexaState {
  /// The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String>? botName;
  /// The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the resource group where the Alexa Channel should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The Alexa skill ID for the Alexa Channel.
  final pulumi.Input<String>? skillId;

  /// Creates a new [ChannelAlexaState].
  /// [botName] The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  /// [location] The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group where the Alexa Channel should be created. Changing this forces a new resource to be created.
  /// [skillId] The Alexa skill ID for the Alexa Channel.
  ChannelAlexaState({
    this.botName,
    this.location,
    this.resourceGroupName,
    this.skillId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botName': ?botName,
      'location': ?location,
      'resourceGroupName': ?resourceGroupName,
      'skillId': ?skillId,
    };
  }

  factory ChannelAlexaState.fromMap(Map<String, dynamic> map) {
    return ChannelAlexaState(
      botName: map['botName'] == null ? null : (map['botName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      skillId: map['skillId'] == null ? null : (map['skillId'] as String).input(),
    );
  }
}

