// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_audio_alsa.dart';
import 'domain_devices_audio_core_audio.dart';
import 'domain_devices_audio_dbus.dart';
import 'domain_devices_audio_file.dart';
import 'domain_devices_audio_jack.dart';
import 'domain_devices_audio_none.dart';
import 'domain_devices_audio_oss.dart';
import 'domain_devices_audio_pipe_wire.dart';
import 'domain_devices_audio_pulse_audio.dart';
import 'domain_devices_audio_sdl.dart';
import 'domain_devices_audio_spice.dart';

class DomainDevicesAudio {
  /// Configures ALSA audio settings for the domain, enabling audio playback and recording using the ALSA framework.
  final pulumi.Input<DomainDevicesAudioAlsa>? alsa;
  /// Configures the CoreAudio audio device for the guest.
  final pulumi.Input<DomainDevicesAudioCoreAudio>? coreAudio;
  /// Configures the D-Bus audio device for the guest.
  final pulumi.Input<DomainDevicesAudioDbus>? dbus;
  /// Configures the file-based audio device for the guest.
  final pulumi.Input<DomainDevicesAudioFile>? file;
  /// Assigns a unique identifier to the audio device.
  final pulumi.Input<double>? id;
  /// Configures the Jack audio device for the guest.
  final pulumi.Input<DomainDevicesAudioJack>? jack;
  /// Configures the None audio device for the guest.
  final pulumi.Input<DomainDevicesAudioNone>? none;
  /// Configures the OSS audio device for the guest.
  final pulumi.Input<DomainDevicesAudioOss>? oss;
  /// Configures the PipeWire audio device for the guest.
  final pulumi.Input<DomainDevicesAudioPipeWire>? pipeWire;
  /// Configures the PulseAudio audio backend for the virtual machine.
  final pulumi.Input<DomainDevicesAudioPulseAudio>? pulseAudio;
  /// Configures the SDL audio backend for the virtual machine.
  final pulumi.Input<DomainDevicesAudioSdl>? sdl;
  /// Configures the SPICE audio backend for the virtual machine.
  final pulumi.Input<DomainDevicesAudioSpice>? spice;
  /// Sets the timer period for the audio devices in the configuration.
  final pulumi.Input<double>? timerPeriod;

  /// Creates a new [DomainDevicesAudio].
  /// [alsa] Configures ALSA audio settings for the domain, enabling audio playback and recording using the ALSA framework.
  /// [coreAudio] Configures the CoreAudio audio device for the guest.
  /// [dbus] Configures the D-Bus audio device for the guest.
  /// [file] Configures the file-based audio device for the guest.
  /// [id] Assigns a unique identifier to the audio device.
  /// [jack] Configures the Jack audio device for the guest.
  /// [none] Configures the None audio device for the guest.
  /// [oss] Configures the OSS audio device for the guest.
  /// [pipeWire] Configures the PipeWire audio device for the guest.
  /// [pulseAudio] Configures the PulseAudio audio backend for the virtual machine.
  /// [sdl] Configures the SDL audio backend for the virtual machine.
  /// [spice] Configures the SPICE audio backend for the virtual machine.
  /// [timerPeriod] Sets the timer period for the audio devices in the configuration.
  const DomainDevicesAudio({
    this.alsa,
    this.coreAudio,
    this.dbus,
    this.file,
    this.id,
    this.jack,
    this.none,
    this.oss,
    this.pipeWire,
    this.pulseAudio,
    this.sdl,
    this.spice,
    this.timerPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alsa': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioAlsa, Map<String, dynamic>>(alsa, (value) => value.toMap()),
      'coreAudio': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioCoreAudio, Map<String, dynamic>>(coreAudio, (value) => value.toMap()),
      'dbus': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioDbus, Map<String, dynamic>>(dbus, (value) => value.toMap()),
      'file': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioFile, Map<String, dynamic>>(file, (value) => value.toMap()),
      'id': ?id,
      'jack': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioJack, Map<String, dynamic>>(jack, (value) => value.toMap()),
      'none': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioNone, Map<String, dynamic>>(none, (value) => value.toMap()),
      'oss': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioOss, Map<String, dynamic>>(oss, (value) => value.toMap()),
      'pipeWire': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioPipeWire, Map<String, dynamic>>(pipeWire, (value) => value.toMap()),
      'pulseAudio': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioPulseAudio, Map<String, dynamic>>(pulseAudio, (value) => value.toMap()),
      'sdl': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioSdl, Map<String, dynamic>>(sdl, (value) => value.toMap()),
      'spice': ?pulumi.Input.mapOptionalInputValue<DomainDevicesAudioSpice, Map<String, dynamic>>(spice, (value) => value.toMap()),
      'timerPeriod': ?timerPeriod,
    };
  }

  factory DomainDevicesAudio.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudio(
      alsa: (() { final guardedValue = map['alsa']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesAudioAlsa.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      coreAudio: (() { final guardedValue = map['coreAudio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesAudioCoreAudio.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dbus: (() { final guardedValue = map['dbus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesAudioDbus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesAudioFile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      jack: (() { final guardedValue = map['jack']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesAudioJack.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      none: (() { final guardedValue = map['none']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesAudioNone.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oss: (() { final guardedValue = map['oss']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesAudioOss.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pipeWire: (() { final guardedValue = map['pipeWire']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesAudioPipeWire.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pulseAudio: (() { final guardedValue = map['pulseAudio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesAudioPulseAudio.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sdl: (() { final guardedValue = map['sdl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesAudioSdl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spice: (() { final guardedValue = map['spice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesAudioSpice.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timerPeriod: (() { final guardedValue = map['timerPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

