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
  DomainDevicesAudio({
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
      alsa: map['alsa'] == null ? null : (DomainDevicesAudioAlsa.fromMap((map['alsa']! as Map).cast<String, dynamic>())).input(),
      coreAudio: map['coreAudio'] == null ? null : (DomainDevicesAudioCoreAudio.fromMap((map['coreAudio']! as Map).cast<String, dynamic>())).input(),
      dbus: map['dbus'] == null ? null : (DomainDevicesAudioDbus.fromMap((map['dbus']! as Map).cast<String, dynamic>())).input(),
      file: map['file'] == null ? null : (DomainDevicesAudioFile.fromMap((map['file']! as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (map['id']! as double).input(),
      jack: map['jack'] == null ? null : (DomainDevicesAudioJack.fromMap((map['jack']! as Map).cast<String, dynamic>())).input(),
      none: map['none'] == null ? null : (DomainDevicesAudioNone.fromMap((map['none']! as Map).cast<String, dynamic>())).input(),
      oss: map['oss'] == null ? null : (DomainDevicesAudioOss.fromMap((map['oss']! as Map).cast<String, dynamic>())).input(),
      pipeWire: map['pipeWire'] == null ? null : (DomainDevicesAudioPipeWire.fromMap((map['pipeWire']! as Map).cast<String, dynamic>())).input(),
      pulseAudio: map['pulseAudio'] == null ? null : (DomainDevicesAudioPulseAudio.fromMap((map['pulseAudio']! as Map).cast<String, dynamic>())).input(),
      sdl: map['sdl'] == null ? null : (DomainDevicesAudioSdl.fromMap((map['sdl']! as Map).cast<String, dynamic>())).input(),
      spice: map['spice'] == null ? null : (DomainDevicesAudioSpice.fromMap((map['spice']! as Map).cast<String, dynamic>())).input(),
      timerPeriod: map['timerPeriod'] == null ? null : (map['timerPeriod']! as double).input(),
    );
  }
}

