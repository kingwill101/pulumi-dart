// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesAudioAlsaInput {
  /// Sets the device node for the ALSA audio output.
  final pulumi.Input<String>? dev;

  /// Creates a new [DomainDevicesAudioAlsaInput].
  /// [dev] Sets the device node for the ALSA audio output.
  const DomainDevicesAudioAlsaInput({
    this.dev,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dev': ?dev,
    };
  }

  factory DomainDevicesAudioAlsaInput.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioAlsaInput(
      dev: (() { final guardedValue = map['dev']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

