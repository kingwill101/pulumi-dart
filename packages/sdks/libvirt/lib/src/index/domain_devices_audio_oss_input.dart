// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_audio_oss_input_settings.dart';

class DomainDevicesAudioOssInput {
  /// Sets the number of output buffers for the OSS audio device.
  final pulumi.Input<double?>? bufferCount;
  final pulumi.Input<double?>? bufferLength;
  /// Sets the device node for the OSS audio output.
  final pulumi.Input<String?>? dev;
  final pulumi.Input<String?>? fixedSettings;
  final pulumi.Input<String?>? mixingEngine;
  final pulumi.Input<DomainDevicesAudioOssInputSettings?>? settings;
  /// Configures polling for the OSS audio output.
  final pulumi.Input<String?>? tryPoll;
  final pulumi.Input<double?>? voices;

  /// Creates a new [DomainDevicesAudioOssInput].
  /// [bufferCount] Sets the number of output buffers for the OSS audio device.
  /// [bufferLength] Optional.
  /// [dev] Sets the device node for the OSS audio output.
  /// [fixedSettings] Optional.
  /// [mixingEngine] Optional.
  /// [settings] Optional.
  /// [tryPoll] Configures polling for the OSS audio output.
  /// [voices] Optional.
  const DomainDevicesAudioOssInput({
    this.bufferCount,
    this.bufferLength,
    this.dev,
    this.fixedSettings,
    this.mixingEngine,
    this.settings,
    this.tryPoll,
    this.voices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bufferCount': ?bufferCount,
      'bufferLength': ?bufferLength,
      'dev': ?dev,
      'fixedSettings': ?fixedSettings,
      'mixingEngine': ?mixingEngine,
      'settings': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioOssInputSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'tryPoll': ?tryPoll,
      'voices': ?voices,
    };
  }

  factory DomainDevicesAudioOssInput.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioOssInput(
      bufferCount: (() { final guardedValue = map['bufferCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      bufferLength: (() { final guardedValue = map['bufferLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      dev: (() { final guardedValue = map['dev']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fixedSettings: (() { final guardedValue = map['fixedSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mixingEngine: (() { final guardedValue = map['mixingEngine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesAudioOssInputSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tryPoll: (() { final guardedValue = map['tryPoll']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      voices: (() { final guardedValue = map['voices']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
