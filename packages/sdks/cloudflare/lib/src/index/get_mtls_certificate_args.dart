// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_mtls_certificate_get_mtls_certificate_args_doc}
/// Arguments for getMtlsCertificate.
/// {@endtemplate}
/// {@macro pulumi_index_get_mtls_certificate_get_mtls_certificate_args_doc}
class GetMtlsCertificateArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// Identifier.
  final pulumi.Input<String> mtlsCertificateId;

  /// Creates a new [GetMtlsCertificateArgs].
  /// [accountId] Identifier.
  /// [mtlsCertificateId] Identifier.
  const GetMtlsCertificateArgs({
    required this.accountId,
    required this.mtlsCertificateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'mtlsCertificateId': mtlsCertificateId,
    };
  }

  factory GetMtlsCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetMtlsCertificateArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      mtlsCertificateId: pulumi.Input.fromValue(map['mtlsCertificateId'] as String),
    );
  }
}
