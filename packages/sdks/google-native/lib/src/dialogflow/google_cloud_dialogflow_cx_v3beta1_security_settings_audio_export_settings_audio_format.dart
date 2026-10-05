import 'package:pulumi/pulumi.dart' as pulumi;

/// File format for exported audio file. Currently only in telephony recordings.
enum GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettingsAudioFormat implements pulumi.PulumiEnum<String> {
  audioFormatUnspecified("AUDIO_FORMAT_UNSPECIFIED"),
  mulaw("MULAW"),
  mp3("MP3"),
  ogg("OGG");

  const GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettingsAudioFormat(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettingsAudioFormat fromValue(String value) {
    for (final item in GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettingsAudioFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettingsAudioFormat value: $value');
  }
}
