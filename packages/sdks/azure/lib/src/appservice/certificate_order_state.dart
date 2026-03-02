// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_order_certificate.dart';

/// Input properties used for looking up and filtering CertificateOrder resources.
class CertificateOrderState {
  /// Reasons why App Service Certificate is not renewable at the current moment.
  final pulumi.Input<List<String>>? appServiceCertificateNotRenewableReasons;
  /// true if the certificate should be automatically renewed when it expires; otherwise, false. Defaults to `true`.
  final pulumi.Input<bool>? autoRenew;
  /// State of the Key Vault secret. A `certificates` block as defined below.
  final pulumi.Input<List<CertificateOrderCertificate>>? certificates;
  /// Last CSR that was created for this order.
  final pulumi.Input<String>? csr;
  /// The Distinguished Name for the App Service Certificate Order.
  ///
  /// > **Note:** Either `csr` or `distinguished_name` must be set - but not both.
  final pulumi.Input<String>? distinguishedName;
  /// Domain verification token.
  final pulumi.Input<String>? domainVerificationToken;
  /// Certificate expiration time.
  final pulumi.Input<String>? expirationTime;
  /// Certificate thumbprint intermediate certificate.
  final pulumi.Input<String>? intermediateThumbprint;
  /// Whether the private key is external or not.
  final pulumi.Input<bool>? isPrivateKeyExternal;
  /// Certificate key size. Defaults to `2048`.
  final pulumi.Input<int>? keySize;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. Currently the only valid value is `global`.
  final pulumi.Input<String>? location;
  /// Specifies the name of the certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Certificate product type, such as `Standard` or `WildCard`. Defaults to `Standard`.
  final pulumi.Input<String>? productType;
  /// The name of the resource group in which to create the certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Certificate thumbprint for root certificate.
  final pulumi.Input<String>? rootThumbprint;
  /// Certificate thumbprint for signed certificate.
  final pulumi.Input<String>? signedCertificateThumbprint;
  /// Current order status.
  final pulumi.Input<String>? status;
  /// (Optional) A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Duration in years (must be between `1` and `3`). Defaults to `1`.
  final pulumi.Input<int>? validityInYears;

  /// Creates a new [CertificateOrderState].
  /// [appServiceCertificateNotRenewableReasons] Reasons why App Service Certificate is not renewable at the current moment.
  /// [autoRenew] true if the certificate should be automatically renewed when it expires; otherwise, false. Defaults to `true`.
  /// [certificates] State of the Key Vault secret. A `certificates` block as defined below.
  /// [csr] Last CSR that was created for this order.
  /// [distinguishedName] The Distinguished Name for the App Service Certificate Order.
  /// [domainVerificationToken] Domain verification token.
  /// [expirationTime] Certificate expiration time.
  /// [intermediateThumbprint] Certificate thumbprint intermediate certificate.
  /// [isPrivateKeyExternal] Whether the private key is external or not.
  /// [keySize] Certificate key size. Defaults to `2048`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. Currently the only valid value is `global`.
  /// [name] Specifies the name of the certificate. Changing this forces a new resource to be created.
  /// [productType] Certificate product type, such as `Standard` or `WildCard`. Defaults to `Standard`.
  /// [resourceGroupName] The name of the resource group in which to create the certificate. Changing this forces a new resource to be created.
  /// [rootThumbprint] Certificate thumbprint for root certificate.
  /// [signedCertificateThumbprint] Certificate thumbprint for signed certificate.
  /// [status] Current order status.
  /// [tags] (Optional) A mapping of tags to assign to the resource.
  /// [validityInYears] Duration in years (must be between `1` and `3`). Defaults to `1`.
  CertificateOrderState({
    this.appServiceCertificateNotRenewableReasons,
    this.autoRenew,
    this.certificates,
    this.csr,
    this.distinguishedName,
    this.domainVerificationToken,
    this.expirationTime,
    this.intermediateThumbprint,
    this.isPrivateKeyExternal,
    this.keySize,
    this.location,
    this.name,
    this.productType,
    this.resourceGroupName,
    this.rootThumbprint,
    this.signedCertificateThumbprint,
    this.status,
    this.tags,
    this.validityInYears,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceCertificateNotRenewableReasons': ?appServiceCertificateNotRenewableReasons,
      'autoRenew': ?autoRenew,
      'certificates': ?pulumi.Input.mapOptionalInputValue<List<CertificateOrderCertificate>, List<Map<String, dynamic>>>(certificates, (value) => pulumi.Input.encodeList<CertificateOrderCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'csr': ?csr,
      'distinguishedName': ?distinguishedName,
      'domainVerificationToken': ?domainVerificationToken,
      'expirationTime': ?expirationTime,
      'intermediateThumbprint': ?intermediateThumbprint,
      'isPrivateKeyExternal': ?isPrivateKeyExternal,
      'keySize': ?keySize,
      'location': ?location,
      'name': ?name,
      'productType': ?productType,
      'resourceGroupName': ?resourceGroupName,
      'rootThumbprint': ?rootThumbprint,
      'signedCertificateThumbprint': ?signedCertificateThumbprint,
      'status': ?status,
      'tags': ?tags,
      'validityInYears': ?validityInYears,
    };
  }

  factory CertificateOrderState.fromMap(Map<String, dynamic> map) {
    return CertificateOrderState(
      appServiceCertificateNotRenewableReasons: map['appServiceCertificateNotRenewableReasons'] == null ? null : ((map['appServiceCertificateNotRenewableReasons']! as List).cast<String>()).input(),
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew']! as bool).input(),
      certificates: map['certificates'] == null ? null : (pulumi.Input.decodeList<CertificateOrderCertificate>(map['certificates']!, (value) => CertificateOrderCertificate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      csr: map['csr'] == null ? null : (map['csr']! as String).input(),
      distinguishedName: map['distinguishedName'] == null ? null : (map['distinguishedName']! as String).input(),
      domainVerificationToken: map['domainVerificationToken'] == null ? null : (map['domainVerificationToken']! as String).input(),
      expirationTime: map['expirationTime'] == null ? null : (map['expirationTime']! as String).input(),
      intermediateThumbprint: map['intermediateThumbprint'] == null ? null : (map['intermediateThumbprint']! as String).input(),
      isPrivateKeyExternal: map['isPrivateKeyExternal'] == null ? null : (map['isPrivateKeyExternal']! as bool).input(),
      keySize: map['keySize'] == null ? null : (map['keySize']! as int).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      productType: map['productType'] == null ? null : (map['productType']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      rootThumbprint: map['rootThumbprint'] == null ? null : (map['rootThumbprint']! as String).input(),
      signedCertificateThumbprint: map['signedCertificateThumbprint'] == null ? null : (map['signedCertificateThumbprint']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      validityInYears: map['validityInYears'] == null ? null : (map['validityInYears']! as int).input(),
    );
  }
}

