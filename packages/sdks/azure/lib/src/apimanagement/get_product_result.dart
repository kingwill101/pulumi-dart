// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getProduct.
class GetProductResult {
  final String apiManagementName;
  /// Do subscribers need to be approved prior to being able to use the Product?
  final bool approvalRequired;
  /// The description of this Product, which may include HTML formatting tags.
  final String description;
  /// The Display Name for this API Management Product.
  final String displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String productId;
  /// Is this Product Published?
  final bool published;
  final String resourceGroupName;
  /// Is a Subscription required to access API's included in this Product?
  final bool subscriptionRequired;
  /// The number of subscriptions a user can have to this Product at the same time.
  final int subscriptionsLimit;
  /// Any Terms and Conditions for this Product, which must be accepted by Developers before they can begin the Subscription process.
  final String terms;

  /// Creates a new [GetProductResult].
  /// [apiManagementName] Required.
  /// [approvalRequired] Do subscribers need to be approved prior to being able to use the Product?
  /// [description] The description of this Product, which may include HTML formatting tags.
  /// [displayName] The Display Name for this API Management Product.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [productId] Required.
  /// [published] Is this Product Published?
  /// [resourceGroupName] Required.
  /// [subscriptionRequired] Is a Subscription required to access API's included in this Product?
  /// [subscriptionsLimit] The number of subscriptions a user can have to this Product at the same time.
  /// [terms] Any Terms and Conditions for this Product, which must be accepted by Developers before they can begin the Subscription process.
  const GetProductResult({
    required this.apiManagementName,
    required this.approvalRequired,
    required this.description,
    required this.displayName,
    required this.id,
    required this.productId,
    required this.published,
    required this.resourceGroupName,
    required this.subscriptionRequired,
    required this.subscriptionsLimit,
    required this.terms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'approvalRequired': approvalRequired,
      'description': description,
      'displayName': displayName,
      'id': id,
      'productId': productId,
      'published': published,
      'resourceGroupName': resourceGroupName,
      'subscriptionRequired': subscriptionRequired,
      'subscriptionsLimit': subscriptionsLimit,
      'terms': terms,
    };
  }

  factory GetProductResult.fromMap(Map<String, dynamic> map) {
    return GetProductResult(
      apiManagementName: map['apiManagementName'] as String,
      approvalRequired: map['approvalRequired'] as bool,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      productId: map['productId'] as String,
      published: map['published'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      subscriptionRequired: map['subscriptionRequired'] as bool,
      subscriptionsLimit: map['subscriptionsLimit'] as int,
      terms: map['terms'] as String,
    );
  }
}

