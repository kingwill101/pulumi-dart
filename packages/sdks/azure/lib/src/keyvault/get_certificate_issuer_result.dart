// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_issuer_admin.dart';

/// Result data returned by getCertificateIssuer.
class GetCertificateIssuerResult {
  /// The account number with the third-party Certificate Issuer.
  final String? accountId;
  /// A list of `admin` blocks as defined below.
  final List<GetCertificateIssuerAdmin>? admins;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? keyVaultId;
  final String? name;
  /// The organization ID with the third-party Certificate Issuer.
  final String? orgId;
  /// The name of the third-party Certificate Issuer.
  final String? providerName;

  /// Creates a new [GetCertificateIssuerResult].
  /// [accountId] The account number with the third-party Certificate Issuer.
  /// [admins] A list of `admin` blocks as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyVaultId] Optional.
  /// [name] Optional.
  /// [orgId] The organization ID with the third-party Certificate Issuer.
  /// [providerName] The name of the third-party Certificate Issuer.
  const GetCertificateIssuerResult({
    this.accountId,
    this.admins,
    this.id,
    this.keyVaultId,
    this.name,
    this.orgId,
    this.providerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'admins': ?(() { final guardedValue = admins; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCertificateIssuerAdmin, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'keyVaultId': ?keyVaultId,
      'name': ?name,
      'orgId': ?orgId,
      'providerName': ?providerName,
    };
  }

  factory GetCertificateIssuerResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateIssuerResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      admins: (() { final guardedValue = map['admins']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCertificateIssuerAdmin>(guardedValue, (value) => GetCertificateIssuerAdmin.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyVaultId: (() { final guardedValue = map['keyVaultId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orgId: (() { final guardedValue = map['orgId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      providerName: (() { final guardedValue = map['providerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
