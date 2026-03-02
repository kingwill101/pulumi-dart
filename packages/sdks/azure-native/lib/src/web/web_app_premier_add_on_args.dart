// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_web_app_premier_add_on_args_doc}
/// The set of arguments for WebAppPremierAddOn.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_premier_add_on_args_doc}
class WebAppPremierAddOnArgs {
  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  final pulumi.Input<String>? kind;
  /// Resource Location.
  final pulumi.Input<String>? location;
  /// Premier add on Marketplace offer.
  final pulumi.Input<String>? marketplaceOffer;
  /// Premier add on Marketplace publisher.
  final pulumi.Input<String>? marketplacePublisher;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Add-on name.
  final pulumi.Input<String>? premierAddOnName;
  /// Premier add on Product.
  final pulumi.Input<String>? product;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Premier add on SKU.
  final pulumi.Input<String>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Premier add on Vendor.
  final pulumi.Input<String>? vendor;

  /// Creates a new [WebAppPremierAddOnArgs].
  /// [kind] Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  /// [location] Resource Location.
  /// [marketplaceOffer] Premier add on Marketplace offer.
  /// [marketplacePublisher] Premier add on Marketplace publisher.
  /// [name] Name of the app.
  /// [premierAddOnName] Add-on name.
  /// [product] Premier add on Product.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [sku] Premier add on SKU.
  /// [tags] Resource tags.
  /// [vendor] Premier add on Vendor.
  WebAppPremierAddOnArgs({
    this.kind,
    this.location,
    this.marketplaceOffer,
    this.marketplacePublisher,
    required this.name,
    this.premierAddOnName,
    this.product,
    required this.resourceGroupName,
    this.sku,
    this.tags,
    this.vendor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'location': ?location,
      'marketplaceOffer': ?marketplaceOffer,
      'marketplacePublisher': ?marketplacePublisher,
      'name': name,
      'premierAddOnName': ?premierAddOnName,
      'product': ?product,
      'resourceGroupName': resourceGroupName,
      'sku': ?sku,
      'tags': ?tags,
      'vendor': ?vendor,
    };
  }

  factory WebAppPremierAddOnArgs.fromMap(Map<String, dynamic> map) {
    return WebAppPremierAddOnArgs(
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      marketplaceOffer: map['marketplaceOffer'] == null ? null : (map['marketplaceOffer']! as String).input(),
      marketplacePublisher: map['marketplacePublisher'] == null ? null : (map['marketplacePublisher']! as String).input(),
      name: (map['name'] as String).input(),
      premierAddOnName: map['premierAddOnName'] == null ? null : (map['premierAddOnName']! as String).input(),
      product: map['product'] == null ? null : (map['product']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: map['sku'] == null ? null : (map['sku']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      vendor: map['vendor'] == null ? null : (map['vendor']! as String).input(),
    );
  }
}

