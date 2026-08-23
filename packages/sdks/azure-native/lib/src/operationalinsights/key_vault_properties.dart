// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The key vault properties.
class KeyVaultProperties {
  /// The name of the key associated with the Log Analytics cluster.
  final pulumi.Input<String>? keyName;
  /// Selected key minimum required size.
  final pulumi.Input<int>? keyRsaSize;
  /// The Key Vault uri which holds they key associated with the Log Analytics cluster.
  final pulumi.Input<String>? keyVaultUri;
  /// The version of the key associated with the Log Analytics cluster.
  final pulumi.Input<String>? keyVersion;

  /// Creates a new [KeyVaultProperties].
  /// [keyName] The name of the key associated with the Log Analytics cluster.
  /// [keyRsaSize] Selected key minimum required size.
  /// [keyVaultUri] The Key Vault uri which holds they key associated with the Log Analytics cluster.
  /// [keyVersion] The version of the key associated with the Log Analytics cluster.
  const KeyVaultProperties({
    this.keyName,
    this.keyRsaSize,
    this.keyVaultUri,
    this.keyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': ?keyName,
      'keyRsaSize': ?keyRsaSize,
      'keyVaultUri': ?keyVaultUri,
      'keyVersion': ?keyVersion,
    };
  }

  factory KeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return KeyVaultProperties(
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyRsaSize: (() { final guardedValue = map['keyRsaSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      keyVaultUri: (() { final guardedValue = map['keyVaultUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVersion: (() { final guardedValue = map['keyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
