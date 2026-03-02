// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesAudioAlsaOutput {
  /// Sets the device node for the ALSA audio output.
  final pulumi.Input<String>? dev;

  /// Creates a new [DomainDevicesAudioAlsaOutput].
  /// [dev] Sets the device node for the ALSA audio output.
  DomainDevicesAudioAlsaOutput({
    this.dev,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dev': ?dev,
    };
  }

  factory DomainDevicesAudioAlsaOutput.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioAlsaOutput(
      dev: map['dev'] == null ? null : (map['dev'] as String).input(),
    );
  }
}

