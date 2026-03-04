// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Service provisioned for an entitlement.
class GoogleCloudChannelV1ProvisionedServiceResponse {
  /// The product pertaining to the provisioning resource as specified in the Offer.
  final pulumi.Input<String> productId;

  /// Provisioning ID of the entitlement. For Google Workspace, this is the underlying Subscription ID. For Google Cloud, this is the Billing Account ID of the billing subaccount.
  final pulumi.Input<String> provisioningId;

  /// The SKU pertaining to the provisioning resource as specified in the Offer.
  final pulumi.Input<String> skuId;

  /// Creates a new [GoogleCloudChannelV1ProvisionedServiceResponse].
  /// [productId] The product pertaining to the provisioning resource as specified in the Offer.
  /// [provisioningId] Provisioning ID of the entitlement. For Google Workspace, this is the underlying Subscription ID. For Google Cloud, this is the Billing Account ID of the billing subaccount.
  /// [skuId] The SKU pertaining to the provisioning resource as specified in the Offer.
  GoogleCloudChannelV1ProvisionedServiceResponse({
    required this.productId,
    required this.provisioningId,
    required this.skuId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productId': productId,
      'provisioningId': provisioningId,
      'skuId': skuId,
    };
  }

  factory GoogleCloudChannelV1ProvisionedServiceResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudChannelV1ProvisionedServiceResponse(
      productId: pulumi.Input.fromValue(map['productId'] as String),
      provisioningId: pulumi.Input.fromValue(map['provisioningId'] as String),
      skuId: pulumi.Input.fromValue(map['skuId'] as String),
    );
  }
}
