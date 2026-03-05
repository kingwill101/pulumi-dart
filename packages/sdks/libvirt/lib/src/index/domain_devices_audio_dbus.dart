// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesAudioDbus {
  /// Configures the output settings for the D-Bus audio device.
  final pulumi.Input<Map<String, dynamic>>? input;
  /// Configures the output settings for the D-Bus audio device.
  final pulumi.Input<Map<String, dynamic>>? output;

  /// Creates a new [DomainDevicesAudioDbus].
  /// [input] Configures the output settings for the D-Bus audio device.
  /// [output] Configures the output settings for the D-Bus audio device.
  DomainDevicesAudioDbus({
    this.input,
    this.output,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'input': ?input,
      'output': ?output,
    };
  }

  factory DomainDevicesAudioDbus.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioDbus(
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      output: (() { final guardedValue = map['output']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

