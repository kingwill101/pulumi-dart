// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProductPolicy resources.
class ProductPolicyState {
  /// The name of the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementName;
  /// The ID of the API Management Product within the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? productId;
  /// The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The XML Content for this Policy.
  final pulumi.Input<String>? xmlContent;
  /// A link to a Policy XML Document, which must be publicly available.
  final pulumi.Input<String>? xmlLink;

  /// Creates a new [ProductPolicyState].
  /// [apiManagementName] The name of the API Management Service. Changing this forces a new resource to be created.
  /// [productId] The ID of the API Management Product within the API Management Service. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  /// [xmlContent] The XML Content for this Policy.
  /// [xmlLink] A link to a Policy XML Document, which must be publicly available.
  ProductPolicyState({
    pulumi.Output<String>? apiManagementName,
    pulumi.Output<String>? productId,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? xmlContent,
    pulumi.Output<String>? xmlLink,
  }) :
      apiManagementName = pulumi.Input.asOptionalInput<String>(apiManagementName),
      productId = pulumi.Input.asOptionalInput<String>(productId),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      xmlContent = pulumi.Input.asOptionalInput<String>(xmlContent),
      xmlLink = pulumi.Input.asOptionalInput<String>(xmlLink);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': ?apiManagementName,
      'productId': ?productId,
      'resourceGroupName': ?resourceGroupName,
      'xmlContent': ?xmlContent,
      'xmlLink': ?xmlLink,
    };
  }

  factory ProductPolicyState.fromMap(Map<String, dynamic> map) {
    return ProductPolicyState(
      apiManagementName: map['apiManagementName'] == null ? null : pulumi.Output.create<String>(map['apiManagementName'] as String),
      productId: map['productId'] == null ? null : pulumi.Output.create<String>(map['productId'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      xmlContent: map['xmlContent'] == null ? null : pulumi.Output.create<String>(map['xmlContent'] as String),
      xmlLink: map['xmlLink'] == null ? null : pulumi.Output.create<String>(map['xmlLink'] as String),
    );
  }
}

