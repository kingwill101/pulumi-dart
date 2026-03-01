// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bot_channel_direct_line_speech_channel_direct_line_speech_args_doc}
/// The set of arguments for ChannelDirectLineSpeech.
/// {@endtemplate}
/// {@macro pulumi_bot_channel_direct_line_speech_channel_direct_line_speech_args_doc}
class ChannelDirectLineSpeechArgs {
  /// The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String> botName;
  /// The ID of the Cognitive Account this Bot Channel should be associated with.
  final pulumi.Input<String>? cognitiveAccountId;
  /// The access key to access the Cognitive Service.
  final pulumi.Input<String> cognitiveServiceAccessKey;
  /// Specifies the supported Azure location where the Cognitive Service resource exists.
  final pulumi.Input<String> cognitiveServiceLocation;
  /// The custom speech model id for the Direct Line Speech Channel.
  final pulumi.Input<String>? customSpeechModelId;
  /// The custom voice deployment id for the Direct Line Speech Channel.
  final pulumi.Input<String>? customVoiceDeploymentId;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the resource group where the Direct Line Speech Channel should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ChannelDirectLineSpeechArgs].
  /// [botName] The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  /// [cognitiveAccountId] The ID of the Cognitive Account this Bot Channel should be associated with.
  /// [cognitiveServiceAccessKey] The access key to access the Cognitive Service.
  /// [cognitiveServiceLocation] Specifies the supported Azure location where the Cognitive Service resource exists.
  /// [customSpeechModelId] The custom speech model id for the Direct Line Speech Channel.
  /// [customVoiceDeploymentId] The custom voice deployment id for the Direct Line Speech Channel.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group where the Direct Line Speech Channel should be created. Changing this forces a new resource to be created.
  ChannelDirectLineSpeechArgs({
    required pulumi.Output<String> botName,
    pulumi.Output<String>? cognitiveAccountId,
    required pulumi.Output<String> cognitiveServiceAccessKey,
    required pulumi.Output<String> cognitiveServiceLocation,
    pulumi.Output<String>? customSpeechModelId,
    pulumi.Output<String>? customVoiceDeploymentId,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
  }) :
      botName = pulumi.Input.asInput<String>(botName),
      cognitiveAccountId = pulumi.Input.asOptionalInput<String>(cognitiveAccountId),
      cognitiveServiceAccessKey = pulumi.Input.asInput<String>(cognitiveServiceAccessKey),
      cognitiveServiceLocation = pulumi.Input.asInput<String>(cognitiveServiceLocation),
      customSpeechModelId = pulumi.Input.asOptionalInput<String>(customSpeechModelId),
      customVoiceDeploymentId = pulumi.Input.asOptionalInput<String>(customVoiceDeploymentId),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botName': botName,
      'cognitiveAccountId': ?cognitiveAccountId,
      'cognitiveServiceAccessKey': cognitiveServiceAccessKey,
      'cognitiveServiceLocation': cognitiveServiceLocation,
      'customSpeechModelId': ?customSpeechModelId,
      'customVoiceDeploymentId': ?customVoiceDeploymentId,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ChannelDirectLineSpeechArgs.fromMap(Map<String, dynamic> map) {
    return ChannelDirectLineSpeechArgs(
      botName: pulumi.Output.create<String>(map['botName'] as String),
      cognitiveAccountId: map['cognitiveAccountId'] == null ? null : pulumi.Output.create<String>(map['cognitiveAccountId'] as String),
      cognitiveServiceAccessKey: pulumi.Output.create<String>(map['cognitiveServiceAccessKey'] as String),
      cognitiveServiceLocation: pulumi.Output.create<String>(map['cognitiveServiceLocation'] as String),
      customSpeechModelId: map['customSpeechModelId'] == null ? null : pulumi.Output.create<String>(map['customSpeechModelId'] as String),
      customVoiceDeploymentId: map['customVoiceDeploymentId'] == null ? null : pulumi.Output.create<String>(map['customVoiceDeploymentId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

