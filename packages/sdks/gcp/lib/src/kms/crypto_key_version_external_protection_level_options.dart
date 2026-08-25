// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CryptoKeyVersionExternalProtectionLevelOptions {
  /// The path to the external key material on the EKM when using EkmConnection e.g., "v0/my/key". Set this field instead of externalKeyUri when using an EkmConnection.
  final pulumi.Input<String?>? ekmConnectionKeyPath;
  /// The URI for an external resource that this CryptoKeyVersion represents.
  final pulumi.Input<String?>? externalKeyUri;

  /// Creates a new [CryptoKeyVersionExternalProtectionLevelOptions].
  /// [ekmConnectionKeyPath] The path to the external key material on the EKM when using EkmConnection e.g., "v0/my/key". Set this field instead of externalKeyUri when using an EkmConnection.
  /// [externalKeyUri] The URI for an external resource that this CryptoKeyVersion represents.
  const CryptoKeyVersionExternalProtectionLevelOptions({
    this.ekmConnectionKeyPath,
    this.externalKeyUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ekmConnectionKeyPath': ?ekmConnectionKeyPath,
      'externalKeyUri': ?externalKeyUri,
    };
  }

  factory CryptoKeyVersionExternalProtectionLevelOptions.fromMap(Map<String, dynamic> map) {
    return CryptoKeyVersionExternalProtectionLevelOptions(
      ekmConnectionKeyPath: (() { final guardedValue = map['ekmConnectionKeyPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalKeyUri: (() { final guardedValue = map['externalKeyUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
