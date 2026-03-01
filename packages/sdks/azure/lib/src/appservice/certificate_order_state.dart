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
    pulumi.Output<List<String>>? appServiceCertificateNotRenewableReasons,
    pulumi.Output<bool>? autoRenew,
    pulumi.Output<List<CertificateOrderCertificate>>? certificates,
    pulumi.Output<String>? csr,
    pulumi.Output<String>? distinguishedName,
    pulumi.Output<String>? domainVerificationToken,
    pulumi.Output<String>? expirationTime,
    pulumi.Output<String>? intermediateThumbprint,
    pulumi.Output<bool>? isPrivateKeyExternal,
    pulumi.Output<int>? keySize,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? productType,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? rootThumbprint,
    pulumi.Output<String>? signedCertificateThumbprint,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<int>? validityInYears,
  }) :
      appServiceCertificateNotRenewableReasons = pulumi.Input.asOptionalInput<List<String>>(appServiceCertificateNotRenewableReasons),
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      certificates = pulumi.Input.asOptionalInput<List<CertificateOrderCertificate>>(certificates),
      csr = pulumi.Input.asOptionalInput<String>(csr),
      distinguishedName = pulumi.Input.asOptionalInput<String>(distinguishedName),
      domainVerificationToken = pulumi.Input.asOptionalInput<String>(domainVerificationToken),
      expirationTime = pulumi.Input.asOptionalInput<String>(expirationTime),
      intermediateThumbprint = pulumi.Input.asOptionalInput<String>(intermediateThumbprint),
      isPrivateKeyExternal = pulumi.Input.asOptionalInput<bool>(isPrivateKeyExternal),
      keySize = pulumi.Input.asOptionalInput<int>(keySize),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      productType = pulumi.Input.asOptionalInput<String>(productType),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      rootThumbprint = pulumi.Input.asOptionalInput<String>(rootThumbprint),
      signedCertificateThumbprint = pulumi.Input.asOptionalInput<String>(signedCertificateThumbprint),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      validityInYears = pulumi.Input.asOptionalInput<int>(validityInYears);

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
      appServiceCertificateNotRenewableReasons: map['appServiceCertificateNotRenewableReasons'] == null ? null : pulumi.Output.create<List<String>>((map['appServiceCertificateNotRenewableReasons'] as List).cast<String>()),
      autoRenew: map['autoRenew'] == null ? null : pulumi.Output.create<bool>(map['autoRenew'] as bool),
      certificates: map['certificates'] == null ? null : pulumi.Output.create<List<CertificateOrderCertificate>>(pulumi.Input.decodeList<CertificateOrderCertificate>(map['certificates'], (value) => CertificateOrderCertificate.fromMap((value as Map).cast<String, dynamic>()))),
      csr: map['csr'] == null ? null : pulumi.Output.create<String>(map['csr'] as String),
      distinguishedName: map['distinguishedName'] == null ? null : pulumi.Output.create<String>(map['distinguishedName'] as String),
      domainVerificationToken: map['domainVerificationToken'] == null ? null : pulumi.Output.create<String>(map['domainVerificationToken'] as String),
      expirationTime: map['expirationTime'] == null ? null : pulumi.Output.create<String>(map['expirationTime'] as String),
      intermediateThumbprint: map['intermediateThumbprint'] == null ? null : pulumi.Output.create<String>(map['intermediateThumbprint'] as String),
      isPrivateKeyExternal: map['isPrivateKeyExternal'] == null ? null : pulumi.Output.create<bool>(map['isPrivateKeyExternal'] as bool),
      keySize: map['keySize'] == null ? null : pulumi.Output.create<int>(map['keySize'] as int),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      productType: map['productType'] == null ? null : pulumi.Output.create<String>(map['productType'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      rootThumbprint: map['rootThumbprint'] == null ? null : pulumi.Output.create<String>(map['rootThumbprint'] as String),
      signedCertificateThumbprint: map['signedCertificateThumbprint'] == null ? null : pulumi.Output.create<String>(map['signedCertificateThumbprint'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      validityInYears: map['validityInYears'] == null ? null : pulumi.Output.create<int>(map['validityInYears'] as int),
    );
  }
}

