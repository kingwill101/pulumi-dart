// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_product_policy_product_policy_args_doc}
/// The set of arguments for ProductPolicy.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_product_policy_product_policy_args_doc}
class ProductPolicyArgs {
  /// The name of the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementName;
  /// The ID of the API Management Product within the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> productId;
  /// The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The XML Content for this Policy.
  final pulumi.Input<String>? xmlContent;
  /// A link to a Policy XML Document, which must be publicly available.
  final pulumi.Input<String>? xmlLink;

  /// Creates a new [ProductPolicyArgs].
  /// [apiManagementName] The name of the API Management Service. Changing this forces a new resource to be created.
  /// [productId] The ID of the API Management Product within the API Management Service. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  /// [xmlContent] The XML Content for this Policy.
  /// [xmlLink] A link to a Policy XML Document, which must be publicly available.
  ProductPolicyArgs({
    required this.apiManagementName,
    required this.productId,
    required this.resourceGroupName,
    this.xmlContent,
    this.xmlLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'productId': productId,
      'resourceGroupName': resourceGroupName,
      'xmlContent': ?xmlContent,
      'xmlLink': ?xmlLink,
    };
  }

  factory ProductPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ProductPolicyArgs(
      apiManagementName: (map['apiManagementName'] as String).input(),
      productId: (map['productId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      xmlContent: map['xmlContent'] == null ? null : (map['xmlContent']! as String).input(),
      xmlLink: map['xmlLink'] == null ? null : (map['xmlLink']! as String).input(),
    );
  }
}

