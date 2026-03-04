// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_order_certificate.dart';

/// Result data returned by getCertificateOrder.
class GetCertificateOrderResult {
  /// Reasons why App Service Certificate is not renewable at the current moment.
  final List<String> appServiceCertificateNotRenewableReasons;

  /// true if the certificate should be automatically renewed when it expires; otherwise, false.
  final bool autoRenew;

  /// State of the Key Vault secret. A `certificates` block as defined below.
  final List<GetCertificateOrderCertificate> certificates;

  /// Last CSR that was created for this order.
  final String csr;

  /// The Distinguished Name for the App Service Certificate Order.
  final String distinguishedName;

  /// Domain verification token.
  final String domainVerificationToken;

  /// Certificate expiration time.
  final String expirationTime;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Certificate thumbprint intermediate certificate.
  final String intermediateThumbprint;

  /// Whether the private key is external or not.
  final bool isPrivateKeyExternal;

  /// Certificate key size.
  final int keySize;

  /// The Azure location where the App Service exists.
  final String location;
  final String name;

  /// Certificate product type, such as `Standard` or `WildCard`.
  final String productType;
  final String resourceGroupName;

  /// Certificate thumbprint for root certificate.
  final String rootThumbprint;

  /// Certificate thumbprint for signed certificate.
  final String signedCertificateThumbprint;

  /// Current order status.
  final String status;

  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;

  /// Duration in years (must be between 1 and 3).
  final int validityInYears;

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
  /// [name] Required.
  /// [productType] Certificate product type, such as `Standard` or `WildCard`.
  /// [resourceGroupName] Required.
  /// [rootThumbprint] Certificate thumbprint for root certificate.
  /// [signedCertificateThumbprint] Certificate thumbprint for signed certificate.
  /// [status] Current order status.
  /// [tags] A mapping of tags to assign to the resource.
  /// [validityInYears] Duration in years (must be between 1 and 3).
  GetCertificateOrderResult({
    required this.appServiceCertificateNotRenewableReasons,
    required this.autoRenew,
    required this.certificates,
    required this.csr,
    required this.distinguishedName,
    required this.domainVerificationToken,
    required this.expirationTime,
    required this.id,
    required this.intermediateThumbprint,
    required this.isPrivateKeyExternal,
    required this.keySize,
    required this.location,
    required this.name,
    required this.productType,
    required this.resourceGroupName,
    required this.rootThumbprint,
    required this.signedCertificateThumbprint,
    required this.status,
    required this.tags,
    required this.validityInYears,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceCertificateNotRenewableReasons':
          appServiceCertificateNotRenewableReasons,
      'autoRenew': autoRenew,
      'certificates':
          pulumi.Input.encodeList<
            GetCertificateOrderCertificate,
            Map<String, dynamic>
          >(certificates, (value) => value.toMap()),
      'csr': csr,
      'distinguishedName': distinguishedName,
      'domainVerificationToken': domainVerificationToken,
      'expirationTime': expirationTime,
      'id': id,
      'intermediateThumbprint': intermediateThumbprint,
      'isPrivateKeyExternal': isPrivateKeyExternal,
      'keySize': keySize,
      'location': location,
      'name': name,
      'productType': productType,
      'resourceGroupName': resourceGroupName,
      'rootThumbprint': rootThumbprint,
      'signedCertificateThumbprint': signedCertificateThumbprint,
      'status': status,
      'tags': tags,
      'validityInYears': validityInYears,
    };
  }

  factory GetCertificateOrderResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateOrderResult(
      appServiceCertificateNotRenewableReasons:
          (map['appServiceCertificateNotRenewableReasons'] as List)
              .cast<String>(),
      autoRenew: map['autoRenew'] as bool,
      certificates: pulumi.Input.decodeList<GetCertificateOrderCertificate>(
        map['certificates']!,
        (value) => GetCertificateOrderCertificate.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      csr: map['csr'] as String,
      distinguishedName: map['distinguishedName'] as String,
      domainVerificationToken: map['domainVerificationToken'] as String,
      expirationTime: map['expirationTime'] as String,
      id: map['id'] as String,
      intermediateThumbprint: map['intermediateThumbprint'] as String,
      isPrivateKeyExternal: map['isPrivateKeyExternal'] as bool,
      keySize: map['keySize'] as int,
      location: map['location'] as String,
      name: map['name'] as String,
      productType: map['productType'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      rootThumbprint: map['rootThumbprint'] as String,
      signedCertificateThumbprint: map['signedCertificateThumbprint'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      validityInYears: map['validityInYears'] as int,
    );
  }
}
