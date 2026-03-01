// ignore_for_file: unused_element, unnecessary_cast

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
  final DomainDevicesAudioAlsa? alsa;
  /// Configures the CoreAudio audio device for the guest.
  final DomainDevicesAudioCoreAudio? coreAudio;
  /// Configures the D-Bus audio device for the guest.
  final DomainDevicesAudioDbus? dbus;
  /// Configures the file-based audio device for the guest.
  final DomainDevicesAudioFile? file;
  /// Assigns a unique identifier to the audio device.
  final double? id;
  /// Configures the Jack audio device for the guest.
  final DomainDevicesAudioJack? jack;
  /// Configures the None audio device for the guest.
  final DomainDevicesAudioNone? none;
  /// Configures the OSS audio device for the guest.
  final DomainDevicesAudioOss? oss;
  /// Configures the PipeWire audio device for the guest.
  final DomainDevicesAudioPipeWire? pipeWire;
  /// Configures the PulseAudio audio backend for the virtual machine.
  final DomainDevicesAudioPulseAudio? pulseAudio;
  /// Configures the SDL audio backend for the virtual machine.
  final DomainDevicesAudioSdl? sdl;
  /// Configures the SPICE audio backend for the virtual machine.
  final DomainDevicesAudioSpice? spice;
  /// Sets the timer period for the audio devices in the configuration.
  final double? timerPeriod;

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
      'alsa': ?alsa == null ? null : alsa!.toMap(),
      'coreAudio': ?coreAudio == null ? null : coreAudio!.toMap(),
      'dbus': ?dbus == null ? null : dbus!.toMap(),
      'file': ?file == null ? null : file!.toMap(),
      'id': ?id,
      'jack': ?jack == null ? null : jack!.toMap(),
      'none': ?none == null ? null : none!.toMap(),
      'oss': ?oss == null ? null : oss!.toMap(),
      'pipeWire': ?pipeWire == null ? null : pipeWire!.toMap(),
      'pulseAudio': ?pulseAudio == null ? null : pulseAudio!.toMap(),
      'sdl': ?sdl == null ? null : sdl!.toMap(),
      'spice': ?spice == null ? null : spice!.toMap(),
      'timerPeriod': ?timerPeriod,
    };
  }

  factory DomainDevicesAudio.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudio(
      alsa: map['alsa'] == null ? null : DomainDevicesAudioAlsa.fromMap((map['alsa'] as Map).cast<String, dynamic>()),
      coreAudio: map['coreAudio'] == null ? null : DomainDevicesAudioCoreAudio.fromMap((map['coreAudio'] as Map).cast<String, dynamic>()),
      dbus: map['dbus'] == null ? null : DomainDevicesAudioDbus.fromMap((map['dbus'] as Map).cast<String, dynamic>()),
      file: map['file'] == null ? null : DomainDevicesAudioFile.fromMap((map['file'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as double,
      jack: map['jack'] == null ? null : DomainDevicesAudioJack.fromMap((map['jack'] as Map).cast<String, dynamic>()),
      none: map['none'] == null ? null : DomainDevicesAudioNone.fromMap((map['none'] as Map).cast<String, dynamic>()),
      oss: map['oss'] == null ? null : DomainDevicesAudioOss.fromMap((map['oss'] as Map).cast<String, dynamic>()),
      pipeWire: map['pipeWire'] == null ? null : DomainDevicesAudioPipeWire.fromMap((map['pipeWire'] as Map).cast<String, dynamic>()),
      pulseAudio: map['pulseAudio'] == null ? null : DomainDevicesAudioPulseAudio.fromMap((map['pulseAudio'] as Map).cast<String, dynamic>()),
      sdl: map['sdl'] == null ? null : DomainDevicesAudioSdl.fromMap((map['sdl'] as Map).cast<String, dynamic>()),
      spice: map['spice'] == null ? null : DomainDevicesAudioSpice.fromMap((map['spice'] as Map).cast<String, dynamic>()),
      timerPeriod: map['timerPeriod'] == null ? null : map['timerPeriod'] as double,
    );
  }
}

