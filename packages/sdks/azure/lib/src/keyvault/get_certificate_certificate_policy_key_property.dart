// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCertificateCertificatePolicyKeyProperty {
  final pulumi.Input<String> curve;
  /// Is this Certificate Exportable?
  final pulumi.Input<bool> exportable;
  /// The size of the Key used in the Certificate.
  final pulumi.Input<int> keySize;
  /// Specifies the Type of Key, for example `RSA`.
  final pulumi.Input<String> keyType;
  /// Is the key reusable?
  final pulumi.Input<bool> reuseKey;

  /// Creates a new [GetCertificateCertificatePolicyKeyProperty].
  /// [curve] Required.
  /// [exportable] Is this Certificate Exportable?
  /// [keySize] The size of the Key used in the Certificate.
  /// [keyType] Specifies the Type of Key, for example `RSA`.
  /// [reuseKey] Is the key reusable?
  GetCertificateCertificatePolicyKeyProperty({
    required this.curve,
    required this.exportable,
    required this.keySize,
    required this.keyType,
    required this.reuseKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'curve': curve,
      'exportable': exportable,
      'keySize': keySize,
      'keyType': keyType,
      'reuseKey': reuseKey,
    };
  }

  factory GetCertificateCertificatePolicyKeyProperty.fromMap(Map<String, dynamic> map) {
    return GetCertificateCertificatePolicyKeyProperty(
      curve: pulumi.Input.fromValue(map['curve'] as String),
      exportable: pulumi.Input.fromValue(map['exportable'] as bool),
      keySize: pulumi.Input.fromValue(map['keySize'] as int),
      keyType: pulumi.Input.fromValue(map['keyType'] as String),
      reuseKey: pulumi.Input.fromValue(map['reuseKey'] as bool),
    );
  }
}

