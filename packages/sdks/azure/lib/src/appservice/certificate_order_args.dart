// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appservice_certificate_order_certificate_order_args_doc}
/// The set of arguments for CertificateOrder.
/// {@endtemplate}
/// {@macro pulumi_appservice_certificate_order_certificate_order_args_doc}
class CertificateOrderArgs {
  /// true if the certificate should be automatically renewed when it expires; otherwise, false. Defaults to `true`.
  final pulumi.Input<bool>? autoRenew;
  /// Last CSR that was created for this order.
  final pulumi.Input<String>? csr;
  /// The Distinguished Name for the App Service Certificate Order.
  ///
  /// &gt; **Note:** Either `csr` or `distinguished_name` must be set - but not both.
  final pulumi.Input<String>? distinguishedName;
  /// Certificate key size. Defaults to `2048`.
  final pulumi.Input<int>? keySize;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. Currently the only valid value is `global`.
  final pulumi.Input<String>? location;
  /// Specifies the name of the certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Certificate product type, such as `Standard` or `WildCard`. Defaults to `Standard`.
  final pulumi.Input<String>? productType;
  /// The name of the resource group in which to create the certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// (Optional) A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Duration in years (must be between `1` and `3`). Defaults to `1`.
  final pulumi.Input<int>? validityInYears;

  /// Creates a new [CertificateOrderArgs].
  /// [autoRenew] true if the certificate should be automatically renewed when it expires; otherwise, false. Defaults to `true`.
  /// [csr] Last CSR that was created for this order.
  /// [distinguishedName] The Distinguished Name for the App Service Certificate Order.
  /// [keySize] Certificate key size. Defaults to `2048`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. Currently the only valid value is `global`.
  /// [name] Specifies the name of the certificate. Changing this forces a new resource to be created.
  /// [productType] Certificate product type, such as `Standard` or `WildCard`. Defaults to `Standard`.
  /// [resourceGroupName] The name of the resource group in which to create the certificate. Changing this forces a new resource to be created.
  /// [tags] (Optional) A mapping of tags to assign to the resource.
  /// [validityInYears] Duration in years (must be between `1` and `3`). Defaults to `1`.
  CertificateOrderArgs({
    this.autoRenew,
    this.csr,
    this.distinguishedName,
    this.keySize,
    this.location,
    this.name,
    this.productType,
    required this.resourceGroupName,
    this.tags,
    this.validityInYears,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'csr': ?csr,
      'distinguishedName': ?distinguishedName,
      'keySize': ?keySize,
      'location': ?location,
      'name': ?name,
      'productType': ?productType,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'validityInYears': ?validityInYears,
    };
  }

  factory CertificateOrderArgs.fromMap(Map<String, dynamic> map) {
    return CertificateOrderArgs(
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      csr: (() { final guardedValue = map['csr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      distinguishedName: (() { final guardedValue = map['distinguishedName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keySize: (() { final guardedValue = map['keySize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productType: (() { final guardedValue = map['productType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      validityInYears: (() { final guardedValue = map['validityInYears']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

