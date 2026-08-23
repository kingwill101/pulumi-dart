// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_tpm_backend_emulator_active_pcr_banks.dart';
import 'domain_devices_tpm_backend_emulator_encryption.dart';
import 'domain_devices_tpm_backend_emulator_profile.dart';
import 'domain_devices_tpm_backend_emulator_source.dart';

class DomainDevicesTpmBackendEmulator {
  /// Sets the active PCR (Platform Configuration Register) banks for the emulator TPM backend.
  final pulumi.Input<DomainDevicesTpmBackendEmulatorActivePcrBanks>? activePcrBanks;
  /// Enables or disables debug mode for the emulator TPM backend.
  final pulumi.Input<double>? debug;
  /// Configures encryption settings for the emulator TPM backend.
  final pulumi.Input<DomainDevicesTpmBackendEmulatorEncryption>? encryption;
  /// Configures whether the emulator TPM keeps its state persistent across reboots.
  final pulumi.Input<String>? persistentState;
  /// Sets the profile configuration for the emulator TPM backend.
  final pulumi.Input<DomainDevicesTpmBackendEmulatorProfile>? profile;
  /// Configures the source settings for the emulator TPM backend.
  final pulumi.Input<DomainDevicesTpmBackendEmulatorSource>? source;
  /// Configures the version attributes for the emulator TPM backend.
  final pulumi.Input<String>? version;

  /// Creates a new [DomainDevicesTpmBackendEmulator].
  /// [activePcrBanks] Sets the active PCR (Platform Configuration Register) banks for the emulator TPM backend.
  /// [debug] Enables or disables debug mode for the emulator TPM backend.
  /// [encryption] Configures encryption settings for the emulator TPM backend.
  /// [persistentState] Configures whether the emulator TPM keeps its state persistent across reboots.
  /// [profile] Sets the profile configuration for the emulator TPM backend.
  /// [source] Configures the source settings for the emulator TPM backend.
  /// [version] Configures the version attributes for the emulator TPM backend.
  const DomainDevicesTpmBackendEmulator({
    this.activePcrBanks,
    this.debug,
    this.encryption,
    this.persistentState,
    this.profile,
    this.source,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activePcrBanks': ?pulumi.Input.mapOptionalInputValue<DomainDevicesTpmBackendEmulatorActivePcrBanks, Map<String, dynamic>>(activePcrBanks, (value) => value.toMap()),
      'debug': ?debug,
      'encryption': ?pulumi.Input.mapOptionalInputValue<DomainDevicesTpmBackendEmulatorEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'persistentState': ?persistentState,
      'profile': ?pulumi.Input.mapOptionalInputValue<DomainDevicesTpmBackendEmulatorProfile, Map<String, dynamic>>(profile, (value) => value.toMap()),
      'source': ?pulumi.Input.mapOptionalInputValue<DomainDevicesTpmBackendEmulatorSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory DomainDevicesTpmBackendEmulator.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpmBackendEmulator(
      activePcrBanks: (() { final guardedValue = map['activePcrBanks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesTpmBackendEmulatorActivePcrBanks.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      debug: (() { final guardedValue = map['debug']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesTpmBackendEmulatorEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      persistentState: (() { final guardedValue = map['persistentState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profile: (() { final guardedValue = map['profile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesTpmBackendEmulatorProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesTpmBackendEmulatorSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
