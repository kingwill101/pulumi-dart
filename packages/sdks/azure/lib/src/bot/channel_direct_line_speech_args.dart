// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bot_channel_direct_line_speech_channel_direct_line_speech_args_doc}
/// The set of arguments for ChannelDirectLineSpeech.
/// {@endtemplate}
/// {@macro pulumi_bot_channel_direct_line_speech_channel_direct_line_speech_args_doc}
class ChannelDirectLineSpeechArgs {
  /// The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String> botName;
  /// The ID of the Cognitive Account this Bot Channel should be associated with. Either `cognitiveAccountId` or both `cognitiveServiceAccessKey` and `cognitiveServiceLocation` must be specified.
  ///
  /// &gt; **Note:** Once added, `cognitiveAccountId` cannot be removed, doing so forces a new resource to be created.
  final pulumi.Input<String?>? cognitiveAccountId;
  /// The access key to access the Cognitive Service. Either `cognitiveAccountId` or both `cognitiveServiceAccessKey` and `cognitiveServiceLocation` must be specified.
  final pulumi.Input<String?>? cognitiveServiceAccessKey;
  /// Specifies the supported Azure location where the Cognitive Service resource exists. Either `cognitiveAccountId` or both `cognitiveServiceAccessKey` and `cognitiveServiceLocation` must be specified.
  final pulumi.Input<String?>? cognitiveServiceLocation;
  /// The custom speech model id for the Direct Line Speech Channel.
  final pulumi.Input<String?>? customSpeechModelId;
  /// The custom voice deployment id for the Direct Line Speech Channel.
  final pulumi.Input<String?>? customVoiceDeploymentId;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// The name of the resource group where the Direct Line Speech Channel should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ChannelDirectLineSpeechArgs].
  /// [botName] The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  /// [cognitiveAccountId] The ID of the Cognitive Account this Bot Channel should be associated with. Either `cognitiveAccountId` or both `cognitiveServiceAccessKey` and `cognitiveServiceLocation` must be specified.
  /// [cognitiveServiceAccessKey] The access key to access the Cognitive Service. Either `cognitiveAccountId` or both `cognitiveServiceAccessKey` and `cognitiveServiceLocation` must be specified.
  /// [cognitiveServiceLocation] Specifies the supported Azure location where the Cognitive Service resource exists. Either `cognitiveAccountId` or both `cognitiveServiceAccessKey` and `cognitiveServiceLocation` must be specified.
  /// [customSpeechModelId] The custom speech model id for the Direct Line Speech Channel.
  /// [customVoiceDeploymentId] The custom voice deployment id for the Direct Line Speech Channel.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group where the Direct Line Speech Channel should be created. Changing this forces a new resource to be created.
  const ChannelDirectLineSpeechArgs({
    required this.botName,
    this.cognitiveAccountId,
    this.cognitiveServiceAccessKey,
    this.cognitiveServiceLocation,
    this.customSpeechModelId,
    this.customVoiceDeploymentId,
    this.location,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botName': botName,
      'cognitiveAccountId': ?cognitiveAccountId,
      'cognitiveServiceAccessKey': ?cognitiveServiceAccessKey,
      'cognitiveServiceLocation': ?cognitiveServiceLocation,
      'customSpeechModelId': ?customSpeechModelId,
      'customVoiceDeploymentId': ?customVoiceDeploymentId,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ChannelDirectLineSpeechArgs.fromMap(Map<String, dynamic> map) {
    return ChannelDirectLineSpeechArgs(
      botName: pulumi.Input.fromValue(map['botName'] as String),
      cognitiveAccountId: (() { final guardedValue = map['cognitiveAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cognitiveServiceAccessKey: (() { final guardedValue = map['cognitiveServiceAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cognitiveServiceLocation: (() { final guardedValue = map['cognitiveServiceLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customSpeechModelId: (() { final guardedValue = map['customSpeechModelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customVoiceDeploymentId: (() { final guardedValue = map['customVoiceDeploymentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
