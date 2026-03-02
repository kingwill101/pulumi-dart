// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotAppAudioProcessingConfigAmbientSoundConfig {
  /// (Output)
  /// Ambient noise as a mono-channel, 16kHz WAV file stored in [Cloud
  /// Storage](https://cloud.google.com/storage).
  /// Note: Please make sure the CES service agent
  /// `service-@gcp-sa-ces.iam.gserviceaccount.com` has
  /// `storage.objects.get` permission to the Cloud Storage object.
  final pulumi.Input<String>? gcsUri;
  /// (Output)
  /// Name of the prebuilt ambient sound.
  /// Valid values are: - "coffee_shop" - "keyboard" - "keypad" - "hum"
  /// -"office_1" - "office_2" - "office_3"
  /// -"room_1" - "room_2" - "room_3"
  /// -"room_4" - "room_5" - "air_conditioner"
  final pulumi.Input<String>? prebuiltAmbientSound;
  /// (Output)
  /// Volume gain (in dB) of the normal native volume supported by
  /// ambient noise, in the range [-96.0, 16.0]. If unset, or set to a value of
  /// 0.0 (dB), will play at normal native signal amplitude. A value of -6.0 (dB)
  /// will play at approximately half the amplitude of the normal native signal
  /// amplitude. A value of +6.0 (dB) will play at approximately twice the
  /// amplitude of the normal native signal amplitude. We strongly recommend not
  /// to exceed +10 (dB) as there's usually no effective increase in loudness for
  /// any value greater than that.
  final pulumi.Input<double>? volumeGainDb;

  /// Creates a new [AppVersionSnapshotAppAudioProcessingConfigAmbientSoundConfig].
  /// [gcsUri] (Output)
  /// [prebuiltAmbientSound] (Output)
  /// [volumeGainDb] (Output)
  AppVersionSnapshotAppAudioProcessingConfigAmbientSoundConfig({
    this.gcsUri,
    this.prebuiltAmbientSound,
    this.volumeGainDb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcsUri': ?gcsUri,
      'prebuiltAmbientSound': ?prebuiltAmbientSound,
      'volumeGainDb': ?volumeGainDb,
    };
  }

  factory AppVersionSnapshotAppAudioProcessingConfigAmbientSoundConfig.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAppAudioProcessingConfigAmbientSoundConfig(
      gcsUri: map['gcsUri'] == null ? null : (map['gcsUri'] as String).input(),
      prebuiltAmbientSound: map['prebuiltAmbientSound'] == null ? null : (map['prebuiltAmbientSound'] as String).input(),
      volumeGainDb: map['volumeGainDb'] == null ? null : (map['volumeGainDb'] as double).input(),
    );
  }
}

