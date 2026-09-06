// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getWebAppPremierAddOn.
class GetWebAppPremierAddOnResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Kind of resource.
  final String? kind;
  /// The geo-location where the resource lives
  final String? location;
  /// Premier add on Marketplace offer.
  final String? marketplaceOffer;
  /// Premier add on Marketplace publisher.
  final String? marketplacePublisher;
  /// The name of the resource
  final String? name;
  /// Premier add on Product.
  final String? product;
  /// Premier add on SKU.
  final String? sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Premier add on Vendor.
  final String? vendor;

  /// Creates a new [GetWebAppPremierAddOnResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] Kind of resource.
  /// [location] The geo-location where the resource lives
  /// [marketplaceOffer] Premier add on Marketplace offer.
  /// [marketplacePublisher] Premier add on Marketplace publisher.
  /// [name] The name of the resource
  /// [product] Premier add on Product.
  /// [sku] Premier add on SKU.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [vendor] Premier add on Vendor.
  const GetWebAppPremierAddOnResult({
    this.azureApiVersion,
    this.id,
    this.kind,
    this.location,
    this.marketplaceOffer,
    this.marketplacePublisher,
    this.name,
    this.product,
    this.sku,
    this.systemData,
    this.tags,
    this.type,
    this.vendor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'kind': ?kind,
      'location': ?location,
      'marketplaceOffer': ?marketplaceOffer,
      'marketplacePublisher': ?marketplacePublisher,
      'name': ?name,
      'product': ?product,
      'sku': ?sku,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'vendor': ?vendor,
    };
  }

  factory GetWebAppPremierAddOnResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppPremierAddOnResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      marketplaceOffer: (() { final guardedValue = map['marketplaceOffer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      marketplacePublisher: (() { final guardedValue = map['marketplacePublisher']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      product: (() { final guardedValue = map['product']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vendor: (() { final guardedValue = map['vendor']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
