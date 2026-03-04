// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CaPoolIssuancePolicyAllowedKeyTypeRsa {
  /// The maximum allowed RSA modulus size, in bits. If this is not set, or if set to zero, the
  /// service will not enforce an explicit upper bound on RSA modulus sizes.
  final pulumi.Input<String>? maxModulusSize;

  /// The minimum allowed RSA modulus size, in bits. If this is not set, or if set to zero, the
  /// service-level min RSA modulus size will continue to apply.
  final pulumi.Input<String>? minModulusSize;

  /// Creates a new [CaPoolIssuancePolicyAllowedKeyTypeRsa].
  /// [maxModulusSize] The maximum allowed RSA modulus size, in bits. If this is not set, or if set to zero, the
  /// [minModulusSize] The minimum allowed RSA modulus size, in bits. If this is not set, or if set to zero, the
  CaPoolIssuancePolicyAllowedKeyTypeRsa({
    this.maxModulusSize,
    this.minModulusSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxModulusSize': ?maxModulusSize,
      'minModulusSize': ?minModulusSize,
    };
  }

  factory CaPoolIssuancePolicyAllowedKeyTypeRsa.fromMap(
    Map<String, dynamic> map,
  ) {
    return CaPoolIssuancePolicyAllowedKeyTypeRsa(
      maxModulusSize: (() {
        final guardedValue = map['maxModulusSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      minModulusSize: (() {
        final guardedValue = map['minModulusSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
