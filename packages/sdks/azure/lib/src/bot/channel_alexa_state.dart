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
    pulumi.Output<String>? botName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? skillId,
  }) :
      botName = pulumi.Input.asOptionalInput<String>(botName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      skillId = pulumi.Input.asOptionalInput<String>(skillId);

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
      botName: map['botName'] == null ? null : pulumi.Output.create<String>(map['botName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skillId: map['skillId'] == null ? null : pulumi.Output.create<String>(map['skillId'] as String),
    );
  }
}

