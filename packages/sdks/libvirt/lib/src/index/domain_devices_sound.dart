// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_sound_acpi.dart';
import 'domain_devices_sound_alias.dart';
import 'domain_devices_sound_audio.dart';
import 'domain_devices_sound_codec.dart';
import 'domain_devices_sound_driver.dart';

class DomainDevicesSound {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final pulumi.Input<DomainDevicesSoundAcpi>? acpi;

  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final pulumi.Input<Map<String, dynamic>>? address;

  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final pulumi.Input<DomainDevicesSoundAlias>? alias;

  /// This field specifies the audio configuration for the sound device in the guest domain.
  final pulumi.Input<DomainDevicesSoundAudio>? audio;

  /// This field configures the codec settings for the audio device in the domain.
  final pulumi.Input<List<DomainDevicesSoundCodec>>? codecs;

  /// This field sets the driver configuration for the sound device in the domain.
  final pulumi.Input<DomainDevicesSoundDriver>? driver;

  /// This field specifies the model of the sound device in the guest domain configuration.
  final pulumi.Input<String> model;

  /// Configures whether the sound device supports multi-channel audio output.
  final pulumi.Input<String>? multiChannel;

  /// Sets the number of audio streams supported by the sound device.
  final pulumi.Input<double>? streams;

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
      'acpi':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesSoundAcpi,
            Map<String, dynamic>
          >(acpi, (value) => value.toMap()),
      'address': ?address,
      'alias':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesSoundAlias,
            Map<String, dynamic>
          >(alias, (value) => value.toMap()),
      'audio':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesSoundAudio,
            Map<String, dynamic>
          >(audio, (value) => value.toMap()),
      'codecs':
          ?pulumi.Input.mapOptionalInputValue<
            List<DomainDevicesSoundCodec>,
            List<Map<String, dynamic>>
          >(
            codecs,
            (value) =>
                pulumi.Input.encodeList<
                  DomainDevicesSoundCodec,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'driver':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesSoundDriver,
            Map<String, dynamic>
          >(driver, (value) => value.toMap()),
      'model': model,
      'multiChannel': ?multiChannel,
      'streams': ?streams,
    };
  }

  factory DomainDevicesSound.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSound(
      acpi: (() {
        final guardedValue = map['acpi'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesSoundAcpi.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      address: (() {
        final guardedValue = map['address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      alias: (() {
        final guardedValue = map['alias'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesSoundAlias.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      audio: (() {
        final guardedValue = map['audio'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesSoundAudio.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      codecs: (() {
        final guardedValue = map['codecs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DomainDevicesSoundCodec>(
            guardedValue,
            (value) => DomainDevicesSoundCodec.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      driver: (() {
        final guardedValue = map['driver'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesSoundDriver.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      model: pulumi.Input.fromValue(map['model'] as String),
      multiChannel: (() {
        final guardedValue = map['multiChannel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      streams: (() {
        final guardedValue = map['streams'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
