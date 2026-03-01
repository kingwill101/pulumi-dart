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
  /// > **Note:** Either `csr` or `distinguished_name` must be set - but not both.
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
    pulumi.Output<bool>? autoRenew,
    pulumi.Output<String>? csr,
    pulumi.Output<String>? distinguishedName,
    pulumi.Output<int>? keySize,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? productType,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<int>? validityInYears,
  }) :
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      csr = pulumi.Input.asOptionalInput<String>(csr),
      distinguishedName = pulumi.Input.asOptionalInput<String>(distinguishedName),
      keySize = pulumi.Input.asOptionalInput<int>(keySize),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      productType = pulumi.Input.asOptionalInput<String>(productType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      validityInYears = pulumi.Input.asOptionalInput<int>(validityInYears);

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
      autoRenew: map['autoRenew'] == null ? null : pulumi.Output.create<bool>(map['autoRenew'] as bool),
      csr: map['csr'] == null ? null : pulumi.Output.create<String>(map['csr'] as String),
      distinguishedName: map['distinguishedName'] == null ? null : pulumi.Output.create<String>(map['distinguishedName'] as String),
      keySize: map['keySize'] == null ? null : pulumi.Output.create<int>(map['keySize'] as int),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      productType: map['productType'] == null ? null : pulumi.Output.create<String>(map['productType'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      validityInYears: map['validityInYears'] == null ? null : pulumi.Output.create<int>(map['validityInYears'] as int),
    );
  }
}

