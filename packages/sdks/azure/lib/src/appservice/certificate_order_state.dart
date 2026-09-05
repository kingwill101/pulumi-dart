// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_order_certificate.dart';

/// Input properties used for looking up and filtering CertificateOrder resources.
class CertificateOrderState {
  /// Reasons why App Service Certificate is not renewable at the current moment.
  final pulumi.Input<List<String>?>? appServiceCertificateNotRenewableReasons;
  /// true if the certificate should be automatically renewed when it expires; otherwise, false. Defaults to `true`.
  final pulumi.Input<bool?>? autoRenew;
  /// State of the Key Vault secret. A `certificates` block as defined below.
  final pulumi.Input<List<CertificateOrderCertificate>?>? certificates;
  /// Last CSR that was created for this order.
  final pulumi.Input<String?>? csr;
  /// The Distinguished Name for the App Service Certificate Order.
  ///
  /// &gt; **Note:** Either `csr` or `distinguishedName` must be set - but not both.
  final pulumi.Input<String?>? distinguishedName;
  /// Domain verification token.
  final pulumi.Input<String?>? domainVerificationToken;
  /// Certificate expiration time.
  final pulumi.Input<String?>? expirationTime;
  /// Certificate thumbprint intermediate certificate.
  final pulumi.Input<String?>? intermediateThumbprint;
  /// Whether the private key is external or not.
  final pulumi.Input<bool?>? isPrivateKeyExternal;
  /// Certificate key size. Defaults to `2048`.
  final pulumi.Input<int?>? keySize;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. Currently the only valid value is `global`.
  final pulumi.Input<String?>? location;
  /// Specifies the name of the certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// Certificate product type, such as `Standard` or `WildCard`. Defaults to `Standard`.
  final pulumi.Input<String?>? productType;
  /// The name of the resource group in which to create the certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// Certificate thumbprint for root certificate.
  final pulumi.Input<String?>? rootThumbprint;
  /// Certificate thumbprint for signed certificate.
  final pulumi.Input<String?>? signedCertificateThumbprint;
  /// Current order status.
  final pulumi.Input<String?>? status;
  /// (Optional) A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Duration in years (must be between `1` and `3`). Defaults to `1`.
  final pulumi.Input<int?>? validityInYears;

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
  const CertificateOrderState({
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
      appServiceCertificateNotRenewableReasons: (() { final guardedValue = map['appServiceCertificateNotRenewableReasons']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      certificates: (() { final guardedValue = map['certificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CertificateOrderCertificate>(guardedValue, (value) => CertificateOrderCertificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      csr: (() { final guardedValue = map['csr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      distinguishedName: (() { final guardedValue = map['distinguishedName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainVerificationToken: (() { final guardedValue = map['domainVerificationToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expirationTime: (() { final guardedValue = map['expirationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      intermediateThumbprint: (() { final guardedValue = map['intermediateThumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isPrivateKeyExternal: (() { final guardedValue = map['isPrivateKeyExternal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keySize: (() { final guardedValue = map['keySize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productType: (() { final guardedValue = map['productType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootThumbprint: (() { final guardedValue = map['rootThumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signedCertificateThumbprint: (() { final guardedValue = map['signedCertificateThumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      validityInYears: (() { final guardedValue = map['validityInYears']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
