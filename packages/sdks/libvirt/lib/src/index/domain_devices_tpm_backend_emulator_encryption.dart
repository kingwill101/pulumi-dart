// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesTpmBackendEmulatorEncryption {
  /// Sets the secret used for the encryption configuration for the emulator TPM backend.
  final pulumi.Input<String> secret;

  /// Creates a new [DomainDevicesTpmBackendEmulatorEncryption].
  /// [secret] Sets the secret used for the encryption configuration for the emulator TPM backend.
  DomainDevicesTpmBackendEmulatorEncryption({
    required this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secret': secret,
    };
  }

  factory DomainDevicesTpmBackendEmulatorEncryption.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpmBackendEmulatorEncryption(
      secret: pulumi.Input.fromValue(map['secret'] as String),
    );
  }
}

