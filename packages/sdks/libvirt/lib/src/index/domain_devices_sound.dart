// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_sound_acpi.dart';
import 'domain_devices_sound_alias.dart';
import 'domain_devices_sound_audio.dart';
import 'domain_devices_sound_codec.dart';
import 'domain_devices_sound_driver.dart';

class DomainDevicesSound {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final DomainDevicesSoundAcpi? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final Map<String, dynamic>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final DomainDevicesSoundAlias? alias;
  /// This field specifies the audio configuration for the sound device in the guest domain.
  final DomainDevicesSoundAudio? audio;
  /// This field configures the codec settings for the audio device in the domain.
  final List<DomainDevicesSoundCodec>? codecs;
  /// This field sets the driver configuration for the sound device in the domain.
  final DomainDevicesSoundDriver? driver;
  /// This field specifies the model of the sound device in the guest domain configuration.
  final String model;
  /// Configures whether the sound device supports multi-channel audio output.
  final String? multiChannel;
  /// Sets the number of audio streams supported by the sound device.
  final double? streams;

  /// Creates a new [DomainDevicesSound].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [audio] This field specifies the audio configuration for the sound device in the guest domain.
  /// [codecs] This field configures the codec settings for the audio device in the domain.
  /// [driver] This field sets the driver configuration for the sound device in the domain.
  /// [model] This field specifies the model of the sound device in the guest domain configuration.
  /// [multiChannel] Configures whether the sound device supports multi-channel audio output.
  /// [streams] Sets the number of audio streams supported by the sound device.
  DomainDevicesSound({
    this.acpi,
    this.address,
    this.alias,
    this.audio,
    this.codecs,
    this.driver,
    required this.model,
    this.multiChannel,
    this.streams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?acpi == null ? null : acpi!.toMap(),
      'address': ?address,
      'alias': ?alias == null ? null : alias!.toMap(),
      'audio': ?audio == null ? null : audio!.toMap(),
      'codecs': ?codecs == null ? null : pulumi.Input.encodeList<DomainDevicesSoundCodec, Map<String, dynamic>>(codecs!, (value) => value.toMap()),
      'driver': ?driver == null ? null : driver!.toMap(),
      'model': model,
      'multiChannel': ?multiChannel,
      'streams': ?streams,
    };
  }

  factory DomainDevicesSound.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSound(
      acpi: map['acpi'] == null ? null : DomainDevicesSoundAcpi.fromMap((map['acpi'] as Map).cast<String, dynamic>()),
      address: map['address'] == null ? null : (map['address'] as Map).cast<String, dynamic>(),
      alias: map['alias'] == null ? null : DomainDevicesSoundAlias.fromMap((map['alias'] as Map).cast<String, dynamic>()),
      audio: map['audio'] == null ? null : DomainDevicesSoundAudio.fromMap((map['audio'] as Map).cast<String, dynamic>()),
      codecs: map['codecs'] == null ? null : pulumi.Input.decodeList<DomainDevicesSoundCodec>(map['codecs'], (value) => DomainDevicesSoundCodec.fromMap((value as Map).cast<String, dynamic>())),
      driver: map['driver'] == null ? null : DomainDevicesSoundDriver.fromMap((map['driver'] as Map).cast<String, dynamic>()),
      model: map['model'] as String,
      multiChannel: map['multiChannel'] == null ? null : map['multiChannel'] as String,
      streams: map['streams'] == null ? null : map['streams'] as double,
    );
  }
}

