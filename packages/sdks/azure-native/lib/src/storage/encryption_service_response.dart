// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A service that allows server-side encryption to be used.
class EncryptionServiceResponse {
  /// A boolean indicating whether or not the service encrypts the data as it is stored. Encryption at rest is enabled by default today and cannot be disabled.
  final pulumi.Input<bool>? enabled;

  /// Encryption key type to be used for the encryption service. 'Account' key type implies that an account-scoped encryption key will be used. 'Service' key type implies that a default service key is used.
  final pulumi.Input<String>? keyType;

  /// Gets a rough estimate of the date/time when the encryption was last enabled by the user. Data is encrypted at rest by default today and cannot be disabled.
  final pulumi.Input<String> lastEnabledTime;

  /// Creates a new [EncryptionServiceResponse].
  /// [enabled] A boolean indicating whether or not the service encrypts the data as it is stored. Encryption at rest is enabled by default today and cannot be disabled.
  /// [keyType] Encryption key type to be used for the encryption service. 'Account' key type implies that an account-scoped encryption key will be used. 'Service' key type implies that a default service key is used.
  /// [lastEnabledTime] Gets a rough estimate of the date/time when the encryption was last enabled by the user. Data is encrypted at rest by default today and cannot be disabled.
  EncryptionServiceResponse({
    this.enabled,
    this.keyType,
    required this.lastEnabledTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'keyType': ?keyType,
      'lastEnabledTime': lastEnabledTime,
    };
  }

  factory EncryptionServiceResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionServiceResponse(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      keyType: (() {
        final guardedValue = map['keyType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastEnabledTime: pulumi.Input.fromValue(map['lastEnabledTime'] as String),
    );
  }
}
