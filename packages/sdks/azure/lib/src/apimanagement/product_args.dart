// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_product_product_args_doc}
/// The set of arguments for Product.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_product_product_args_doc}
class ProductArgs {
  /// The name of the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementName;
  /// Do subscribers need to be approved prior to being able to use the Product?
  ///
  /// &gt; **Note:** `approvalRequired` can only be set when `subscriptionRequired` is set to `true`.
  final pulumi.Input<bool>? approvalRequired;
  /// A description of this Product, which may include HTML formatting tags.
  final pulumi.Input<String>? description;
  /// The Display Name for this API Management Product.
  final pulumi.Input<String> displayName;
  /// The Identifier for this Product, which must be unique within the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> productId;
  /// Is this Product Published?
  final pulumi.Input<bool> published;
  /// The name of the Resource Group in which the API Management Service should be exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Is a Subscription required to access API's included in this Product? Defaults to `true`.
  final pulumi.Input<bool>? subscriptionRequired;
  /// The number of subscriptions a user can have to this Product at the same time.
  ///
  /// &gt; **Note:** `subscriptionsLimit` can only be set when `subscriptionRequired` is set to `true`.
  final pulumi.Input<int>? subscriptionsLimit;
  /// The Terms and Conditions for this Product, which must be accepted by Developers before they can begin the Subscription process.
  final pulumi.Input<String>? terms;

  /// Creates a new [ProductArgs].
  /// [apiManagementName] The name of the API Management Service. Changing this forces a new resource to be created.
  /// [approvalRequired] Do subscribers need to be approved prior to being able to use the Product?
  /// [description] A description of this Product, which may include HTML formatting tags.
  /// [displayName] The Display Name for this API Management Product.
  /// [productId] The Identifier for this Product, which must be unique within the API Management Service. Changing this forces a new resource to be created.
  /// [published] Is this Product Published?
  /// [resourceGroupName] The name of the Resource Group in which the API Management Service should be exist. Changing this forces a new resource to be created.
  /// [subscriptionRequired] Is a Subscription required to access API's included in this Product? Defaults to `true`.
  /// [subscriptionsLimit] The number of subscriptions a user can have to this Product at the same time.
  /// [terms] The Terms and Conditions for this Product, which must be accepted by Developers before they can begin the Subscription process.
  const ProductArgs({
    required this.apiManagementName,
    this.approvalRequired,
    this.description,
    required this.displayName,
    required this.productId,
    required this.published,
    required this.resourceGroupName,
    this.subscriptionRequired,
    this.subscriptionsLimit,
    this.terms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'approvalRequired': ?approvalRequired,
      'description': ?description,
      'displayName': displayName,
      'productId': productId,
      'published': published,
      'resourceGroupName': resourceGroupName,
      'subscriptionRequired': ?subscriptionRequired,
      'subscriptionsLimit': ?subscriptionsLimit,
      'terms': ?terms,
    };
  }

  factory ProductArgs.fromMap(Map<String, dynamic> map) {
    return ProductArgs(
      apiManagementName: pulumi.Input.fromValue(map['apiManagementName'] as String),
      approvalRequired: (() { final guardedValue = map['approvalRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      productId: pulumi.Input.fromValue(map['productId'] as String),
      published: pulumi.Input.fromValue(map['published'] as bool),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      subscriptionRequired: (() { final guardedValue = map['subscriptionRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      subscriptionsLimit: (() { final guardedValue = map['subscriptionsLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      terms: (() { final guardedValue = map['terms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
