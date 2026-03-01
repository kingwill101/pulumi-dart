/// File format for exported audio file. Currently only in telephony recordings.
enum GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettingsAudioFormat {
  audioFormatUnspecified("AUDIO_FORMAT_UNSPECIFIED"),
  mulaw("MULAW"),
  mp3("MP3"),
  ogg("OGG");

  const GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettingsAudioFormat(this.value);
  final String value;

  static GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettingsAudioFormat fromValue(String value) {
    for (final item in GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettingsAudioFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettingsAudioFormat value: $value');
  }
}

