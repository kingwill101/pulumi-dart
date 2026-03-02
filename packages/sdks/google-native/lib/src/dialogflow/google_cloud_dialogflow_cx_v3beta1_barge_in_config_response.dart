// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of the barge-in behavior. Barge-in instructs the API to return a detected utterance at a proper time while the client is playing back the response audio from a previous request. When the client sees the utterance, it should stop the playback and immediately get ready for receiving the responses for the current request. The barge-in handling requires the client to start streaming audio input as soon as it starts playing back the audio from the previous response. The playback is modeled into two phases: * No barge-in phase: which goes first and during which speech detection should not be carried out. * Barge-in phase: which follows the no barge-in phase and during which the API starts speech detection and may inform the client that an utterance has been detected. Note that no-speech event is not expected in this phase. The client provides this configuration in terms of the durations of those two phases. The durations are measured in terms of the audio length fromt the the start of the input audio. The flow goes like below: --> Time without speech detection | utterance only | utterance or no-speech event | | +-------------+ | +------------+ | +---------------+ ----------+ no barge-in +-|-+ barge-in +-|-+ normal period +----------- +-------------+ | +------------+ | +---------------+ No-speech event is a response with END_OF_UTTERANCE without any transcript following up.
class GoogleCloudDialogflowCxV3beta1BargeInConfigResponse {
  /// Duration that is not eligible for barge-in at the beginning of the input audio.
  final pulumi.Input<String> noBargeInDuration;
  /// Total duration for the playback at the beginning of the input audio.
  final pulumi.Input<String> totalDuration;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1BargeInConfigResponse].
  /// [noBargeInDuration] Duration that is not eligible for barge-in at the beginning of the input audio.
  /// [totalDuration] Total duration for the playback at the beginning of the input audio.
  GoogleCloudDialogflowCxV3beta1BargeInConfigResponse({
    required this.noBargeInDuration,
    required this.totalDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'noBargeInDuration': noBargeInDuration,
      'totalDuration': totalDuration,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1BargeInConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1BargeInConfigResponse(
      noBargeInDuration: (map['noBargeInDuration'] as String).input(),
      totalDuration: (map['totalDuration'] as String).input(),
    );
  }
}

