// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_custom_origin_trust_store_custom_origin_trust_store_args_doc}
/// The set of arguments for CustomOriginTrustStore.
/// {@endtemplate}
/// {@macro pulumi_index_custom_origin_trust_store_custom_origin_trust_store_args_doc}
class CustomOriginTrustStoreArgs {
  /// The root CA certificate in PEM format. Only root CA certificates are accepted; intermediate and leaf certificates are not supported.
  final pulumi.Input<String> certificate;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [CustomOriginTrustStoreArgs].
  /// [certificate] The root CA certificate in PEM format. Only root CA certificates are accepted; intermediate and leaf certificates are not supported.
  /// [zoneId] Identifier.
  const CustomOriginTrustStoreArgs({
    required this.certificate,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': certificate,
      'zoneId': zoneId,
    };
  }

  factory CustomOriginTrustStoreArgs.fromMap(Map<String, dynamic> map) {
    return CustomOriginTrustStoreArgs(
      certificate: pulumi.Input.fromValue(map['certificate'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
