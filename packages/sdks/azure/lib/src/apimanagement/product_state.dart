// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Product resources.
class ProductState {
  /// The name of the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementName;
  /// Do subscribers need to be approved prior to being able to use the Product?
  ///
  /// > **Note:** `approval_required` can only be set when `subscription_required` is set to `true`.
  final pulumi.Input<bool>? approvalRequired;
  /// A description of this Product, which may include HTML formatting tags.
  final pulumi.Input<String>? description;
  /// The Display Name for this API Management Product.
  final pulumi.Input<String>? displayName;
  /// The Identifier for this Product, which must be unique within the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? productId;
  /// Is this Product Published?
  final pulumi.Input<bool>? published;
  /// The name of the Resource Group in which the API Management Service should be exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Is a Subscription required to access API's included in this Product? Defaults to `true`.
  final pulumi.Input<bool>? subscriptionRequired;
  /// The number of subscriptions a user can have to this Product at the same time.
  ///
  /// > **Note:** `subscriptions_limit` can only be set when `subscription_required` is set to `true`.
  final pulumi.Input<int>? subscriptionsLimit;
  /// The Terms and Conditions for this Product, which must be accepted by Developers before they can begin the Subscription process.
  final pulumi.Input<String>? terms;

  /// Creates a new [ProductState].
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
  ProductState({
    this.apiManagementName,
    this.approvalRequired,
    this.description,
    this.displayName,
    this.productId,
    this.published,
    this.resourceGroupName,
    this.subscriptionRequired,
    this.subscriptionsLimit,
    this.terms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': ?apiManagementName,
      'approvalRequired': ?approvalRequired,
      'description': ?description,
      'displayName': ?displayName,
      'productId': ?productId,
      'published': ?published,
      'resourceGroupName': ?resourceGroupName,
      'subscriptionRequired': ?subscriptionRequired,
      'subscriptionsLimit': ?subscriptionsLimit,
      'terms': ?terms,
    };
  }

  factory ProductState.fromMap(Map<String, dynamic> map) {
    return ProductState(
      apiManagementName: map['apiManagementName'] == null ? null : (map['apiManagementName']! as String).input(),
      approvalRequired: map['approvalRequired'] == null ? null : (map['approvalRequired']! as bool).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      productId: map['productId'] == null ? null : (map['productId']! as String).input(),
      published: map['published'] == null ? null : (map['published']! as bool).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      subscriptionRequired: map['subscriptionRequired'] == null ? null : (map['subscriptionRequired']! as bool).input(),
      subscriptionsLimit: map['subscriptionsLimit'] == null ? null : (map['subscriptionsLimit']! as int).input(),
      terms: map['terms'] == null ? null : (map['terms']! as String).input(),
    );
  }
}

