// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZonesResultPlan {
  /// States if the subscription can be activated.
  final pulumi.Input<bool> canSubscribe;
  /// The denomination of the customer.
  final pulumi.Input<String> currency;
  /// If this Zone is managed by another company.
  final pulumi.Input<bool> externallyManaged;
  /// How often the customer is billed.
  final pulumi.Input<String> frequency;
  /// Identifier
  final pulumi.Input<String> id;
  /// States if the subscription active.
  final pulumi.Input<bool> isSubscribed;
  /// If the legacy discount applies to this Zone.
  final pulumi.Input<bool> legacyDiscount;
  /// The legacy name of the plan.
  final pulumi.Input<String> legacyId;
  /// Name of the owner.
  final pulumi.Input<String> name;
  /// How much the customer is paying.
  final pulumi.Input<double> price;

  /// Creates a new [GetZonesResultPlan].
  /// [canSubscribe] States if the subscription can be activated.
  /// [currency] The denomination of the customer.
  /// [externallyManaged] If this Zone is managed by another company.
  /// [frequency] How often the customer is billed.
  /// [id] Identifier
  /// [isSubscribed] States if the subscription active.
  /// [legacyDiscount] If the legacy discount applies to this Zone.
  /// [legacyId] The legacy name of the plan.
  /// [name] Name of the owner.
  /// [price] How much the customer is paying.
  const GetZonesResultPlan({
    required this.canSubscribe,
    required this.currency,
    required this.externallyManaged,
    required this.frequency,
    required this.id,
    required this.isSubscribed,
    required this.legacyDiscount,
    required this.legacyId,
    required this.name,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canSubscribe': canSubscribe,
      'currency': currency,
      'externallyManaged': externallyManaged,
      'frequency': frequency,
      'id': id,
      'isSubscribed': isSubscribed,
      'legacyDiscount': legacyDiscount,
      'legacyId': legacyId,
      'name': name,
      'price': price,
    };
  }

  factory GetZonesResultPlan.fromMap(Map<String, dynamic> map) {
    return GetZonesResultPlan(
      canSubscribe: pulumi.Input.fromValue(map['canSubscribe'] as bool),
      currency: pulumi.Input.fromValue(map['currency'] as String),
      externallyManaged: pulumi.Input.fromValue(map['externallyManaged'] as bool),
      frequency: pulumi.Input.fromValue(map['frequency'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      isSubscribed: pulumi.Input.fromValue(map['isSubscribed'] as bool),
      legacyDiscount: pulumi.Input.fromValue(map['legacyDiscount'] as bool),
      legacyId: pulumi.Input.fromValue(map['legacyId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      price: pulumi.Input.fromValue((map['price'] as num).toDouble()),
    );
  }
}
