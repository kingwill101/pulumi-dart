// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_web_app_premier_add_on_slot_args_doc}
/// The set of arguments for WebAppPremierAddOnSlot.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_premier_add_on_slot_args_doc}
class WebAppPremierAddOnSlotArgs {
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
  /// Name of the deployment slot. If a slot is not specified, the API will update the named add-on for the production slot.
  final pulumi.Input<String> slot;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Premier add on Vendor.
  final pulumi.Input<String>? vendor;

  /// Creates a new [WebAppPremierAddOnSlotArgs].
  /// [kind] Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  /// [location] Resource Location.
  /// [marketplaceOffer] Premier add on Marketplace offer.
  /// [marketplacePublisher] Premier add on Marketplace publisher.
  /// [name] Name of the app.
  /// [premierAddOnName] Add-on name.
  /// [product] Premier add on Product.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [sku] Premier add on SKU.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API will update the named add-on for the production slot.
  /// [tags] Resource tags.
  /// [vendor] Premier add on Vendor.
  WebAppPremierAddOnSlotArgs({
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<String>? marketplaceOffer,
    pulumi.Output<String>? marketplacePublisher,
    required pulumi.Output<String> name,
    pulumi.Output<String>? premierAddOnName,
    pulumi.Output<String>? product,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? sku,
    required pulumi.Output<String> slot,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vendor,
  }) :
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      marketplaceOffer = pulumi.Input.asOptionalInput<String>(marketplaceOffer),
      marketplacePublisher = pulumi.Input.asOptionalInput<String>(marketplacePublisher),
      name = pulumi.Input.asInput<String>(name),
      premierAddOnName = pulumi.Input.asOptionalInput<String>(premierAddOnName),
      product = pulumi.Input.asOptionalInput<String>(product),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<String>(sku),
      slot = pulumi.Input.asInput<String>(slot),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vendor = pulumi.Input.asOptionalInput<String>(vendor);

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
      'slot': slot,
      'tags': ?tags,
      'vendor': ?vendor,
    };
  }

  factory WebAppPremierAddOnSlotArgs.fromMap(Map<String, dynamic> map) {
    return WebAppPremierAddOnSlotArgs(
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      marketplaceOffer: map['marketplaceOffer'] == null ? null : pulumi.Output.create<String>(map['marketplaceOffer'] as String),
      marketplacePublisher: map['marketplacePublisher'] == null ? null : pulumi.Output.create<String>(map['marketplacePublisher'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      premierAddOnName: map['premierAddOnName'] == null ? null : pulumi.Output.create<String>(map['premierAddOnName'] as String),
      product: map['product'] == null ? null : pulumi.Output.create<String>(map['product'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<String>(map['sku'] as String),
      slot: pulumi.Output.create<String>(map['slot'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vendor: map['vendor'] == null ? null : pulumi.Output.create<String>(map['vendor'] as String),
    );
  }
}

