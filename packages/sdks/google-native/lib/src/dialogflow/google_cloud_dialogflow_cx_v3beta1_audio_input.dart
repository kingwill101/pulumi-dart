// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_input_audio_config.dart';

/// Represents the natural speech audio to be processed.
class GoogleCloudDialogflowCxV3beta1AudioInput {
  /// The natural language speech audio to be processed. A single request can contain up to 2 minutes of speech audio data. The transcribed text cannot contain more than 256 bytes. For non-streaming audio detect intent, both `config` and `audio` must be provided. For streaming audio detect intent, `config` must be provided in the first request and `audio` must be provided in all following requests.
  final pulumi.Input<String>? audio;
  /// Instructs the speech recognizer how to process the speech audio.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1InputAudioConfig> config;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1AudioInput].
  /// [audio] The natural language speech audio to be processed. A single request can contain up to 2 minutes of speech audio data. The transcribed text cannot contain more than 256 bytes. For non-streaming audio detect intent, both `config` and `audio` must be provided. For streaming audio detect intent, `config` must be provided in the first request and `audio` must be provided in all following requests.
  /// [config] Instructs the speech recognizer how to process the speech audio.
  GoogleCloudDialogflowCxV3beta1AudioInput({
    this.audio,
    required this.config,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audio': ?audio,
      'config': pulumi.Input.mapInputValue<GoogleCloudDialogflowCxV3beta1InputAudioConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3beta1AudioInput.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1AudioInput(
      audio: map['audio'] == null ? null : (map['audio'] as String).input(),
      config: (GoogleCloudDialogflowCxV3beta1InputAudioConfig.fromMap((map['config'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

