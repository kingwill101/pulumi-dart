// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_issuer_admin.dart';

/// {@template pulumi_keyvault_certificate_issuer_certificate_issuer_args_doc}
/// The set of arguments for CertificateIssuer.
/// {@endtemplate}
/// {@macro pulumi_keyvault_certificate_issuer_certificate_issuer_args_doc}
class CertificateIssuerArgs {
  /// The account number with the third-party Certificate Issuer.
  final pulumi.Input<String?>? accountId;
  /// One or more `admin` blocks as defined below.
  final pulumi.Input<List<CertificateIssuerAdmin>?>? admins;
  /// The ID of the Key Vault in which to create the Certificate Issuer. Changing this forces a new resource to be created.
  final pulumi.Input<String> keyVaultId;
  /// The name which should be used for this Key Vault Certificate Issuer. Changing this forces a new Key Vault Certificate Issuer to be created.
  final pulumi.Input<String?>? name;
  /// The ID of the organization as provided to the issuer.
  final pulumi.Input<String?>? orgId;
  /// The password associated with the account and organization ID at the third-party Certificate Issuer. If not specified, will not overwrite any previous value.
  final pulumi.Input<String?>? password;
  /// The name of the third-party Certificate Issuer. Possible values are: `DigiCert`, `GlobalSign`, `OneCertV2-PrivateCA`, `OneCertV2-PublicCA` and `SslAdminV2`.
  final pulumi.Input<String> providerName;

  /// Creates a new [CertificateIssuerArgs].
  /// [accountId] The account number with the third-party Certificate Issuer.
  /// [admins] One or more `admin` blocks as defined below.
  /// [keyVaultId] The ID of the Key Vault in which to create the Certificate Issuer. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Key Vault Certificate Issuer. Changing this forces a new Key Vault Certificate Issuer to be created.
  /// [orgId] The ID of the organization as provided to the issuer.
  /// [password] The password associated with the account and organization ID at the third-party Certificate Issuer. If not specified, will not overwrite any previous value.
  /// [providerName] The name of the third-party Certificate Issuer. Possible values are: `DigiCert`, `GlobalSign`, `OneCertV2-PrivateCA`, `OneCertV2-PublicCA` and `SslAdminV2`.
  const CertificateIssuerArgs({
    this.accountId,
    this.admins,
    required this.keyVaultId,
    this.name,
    this.orgId,
    this.password,
    required this.providerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'admins': ?pulumi.Input.mapOptionalInputValue<List<CertificateIssuerAdmin>, List<Map<String, dynamic>>>(admins, (value) => pulumi.Input.encodeList<CertificateIssuerAdmin, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keyVaultId': keyVaultId,
      'name': ?name,
      'orgId': ?orgId,
      'password': ?password,
      'providerName': providerName,
    };
  }

  factory CertificateIssuerArgs.fromMap(Map<String, dynamic> map) {
    return CertificateIssuerArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      admins: (() { final guardedValue = map['admins']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CertificateIssuerAdmin>(guardedValue, (value) => CertificateIssuerAdmin.fromMap((value as Map).cast<String, dynamic>()))); })(),
      keyVaultId: pulumi.Input.fromValue(map['keyVaultId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgId: (() { final guardedValue = map['orgId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerName: pulumi.Input.fromValue(map['providerName'] as String),
    );
  }
}
