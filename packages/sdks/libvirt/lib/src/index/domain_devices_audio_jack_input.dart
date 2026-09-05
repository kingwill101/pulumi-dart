// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_audio_jack_input_settings.dart';

class DomainDevicesAudioJackInput {
  final pulumi.Input<double?>? bufferLength;
  /// Sets the client name for the Jack audio output.
  final pulumi.Input<String?>? clientName;
  /// Specifies the connection ports for the Jack audio output.
  final pulumi.Input<String?>? connectPorts;
  /// Sets the exact client name for the Jack audio output.
  final pulumi.Input<String?>? exactName;
  final pulumi.Input<String?>? fixedSettings;
  final pulumi.Input<String?>? mixingEngine;
  /// Sets the server name for the Jack audio output.
  final pulumi.Input<String?>? serverName;
  final pulumi.Input<DomainDevicesAudioJackInputSettings?>? settings;
  final pulumi.Input<double?>? voices;

  /// Creates a new [DomainDevicesAudioJackInput].
  /// [bufferLength] Optional.
  /// [clientName] Sets the client name for the Jack audio output.
  /// [connectPorts] Specifies the connection ports for the Jack audio output.
  /// [exactName] Sets the exact client name for the Jack audio output.
  /// [fixedSettings] Optional.
  /// [mixingEngine] Optional.
  /// [serverName] Sets the server name for the Jack audio output.
  /// [settings] Optional.
  /// [voices] Optional.
  const DomainDevicesAudioJackInput({
    this.bufferLength,
    this.clientName,
    this.connectPorts,
    this.exactName,
    this.fixedSettings,
    this.mixingEngine,
    this.serverName,
    this.settings,
    this.voices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bufferLength': ?bufferLength,
      'clientName': ?clientName,
      'connectPorts': ?connectPorts,
      'exactName': ?exactName,
      'fixedSettings': ?fixedSettings,
      'mixingEngine': ?mixingEngine,
      'serverName': ?serverName,
      'settings': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioJackInputSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'voices': ?voices,
    };
  }

  factory DomainDevicesAudioJackInput.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioJackInput(
      bufferLength: (() { final guardedValue = map['bufferLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      clientName: (() { final guardedValue = map['clientName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectPorts: (() { final guardedValue = map['connectPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exactName: (() { final guardedValue = map['exactName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fixedSettings: (() { final guardedValue = map['fixedSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mixingEngine: (() { final guardedValue = map['mixingEngine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverName: (() { final guardedValue = map['serverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesAudioJackInputSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      voices: (() { final guardedValue = map['voices']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
