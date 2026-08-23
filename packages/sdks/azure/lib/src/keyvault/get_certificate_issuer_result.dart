// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_issuer_admin.dart';

/// Result data returned by getCertificateIssuer.
class GetCertificateIssuerResult {
  /// The account number with the third-party Certificate Issuer.
  final String accountId;
  /// A list of `admin` blocks as defined below.
  final List<GetCertificateIssuerAdmin> admins;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String keyVaultId;
  final String name;
  /// The organization ID with the third-party Certificate Issuer.
  final String orgId;
  /// The name of the third-party Certificate Issuer.
  final String providerName;

  /// Creates a new [GetCertificateIssuerResult].
  /// [accountId] The account number with the third-party Certificate Issuer.
  /// [admins] A list of `admin` blocks as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyVaultId] Required.
  /// [name] Required.
  /// [orgId] The organization ID with the third-party Certificate Issuer.
  /// [providerName] The name of the third-party Certificate Issuer.
  const GetCertificateIssuerResult({
    required this.accountId,
    required this.admins,
    required this.id,
    required this.keyVaultId,
    required this.name,
    required this.orgId,
    required this.providerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'admins': pulumi.Input.encodeList<GetCertificateIssuerAdmin, Map<String, dynamic>>(admins, (value) => value.toMap()),
      'id': id,
      'keyVaultId': keyVaultId,
      'name': name,
      'orgId': orgId,
      'providerName': providerName,
    };
  }

  factory GetCertificateIssuerResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateIssuerResult(
      accountId: map['accountId'] as String,
      admins: pulumi.Input.decodeList<GetCertificateIssuerAdmin>(map['admins']!, (value) => GetCertificateIssuerAdmin.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      keyVaultId: map['keyVaultId'] as String,
      name: map['name'] as String,
      orgId: map['orgId'] as String,
      providerName: map['providerName'] as String,
    );
  }
}
