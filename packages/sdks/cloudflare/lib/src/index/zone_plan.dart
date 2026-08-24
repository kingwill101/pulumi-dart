// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZonePlan {
  /// States if the subscription can be activated.
  final pulumi.Input<bool?>? canSubscribe;
  /// The denomination of the customer.
  final pulumi.Input<String?>? currency;
  /// If this Zone is managed by another company.
  final pulumi.Input<bool?>? externallyManaged;
  /// How often the customer is billed.
  final pulumi.Input<String?>? frequency;
  /// Identifier
  final pulumi.Input<String?>? id;
  /// States if the subscription active.
  final pulumi.Input<bool?>? isSubscribed;
  /// If the legacy discount applies to this Zone.
  final pulumi.Input<bool?>? legacyDiscount;
  /// The legacy name of the plan.
  final pulumi.Input<String?>? legacyId;
  /// Name of the owner.
  final pulumi.Input<String?>? name;
  /// How much the customer is paying.
  final pulumi.Input<double?>? price;

  /// Creates a new [ZonePlan].
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
  const ZonePlan({
    this.canSubscribe,
    this.currency,
    this.externallyManaged,
    this.frequency,
    this.id,
    this.isSubscribed,
    this.legacyDiscount,
    this.legacyId,
    this.name,
    this.price,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canSubscribe': ?canSubscribe,
      'currency': ?currency,
      'externallyManaged': ?externallyManaged,
      'frequency': ?frequency,
      'id': ?id,
      'isSubscribed': ?isSubscribed,
      'legacyDiscount': ?legacyDiscount,
      'legacyId': ?legacyId,
      'name': ?name,
      'price': ?price,
    };
  }

  factory ZonePlan.fromMap(Map<String, dynamic> map) {
    return ZonePlan(
      canSubscribe: (() { final guardedValue = map['canSubscribe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      currency: (() { final guardedValue = map['currency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externallyManaged: (() { final guardedValue = map['externallyManaged']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isSubscribed: (() { final guardedValue = map['isSubscribed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      legacyDiscount: (() { final guardedValue = map['legacyDiscount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      legacyId: (() { final guardedValue = map['legacyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      price: (() { final guardedValue = map['price']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
