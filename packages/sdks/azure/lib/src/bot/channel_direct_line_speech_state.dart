// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ChannelDirectLineSpeech resources.
class ChannelDirectLineSpeechState {
  /// The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String>? botName;
  /// The ID of the Cognitive Account this Bot Channel should be associated with.
  final pulumi.Input<String>? cognitiveAccountId;
  /// The access key to access the Cognitive Service.
  final pulumi.Input<String>? cognitiveServiceAccessKey;
  /// Specifies the supported Azure location where the Cognitive Service resource exists.
  final pulumi.Input<String>? cognitiveServiceLocation;
  /// The custom speech model id for the Direct Line Speech Channel.
  final pulumi.Input<String>? customSpeechModelId;
  /// The custom voice deployment id for the Direct Line Speech Channel.
  final pulumi.Input<String>? customVoiceDeploymentId;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the resource group where the Direct Line Speech Channel should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [ChannelDirectLineSpeechState].
  /// [botName] The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  /// [cognitiveAccountId] The ID of the Cognitive Account this Bot Channel should be associated with.
  /// [cognitiveServiceAccessKey] The access key to access the Cognitive Service.
  /// [cognitiveServiceLocation] Specifies the supported Azure location where the Cognitive Service resource exists.
  /// [customSpeechModelId] The custom speech model id for the Direct Line Speech Channel.
  /// [customVoiceDeploymentId] The custom voice deployment id for the Direct Line Speech Channel.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group where the Direct Line Speech Channel should be created. Changing this forces a new resource to be created.
  ChannelDirectLineSpeechState({
    this.botName,
    this.cognitiveAccountId,
    this.cognitiveServiceAccessKey,
    this.cognitiveServiceLocation,
    this.customSpeechModelId,
    this.customVoiceDeploymentId,
    this.location,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botName': ?botName,
      'cognitiveAccountId': ?cognitiveAccountId,
      'cognitiveServiceAccessKey': ?cognitiveServiceAccessKey,
      'cognitiveServiceLocation': ?cognitiveServiceLocation,
      'customSpeechModelId': ?customSpeechModelId,
      'customVoiceDeploymentId': ?customVoiceDeploymentId,
      'location': ?location,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory ChannelDirectLineSpeechState.fromMap(Map<String, dynamic> map) {
    return ChannelDirectLineSpeechState(
      botName: map['botName'] == null ? null : (map['botName'] as String).input(),
      cognitiveAccountId: map['cognitiveAccountId'] == null ? null : (map['cognitiveAccountId'] as String).input(),
      cognitiveServiceAccessKey: map['cognitiveServiceAccessKey'] == null ? null : (map['cognitiveServiceAccessKey'] as String).input(),
      cognitiveServiceLocation: map['cognitiveServiceLocation'] == null ? null : (map['cognitiveServiceLocation'] as String).input(),
      customSpeechModelId: map['customSpeechModelId'] == null ? null : (map['customSpeechModelId'] as String).input(),
      customVoiceDeploymentId: map['customVoiceDeploymentId'] == null ? null : (map['customVoiceDeploymentId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
    );
  }
}

