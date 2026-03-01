// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWebAppPremierAddOn.
class GetWebAppPremierAddOnResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource Id.
  final String id;
  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  final String? kind;
  /// Resource Location.
  final String location;
  /// Premier add on Marketplace offer.
  final String? marketplaceOffer;
  /// Premier add on Marketplace publisher.
  final String? marketplacePublisher;
  /// Resource Name.
  final String name;
  /// Premier add on Product.
  final String? product;
  /// Premier add on SKU.
  final String? sku;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;
  /// Premier add on Vendor.
  final String? vendor;

  /// Creates a new [GetWebAppPremierAddOnResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id.
  /// [kind] Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  /// [location] Resource Location.
  /// [marketplaceOffer] Premier add on Marketplace offer.
  /// [marketplacePublisher] Premier add on Marketplace publisher.
  /// [name] Resource Name.
  /// [product] Premier add on Product.
  /// [sku] Premier add on SKU.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [vendor] Premier add on Vendor.
  GetWebAppPremierAddOnResult({
    required this.azureApiVersion,
    required this.id,
    this.kind,
    required this.location,
    this.marketplaceOffer,
    this.marketplacePublisher,
    required this.name,
    this.product,
    this.sku,
    this.tags,
    required this.type,
    this.vendor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'kind': ?kind,
      'location': location,
      'marketplaceOffer': ?marketplaceOffer,
      'marketplacePublisher': ?marketplacePublisher,
      'name': name,
      'product': ?product,
      'sku': ?sku,
      'tags': ?tags,
      'type': type,
      'vendor': ?vendor,
    };
  }

  factory GetWebAppPremierAddOnResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppPremierAddOnResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      location: map['location'] as String,
      marketplaceOffer: map['marketplaceOffer'] == null ? null : map['marketplaceOffer'] as String,
      marketplacePublisher: map['marketplacePublisher'] == null ? null : map['marketplacePublisher'] as String,
      name: map['name'] as String,
      product: map['product'] == null ? null : map['product'] as String,
      sku: map['sku'] == null ? null : map['sku'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      vendor: map['vendor'] == null ? null : map['vendor'] as String,
    );
  }
}

