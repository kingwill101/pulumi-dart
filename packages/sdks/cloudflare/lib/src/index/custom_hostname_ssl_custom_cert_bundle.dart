// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomHostnameSslCustomCertBundle {
  /// If a custom uploaded certificate is used.
  final pulumi.Input<String> customCertificate;
  /// The key for a custom uploaded certificate.
  final pulumi.Input<String> customKey;

  /// Creates a new [CustomHostnameSslCustomCertBundle].
  /// [customCertificate] If a custom uploaded certificate is used.
  /// [customKey] The key for a custom uploaded certificate.
  const CustomHostnameSslCustomCertBundle({
    required this.customCertificate,
    required this.customKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customCertificate': customCertificate,
      'customKey': customKey,
    };
  }

  factory CustomHostnameSslCustomCertBundle.fromMap(Map<String, dynamic> map) {
    return CustomHostnameSslCustomCertBundle(
      customCertificate: pulumi.Input.fromValue(map['customCertificate'] as String),
      customKey: pulumi.Input.fromValue(map['customKey'] as String),
    );
  }
}
