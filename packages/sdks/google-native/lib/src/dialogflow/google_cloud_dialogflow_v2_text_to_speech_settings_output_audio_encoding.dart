/// Required. Audio encoding of the synthesized audio content.
enum GoogleCloudDialogflowV2TextToSpeechSettingsOutputAudioEncoding {
  outputAudioEncodingUnspecified("OUTPUT_AUDIO_ENCODING_UNSPECIFIED"),
  outputAudioEncodingLinear16("OUTPUT_AUDIO_ENCODING_LINEAR_16"),
  outputAudioEncodingMp3("OUTPUT_AUDIO_ENCODING_MP3"),
  outputAudioEncodingMp364Kbps("OUTPUT_AUDIO_ENCODING_MP3_64_KBPS"),
  outputAudioEncodingOggOpus("OUTPUT_AUDIO_ENCODING_OGG_OPUS"),
  outputAudioEncodingMulaw("OUTPUT_AUDIO_ENCODING_MULAW");

  const GoogleCloudDialogflowV2TextToSpeechSettingsOutputAudioEncoding(this.wireValue);
  final String wireValue;

  static GoogleCloudDialogflowV2TextToSpeechSettingsOutputAudioEncoding fromValue(String value) {
    for (final item in GoogleCloudDialogflowV2TextToSpeechSettingsOutputAudioEncoding.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowV2TextToSpeechSettingsOutputAudioEncoding value: $value');
  }
}
