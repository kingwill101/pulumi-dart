/// File format for exported audio file. Currently only in telephony recordings.
enum GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettingsAudioFormat {
  audioFormatUnspecified("AUDIO_FORMAT_UNSPECIFIED"),
  mulaw("MULAW"),
  mp3("MP3"),
  ogg("OGG");

  const GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettingsAudioFormat(this.wireValue);
  final String wireValue;

  static GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettingsAudioFormat fromValue(String value) {
    for (final item in GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettingsAudioFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettingsAudioFormat value: $value');
  }
}
