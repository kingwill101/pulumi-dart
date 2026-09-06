// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Object to hold key vault reference and the resolution status
class KeyVaultReferenceWithStatusResponse {
  /// Reference status of the key vault secret.
  final pulumi.Input<String?>? referenceStatus;
  /// Key vault secret URI.
  final pulumi.Input<String?>? secretUri;

  /// Creates a new [KeyVaultReferenceWithStatusResponse].
  /// [referenceStatus] Reference status of the key vault secret.
  /// [secretUri] Key vault secret URI.
  const KeyVaultReferenceWithStatusResponse({
    this.referenceStatus,
    this.secretUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceStatus': ?referenceStatus,
      'secretUri': ?secretUri,
    };
  }

  factory KeyVaultReferenceWithStatusResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultReferenceWithStatusResponse(
      referenceStatus: (() { final guardedValue = map['referenceStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretUri: (() { final guardedValue = map['secretUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
