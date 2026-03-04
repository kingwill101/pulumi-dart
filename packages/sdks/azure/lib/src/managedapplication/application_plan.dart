// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationPlan {
  /// Specifies the name of the plan from the marketplace. Changing this forces a new resource to be created.
  final pulumi.Input<String> name;

  /// Specifies the product of the plan from the marketplace. Changing this forces a new resource to be created.
  final pulumi.Input<String> product;

  /// Specifies the promotion code to use with the plan. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** When `plan` is specified, legal terms must be accepted for this item on this subscription before creating the Managed Application. The `azure.marketplace.Agreement` resource or AZ CLI tool can be used to do this.
  final pulumi.Input<String>? promotionCode;

  /// Specifies the publisher of the plan. Changing this forces a new resource to be created.
  final pulumi.Input<String> publisher;

  /// Specifies the version of the plan from the marketplace. Changing this forces a new resource to be created.
  final pulumi.Input<String> version;

  /// Creates a new [ApplicationPlan].
  /// [name] Specifies the name of the plan from the marketplace. Changing this forces a new resource to be created.
  /// [product] Specifies the product of the plan from the marketplace. Changing this forces a new resource to be created.
  /// [promotionCode] Specifies the promotion code to use with the plan. Changing this forces a new resource to be created.
  /// [publisher] Specifies the publisher of the plan. Changing this forces a new resource to be created.
  /// [version] Specifies the version of the plan from the marketplace. Changing this forces a new resource to be created.
  ApplicationPlan({
    required this.name,
    required this.product,
    this.promotionCode,
    required this.publisher,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'product': product,
      'promotionCode': ?promotionCode,
      'publisher': publisher,
      'version': version,
    };
  }

  factory ApplicationPlan.fromMap(Map<String, dynamic> map) {
    return ApplicationPlan(
      name: pulumi.Input.fromValue(map['name'] as String),
      product: pulumi.Input.fromValue(map['product'] as String),
      promotionCode: (() {
        final guardedValue = map['promotionCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publisher: pulumi.Input.fromValue(map['publisher'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
