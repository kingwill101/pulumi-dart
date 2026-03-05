// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes an RSA key that may be used in a Certificate issued from a CaPool.
class RsaKeyType {
  /// Optional. The maximum allowed RSA modulus size (inclusive), in bits. If this is not set, or if set to zero, the service will not enforce an explicit upper bound on RSA modulus sizes.
  final pulumi.Input<String>? maxModulusSize;
  /// Optional. The minimum allowed RSA modulus size (inclusive), in bits. If this is not set, or if set to zero, the service-level min RSA modulus size will continue to apply.
  final pulumi.Input<String>? minModulusSize;

  /// Creates a new [RsaKeyType].
  /// [maxModulusSize] Optional. The maximum allowed RSA modulus size (inclusive), in bits. If this is not set, or if set to zero, the service will not enforce an explicit upper bound on RSA modulus sizes.
  /// [minModulusSize] Optional. The minimum allowed RSA modulus size (inclusive), in bits. If this is not set, or if set to zero, the service-level min RSA modulus size will continue to apply.
  RsaKeyType({
    this.maxModulusSize,
    this.minModulusSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxModulusSize': ?maxModulusSize,
      'minModulusSize': ?minModulusSize,
    };
  }

  factory RsaKeyType.fromMap(Map<String, dynamic> map) {
    return RsaKeyType(
      maxModulusSize: (() { final guardedValue = map['maxModulusSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minModulusSize: (() { final guardedValue = map['minModulusSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

