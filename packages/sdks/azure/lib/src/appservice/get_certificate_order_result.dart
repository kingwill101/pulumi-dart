// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_order_certificate.dart';

/// Result data returned by getCertificateOrder.
class GetCertificateOrderResult {
  /// Reasons why App Service Certificate is not renewable at the current moment.
  final List<String>? appServiceCertificateNotRenewableReasons;
  /// true if the certificate should be automatically renewed when it expires; otherwise, false.
  final bool? autoRenew;
  /// State of the Key Vault secret. A `certificates` block as defined below.
  final List<GetCertificateOrderCertificate>? certificates;
  /// Last CSR that was created for this order.
  final String? csr;
  /// The Distinguished Name for the App Service Certificate Order.
  final String? distinguishedName;
  /// Domain verification token.
  final String? domainVerificationToken;
  /// Certificate expiration time.
  final String? expirationTime;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Certificate thumbprint intermediate certificate.
  final String? intermediateThumbprint;
  /// Whether the private key is external or not.
  final bool? isPrivateKeyExternal;
  /// Certificate key size.
  final int? keySize;
  /// The Azure location where the App Service exists.
  final String? location;
  final String? name;
  /// Certificate product type, such as `Standard` or `WildCard`.
  final String? productType;
  final String? resourceGroupName;
  /// Certificate thumbprint for root certificate.
  final String? rootThumbprint;
  /// Certificate thumbprint for signed certificate.
  final String? signedCertificateThumbprint;
  /// Current order status.
  final String? status;
  /// A mapping of tags to assign to the resource.
  final Map<String, String>? tags;
  /// Duration in years (must be between 1 and 3).
  final int? validityInYears;

  /// Creates a new [GetCertificateOrderResult].
  /// [appServiceCertificateNotRenewableReasons] Reasons why App Service Certificate is not renewable at the current moment.
  /// [autoRenew] true if the certificate should be automatically renewed when it expires; otherwise, false.
  /// [certificates] State of the Key Vault secret. A `certificates` block as defined below.
  /// [csr] Last CSR that was created for this order.
  /// [distinguishedName] The Distinguished Name for the App Service Certificate Order.
  /// [domainVerificationToken] Domain verification token.
  /// [expirationTime] Certificate expiration time.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [intermediateThumbprint] Certificate thumbprint intermediate certificate.
  /// [isPrivateKeyExternal] Whether the private key is external or not.
  /// [keySize] Certificate key size.
  /// [location] The Azure location where the App Service exists.
  /// [name] Optional.
  /// [productType] Certificate product type, such as `Standard` or `WildCard`.
  /// [resourceGroupName] Optional.
  /// [rootThumbprint] Certificate thumbprint for root certificate.
  /// [signedCertificateThumbprint] Certificate thumbprint for signed certificate.
  /// [status] Current order status.
  /// [tags] A mapping of tags to assign to the resource.
  /// [validityInYears] Duration in years (must be between 1 and 3).
  const GetCertificateOrderResult({
    this.appServiceCertificateNotRenewableReasons,
    this.autoRenew,
    this.certificates,
    this.csr,
    this.distinguishedName,
    this.domainVerificationToken,
    this.expirationTime,
    this.id,
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
      'certificates': ?(() { final guardedValue = certificates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCertificateOrderCertificate, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'csr': ?csr,
      'distinguishedName': ?distinguishedName,
      'domainVerificationToken': ?domainVerificationToken,
      'expirationTime': ?expirationTime,
      'id': ?id,
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

  factory GetCertificateOrderResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateOrderResult(
      appServiceCertificateNotRenewableReasons: (() { final guardedValue = map['appServiceCertificateNotRenewableReasons']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      certificates: (() { final guardedValue = map['certificates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCertificateOrderCertificate>(guardedValue, (value) => GetCertificateOrderCertificate.fromMap((value as Map).cast<String, dynamic>())); })(),
      csr: (() { final guardedValue = map['csr']; if (guardedValue == null) return null; return guardedValue as String; })(),
      distinguishedName: (() { final guardedValue = map['distinguishedName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainVerificationToken: (() { final guardedValue = map['domainVerificationToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expirationTime: (() { final guardedValue = map['expirationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      intermediateThumbprint: (() { final guardedValue = map['intermediateThumbprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isPrivateKeyExternal: (() { final guardedValue = map['isPrivateKeyExternal']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      keySize: (() { final guardedValue = map['keySize']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      productType: (() { final guardedValue = map['productType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rootThumbprint: (() { final guardedValue = map['rootThumbprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      signedCertificateThumbprint: (() { final guardedValue = map['signedCertificateThumbprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      validityInYears: (() { final guardedValue = map['validityInYears']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
