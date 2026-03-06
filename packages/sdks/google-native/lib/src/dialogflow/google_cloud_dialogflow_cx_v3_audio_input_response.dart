// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_input_audio_config_response.dart';

/// Represents the natural speech audio to be processed.
class GoogleCloudDialogflowCxV3AudioInputResponse {
  /// The natural language speech audio to be processed. A single request can contain up to 2 minutes of speech audio data. The transcribed text cannot contain more than 256 bytes. For non-streaming audio detect intent, both `config` and `audio` must be provided. For streaming audio detect intent, `config` must be provided in the first request and `audio` must be provided in all following requests.
  final pulumi.Input<String> audio;
  /// Instructs the speech recognizer how to process the speech audio.
  final pulumi.Input<GoogleCloudDialogflowCxV3InputAudioConfigResponse> config;

  /// Creates a new [GoogleCloudDialogflowCxV3AudioInputResponse].
  /// [audio] The natural language speech audio to be processed. A single request can contain up to 2 minutes of speech audio data. The transcribed text cannot contain more than 256 bytes. For non-streaming audio detect intent, both `config` and `audio` must be provided. For streaming audio detect intent, `config` must be provided in the first request and `audio` must be provided in all following requests.
  /// [config] Instructs the speech recognizer how to process the speech audio.
  const GoogleCloudDialogflowCxV3AudioInputResponse({
    required this.audio,
    required this.config,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audio': audio,
      'config': pulumi.Input.mapInputValue<GoogleCloudDialogflowCxV3InputAudioConfigResponse, Map<String, dynamic>>(config, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3AudioInputResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3AudioInputResponse(
      audio: pulumi.Input.fromValue(map['audio'] as String),
      config: pulumi.Input.fromValue(GoogleCloudDialogflowCxV3InputAudioConfigResponse.fromMap((map['config']! as Map).cast<String, dynamic>())),
    );
  }
}

