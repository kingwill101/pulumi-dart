// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppAudioProcessingConfigAmbientSoundConfig {
  /// Ambient noise as a mono-channel, 16kHz WAV file stored in [Cloud
  /// Storage](https://cloud.google.com/storage).
  /// Note: Please make sure the CES service agent
  /// `service-@gcp-sa-ces.iam.gserviceaccount.com` has
  /// `storage.objects.get` permission to the Cloud Storage object.
  final pulumi.Input<String>? gcsUri;
  /// Name of the prebuilt ambient sound.
  /// Valid values are: - "coffeeShop" - "keyboard" - "keypad" - "hum"
  /// -"office1" - "office2" - "office3"
  /// -"room1" - "room2" - "room3"
  /// -"room4" - "room5" - "airConditioner"
  final pulumi.Input<String>? prebuiltAmbientSound;
  /// Volume gain (in dB) of the normal native volume supported by
  /// ambient noise, in the range [-96.0, 16.0]. If unset, or set to a value of
  /// 0.0 (dB), will play at normal native signal amplitude. A value of -6.0 (dB)
  /// will play at approximately half the amplitude of the normal native signal
  /// amplitude. A value of +6.0 (dB) will play at approximately twice the
  /// amplitude of the normal native signal amplitude. We strongly recommend not
  /// to exceed +10 (dB) as there's usually no effective increase in loudness for
  /// any value greater than that.
  final pulumi.Input<double>? volumeGainDb;

  /// Creates a new [AppAudioProcessingConfigAmbientSoundConfig].
  /// [gcsUri] Ambient noise as a mono-channel, 16kHz WAV file stored in [Cloud
  /// [prebuiltAmbientSound] Name of the prebuilt ambient sound.
  /// [volumeGainDb] Volume gain (in dB) of the normal native volume supported by
  const AppAudioProcessingConfigAmbientSoundConfig({
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

  factory AppAudioProcessingConfigAmbientSoundConfig.fromMap(Map<String, dynamic> map) {
    return AppAudioProcessingConfigAmbientSoundConfig(
      gcsUri: (() { final guardedValue = map['gcsUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prebuiltAmbientSound: (() { final guardedValue = map['prebuiltAmbientSound']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeGainDb: (() { final guardedValue = map['volumeGainDb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
