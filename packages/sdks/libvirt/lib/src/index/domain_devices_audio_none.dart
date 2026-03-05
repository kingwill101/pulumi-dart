// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesAudioNone {
  /// Configures the output settings for the None audio device.
  final pulumi.Input<Map<String, dynamic>>? input;
  /// Configures the output settings for the None audio device.
  final pulumi.Input<Map<String, dynamic>>? output;

  /// Creates a new [DomainDevicesAudioNone].
  /// [input] Configures the output settings for the None audio device.
  /// [output] Configures the output settings for the None audio device.
  DomainDevicesAudioNone({
    this.input,
    this.output,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'input': ?input,
      'output': ?output,
    };
  }

  factory DomainDevicesAudioNone.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioNone(
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      output: (() { final guardedValue = map['output']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

