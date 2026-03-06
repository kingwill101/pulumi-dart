// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesTpmBackendEmulatorProfile {
  /// Specifies the name of the profile for the emulator TPM backend.
  final pulumi.Input<String>? name;
  /// Configures whether to remove disabled profiles for the emulator TPM backend.
  final pulumi.Input<String>? removeDisabled;
  /// Sets the source configuration for the profile of the emulator TPM backend.
  final pulumi.Input<String>? source;

  /// Creates a new [DomainDevicesTpmBackendEmulatorProfile].
  /// [name] Specifies the name of the profile for the emulator TPM backend.
  /// [removeDisabled] Configures whether to remove disabled profiles for the emulator TPM backend.
  /// [source] Sets the source configuration for the profile of the emulator TPM backend.
  const DomainDevicesTpmBackendEmulatorProfile({
    this.name,
    this.removeDisabled,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'removeDisabled': ?removeDisabled,
      'source': ?source,
    };
  }

  factory DomainDevicesTpmBackendEmulatorProfile.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpmBackendEmulatorProfile(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      removeDisabled: (() { final guardedValue = map['removeDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

