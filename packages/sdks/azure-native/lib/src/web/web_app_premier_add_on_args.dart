// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_web_app_premier_add_on_args_doc}
/// The set of arguments for WebAppPremierAddOn.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_premier_add_on_args_doc}
class WebAppPremierAddOnArgs {
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// The geo-location where the resource lives
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
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Premier add on SKU.
  final pulumi.Input<String>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Premier add on Vendor.
  final pulumi.Input<String>? vendor;

  /// Creates a new [WebAppPremierAddOnArgs].
  /// [kind] Kind of resource.
  /// [location] The geo-location where the resource lives
  /// [marketplaceOffer] Premier add on Marketplace offer.
  /// [marketplacePublisher] Premier add on Marketplace publisher.
  /// [name] Name of the app.
  /// [premierAddOnName] Add-on name.
  /// [product] Premier add on Product.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] Premier add on SKU.
  /// [tags] Resource tags.
  /// [vendor] Premier add on Vendor.
  const WebAppPremierAddOnArgs({
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
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      marketplaceOffer: (() { final guardedValue = map['marketplaceOffer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      marketplacePublisher: (() { final guardedValue = map['marketplacePublisher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      premierAddOnName: (() { final guardedValue = map['premierAddOnName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      product: (() { final guardedValue = map['product']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vendor: (() { final guardedValue = map['vendor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
