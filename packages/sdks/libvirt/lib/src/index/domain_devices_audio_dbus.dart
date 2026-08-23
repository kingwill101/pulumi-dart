// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_audio_dbus_input.dart';
import 'domain_devices_audio_dbus_output.dart';

class DomainDevicesAudioDbus {
  /// Configures the output settings for the D-Bus audio device.
  final pulumi.Input<DomainDevicesAudioDbusInput>? input;
  /// Configures the output settings for the D-Bus audio device.
  final pulumi.Input<DomainDevicesAudioDbusOutput>? output;

  /// Creates a new [DomainDevicesAudioDbus].
  /// [input] Configures the output settings for the D-Bus audio device.
  /// [output] Configures the output settings for the D-Bus audio device.
  const DomainDevicesAudioDbus({
    this.input,
    this.output,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'input': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioDbusInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'output': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioDbusOutput, Map<String, dynamic>>(output, (value) => value.toMap()),
    };
  }

  factory DomainDevicesAudioDbus.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioDbus(
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesAudioDbusInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      output: (() { final guardedValue = map['output']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesAudioDbusOutput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
