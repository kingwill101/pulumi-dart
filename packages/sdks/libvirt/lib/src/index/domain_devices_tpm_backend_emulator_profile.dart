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
  DomainDevicesTpmBackendEmulatorProfile({
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
      name: map['name'] == null ? null : (map['name'] as String).input(),
      removeDisabled: map['removeDisabled'] == null ? null : (map['removeDisabled'] as String).input(),
      source: map['source'] == null ? null : (map['source'] as String).input(),
    );
  }
}

