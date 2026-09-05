// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getProduct.
class GetProductResult {
  final String? apiManagementName;
  /// Do subscribers need to be approved prior to being able to use the Product?
  final bool? approvalRequired;
  /// The description of this Product, which may include HTML formatting tags.
  final String? description;
  /// The Display Name for this API Management Product.
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? productId;
  /// Is this Product Published?
  final bool? published;
  final String? resourceGroupName;
  /// Is a Subscription required to access API's included in this Product?
  final bool? subscriptionRequired;
  /// The number of subscriptions a user can have to this Product at the same time.
  final int? subscriptionsLimit;
  /// Any Terms and Conditions for this Product, which must be accepted by Developers before they can begin the Subscription process.
  final String? terms;

  /// Creates a new [GetProductResult].
  /// [apiManagementName] Optional.
  /// [approvalRequired] Do subscribers need to be approved prior to being able to use the Product?
  /// [description] The description of this Product, which may include HTML formatting tags.
  /// [displayName] The Display Name for this API Management Product.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [productId] Optional.
  /// [published] Is this Product Published?
  /// [resourceGroupName] Optional.
  /// [subscriptionRequired] Is a Subscription required to access API's included in this Product?
  /// [subscriptionsLimit] The number of subscriptions a user can have to this Product at the same time.
  /// [terms] Any Terms and Conditions for this Product, which must be accepted by Developers before they can begin the Subscription process.
  const GetProductResult({
    this.apiManagementName,
    this.approvalRequired,
    this.description,
    this.displayName,
    this.id,
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
      'id': ?id,
      'productId': ?productId,
      'published': ?published,
      'resourceGroupName': ?resourceGroupName,
      'subscriptionRequired': ?subscriptionRequired,
      'subscriptionsLimit': ?subscriptionsLimit,
      'terms': ?terms,
    };
  }

  factory GetProductResult.fromMap(Map<String, dynamic> map) {
    return GetProductResult(
      apiManagementName: (() { final guardedValue = map['apiManagementName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      approvalRequired: (() { final guardedValue = map['approvalRequired']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      productId: (() { final guardedValue = map['productId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      published: (() { final guardedValue = map['published']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subscriptionRequired: (() { final guardedValue = map['subscriptionRequired']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      subscriptionsLimit: (() { final guardedValue = map['subscriptionsLimit']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      terms: (() { final guardedValue = map['terms']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
