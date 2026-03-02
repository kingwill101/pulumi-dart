// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_tpm_backend_emulator.dart';
import 'domain_devices_tpm_backend_external.dart';
import 'domain_devices_tpm_backend_passthrough.dart';

class DomainDevicesTpmBackend {
  /// Configures the emulator backend for the TPM device, which handles its operations.
  final pulumi.Input<DomainDevicesTpmBackendEmulator>? emulator;
  /// Configures external settings for the TPM backend to use an external TPM device.
  final pulumi.Input<DomainDevicesTpmBackendExternal>? external;
  /// Configures the backend for the TPM device to be in passthrough mode, allowing direct access to the host's TPM functionality.
  final pulumi.Input<DomainDevicesTpmBackendPassthrough>? passthrough;

  /// Creates a new [DomainDevicesTpmBackend].
  /// [emulator] Configures the emulator backend for the TPM device, which handles its operations.
  /// [external] Configures external settings for the TPM backend to use an external TPM device.
  /// [passthrough] Configures the backend for the TPM device to be in passthrough mode, allowing direct access to the host's TPM functionality.
  DomainDevicesTpmBackend({
    this.emulator,
    this.external,
    this.passthrough,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emulator': ?pulumi.Input.mapOptionalInputValue<DomainDevicesTpmBackendEmulator, Map<String, dynamic>>(emulator, (value) => value.toMap()),
      'external': ?pulumi.Input.mapOptionalInputValue<DomainDevicesTpmBackendExternal, Map<String, dynamic>>(external, (value) => value.toMap()),
      'passthrough': ?pulumi.Input.mapOptionalInputValue<DomainDevicesTpmBackendPassthrough, Map<String, dynamic>>(passthrough, (value) => value.toMap()),
    };
  }

  factory DomainDevicesTpmBackend.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpmBackend(
      emulator: map['emulator'] == null ? null : (DomainDevicesTpmBackendEmulator.fromMap((map['emulator']! as Map).cast<String, dynamic>())).input(),
      external: map['external'] == null ? null : (DomainDevicesTpmBackendExternal.fromMap((map['external']! as Map).cast<String, dynamic>())).input(),
      passthrough: map['passthrough'] == null ? null : (DomainDevicesTpmBackendPassthrough.fromMap((map['passthrough']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

