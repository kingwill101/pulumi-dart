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
      botName: (() { final guardedValue = map['botName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cognitiveAccountId: (() { final guardedValue = map['cognitiveAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cognitiveServiceAccessKey: (() { final guardedValue = map['cognitiveServiceAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cognitiveServiceLocation: (() { final guardedValue = map['cognitiveServiceLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customSpeechModelId: (() { final guardedValue = map['customSpeechModelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customVoiceDeploymentId: (() { final guardedValue = map['customVoiceDeploymentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

