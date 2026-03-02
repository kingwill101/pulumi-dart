// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_issuer_admin.dart';

/// Input properties used for looking up and filtering CertificateIssuer resources.
class CertificateIssuerState {
  /// The account number with the third-party Certificate Issuer.
  final pulumi.Input<String>? accountId;
  /// One or more `admin` blocks as defined below.
  final pulumi.Input<List<CertificateIssuerAdmin>>? admins;
  /// The ID of the Key Vault in which to create the Certificate Issuer. Changing this forces a new resource to be created.
  final pulumi.Input<String>? keyVaultId;
  /// The name which should be used for this Key Vault Certificate Issuer. Changing this forces a new Key Vault Certificate Issuer to be created.
  final pulumi.Input<String>? name;
  /// The ID of the organization as provided to the issuer.
  final pulumi.Input<String>? orgId;
  /// The password associated with the account and organization ID at the third-party Certificate Issuer. If not specified, will not overwrite any previous value.
  final pulumi.Input<String>? password;
  /// The name of the third-party Certificate Issuer. Possible values are: `DigiCert`, `GlobalSign`, `OneCertV2-PrivateCA`, `OneCertV2-PublicCA` and `SslAdminV2`.
  final pulumi.Input<String>? providerName;

  /// Creates a new [CertificateIssuerState].
  /// [accountId] The account number with the third-party Certificate Issuer.
  /// [admins] One or more `admin` blocks as defined below.
  /// [keyVaultId] The ID of the Key Vault in which to create the Certificate Issuer. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Key Vault Certificate Issuer. Changing this forces a new Key Vault Certificate Issuer to be created.
  /// [orgId] The ID of the organization as provided to the issuer.
  /// [password] The password associated with the account and organization ID at the third-party Certificate Issuer. If not specified, will not overwrite any previous value.
  /// [providerName] The name of the third-party Certificate Issuer. Possible values are: `DigiCert`, `GlobalSign`, `OneCertV2-PrivateCA`, `OneCertV2-PublicCA` and `SslAdminV2`.
  CertificateIssuerState({
    this.accountId,
    this.admins,
    this.keyVaultId,
    this.name,
    this.orgId,
    this.password,
    this.providerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'admins': ?pulumi.Input.mapOptionalInputValue<List<CertificateIssuerAdmin>, List<Map<String, dynamic>>>(admins, (value) => pulumi.Input.encodeList<CertificateIssuerAdmin, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keyVaultId': ?keyVaultId,
      'name': ?name,
      'orgId': ?orgId,
      'password': ?password,
      'providerName': ?providerName,
    };
  }

  factory CertificateIssuerState.fromMap(Map<String, dynamic> map) {
    return CertificateIssuerState(
      accountId: map['accountId'] == null ? null : (map['accountId']! as String).input(),
      admins: map['admins'] == null ? null : (pulumi.Input.decodeList<CertificateIssuerAdmin>(map['admins']!, (value) => CertificateIssuerAdmin.fromMap((value as Map).cast<String, dynamic>()))).input(),
      keyVaultId: map['keyVaultId'] == null ? null : (map['keyVaultId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      orgId: map['orgId'] == null ? null : (map['orgId']! as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      providerName: map['providerName'] == null ? null : (map['providerName']! as String).input(),
    );
  }
}

