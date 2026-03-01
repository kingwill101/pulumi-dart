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
    pulumi.Output<String>? apiManagementName,
    pulumi.Output<bool>? approvalRequired,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? productId,
    pulumi.Output<bool>? published,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<bool>? subscriptionRequired,
    pulumi.Output<int>? subscriptionsLimit,
    pulumi.Output<String>? terms,
  }) :
      apiManagementName = pulumi.Input.asOptionalInput<String>(apiManagementName),
      approvalRequired = pulumi.Input.asOptionalInput<bool>(approvalRequired),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      productId = pulumi.Input.asOptionalInput<String>(productId),
      published = pulumi.Input.asOptionalInput<bool>(published),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      subscriptionRequired = pulumi.Input.asOptionalInput<bool>(subscriptionRequired),
      subscriptionsLimit = pulumi.Input.asOptionalInput<int>(subscriptionsLimit),
      terms = pulumi.Input.asOptionalInput<String>(terms);

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
      apiManagementName: map['apiManagementName'] == null ? null : pulumi.Output.create<String>(map['apiManagementName'] as String),
      approvalRequired: map['approvalRequired'] == null ? null : pulumi.Output.create<bool>(map['approvalRequired'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      productId: map['productId'] == null ? null : pulumi.Output.create<String>(map['productId'] as String),
      published: map['published'] == null ? null : pulumi.Output.create<bool>(map['published'] as bool),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subscriptionRequired: map['subscriptionRequired'] == null ? null : pulumi.Output.create<bool>(map['subscriptionRequired'] as bool),
      subscriptionsLimit: map['subscriptionsLimit'] == null ? null : pulumi.Output.create<int>(map['subscriptionsLimit'] as int),
      terms: map['terms'] == null ? null : pulumi.Output.create<String>(map['terms'] as String),
    );
  }
}

