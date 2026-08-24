// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_mtls_certificate_associations_get_mtls_certificate_associations_args_doc}
/// Arguments for getMtlsCertificateAssociations.
/// {@endtemplate}
/// {@macro pulumi_index_get_mtls_certificate_associations_get_mtls_certificate_associations_args_doc}
class GetMtlsCertificateAssociationsArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// Identifier.
  final pulumi.Input<String> mtlsCertificateId;

  /// Creates a new [GetMtlsCertificateAssociationsArgs].
  /// [accountId] Identifier.
  /// [mtlsCertificateId] Identifier.
  const GetMtlsCertificateAssociationsArgs({
    required this.accountId,
    required this.mtlsCertificateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'mtlsCertificateId': mtlsCertificateId,
    };
  }

  factory GetMtlsCertificateAssociationsArgs.fromMap(Map<String, dynamic> map) {
    return GetMtlsCertificateAssociationsArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      mtlsCertificateId: pulumi.Input.fromValue(map['mtlsCertificateId'] as String),
    );
  }
}
