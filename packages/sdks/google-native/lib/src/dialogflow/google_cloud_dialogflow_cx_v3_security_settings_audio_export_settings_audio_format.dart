import 'package:pulumi/pulumi.dart' as pulumi;

/// File format for exported audio file. Currently only in telephony recordings.
enum GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettingsAudioFormat implements pulumi.PulumiEnum<String> {
  audioFormatUnspecified("AUDIO_FORMAT_UNSPECIFIED"),
  mulaw("MULAW"),
  mp3("MP3"),
  ogg("OGG");

  const GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettingsAudioFormat(this.wireValue);
  @override
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
